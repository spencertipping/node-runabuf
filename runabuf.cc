// Node Run-A-Buf | Spencer Tipping
// Licensed under the terms of the MIT source code license

// Use this at your peril.

#include <sys/mman.h>
#include <unistd.h>
#include <stdlib.h>
#include <string.h>

#include <v8.h>
#include <node.h>
#include <node_buffer.h>

using namespace v8;
using namespace node;

// run_a_buf takes two arguments. The first is the Buffer instance that we want
// to run, and the second is the buffer of data that should serve as the
// workspace for the machine code. The machine code will be able to access the
// second buffer via %rdi and %rsi. %rdi is the buffer data pointer, and %rsi
// is the number of bytes in the buffer.
Handle<Value> run_a_buf(const Arguments &args) {
  HandleScope scope;
  Handle<Object> exec = args[0]->ToObject();
  Handle<Object> data = args[1]->ToObject();

  // Allocate memory for the executable chunk. This will be a copy of the
  // original so that we can align on page boundaries and change the memory
  // protection without breaking stuff.
  const int pagesize = sysconf(_SC_PAGESIZE);
  const int filling  = pagesize - (Buffer::Length(exec) & pagesize - 1);
  const int boundary = Buffer::Length(exec) + filling;

  void (*function)(void*, size_t);
  if (posix_memalign(&function, pagesize, boundary))
    return ThrowException(Exception::Error(String::New(
           "failed to allocate memory")));

  // Copy the data buffer into our newly allocated function memory. It's ok for
  // the end to be uninitialized.
  memcpy(function, Buffer::Data(exec), Buffer::Length(exec));

  // Change protection and jump into the memory.
  if (mprotect(function, boundary, PROT_READ | PROT_EXEC))
    return ThrowException(Exception::Error(String::New(
           "mprotect() failed")));

  (*function)(Buffer::Data(data), Buffer::Length(data));

  free(function), function = NULL;

  return Undefined();
}

extern "C" {
  static void init(Handle<Object> target) {
    HandleScope scope;
    NODE_SET_METHOD(target, "run", run_a_buf);
  }

  NODE_MODULE(runabuf, init);
}
