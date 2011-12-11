#include <sys/mman.h>
#include <stdlib.h>
#include <stdio.h>
#include <errno.h>

int main() {
  int address = malloc(8192);
  char *page_boundary = address + (4096L - address % 4096L);

  // Emit a jmp 0 instruction.
  page_boundary[0] = 0xeb;              // JMP
  page_boundary[1] = -2;                // offset 0

  int error_code = mprotect((void*) page_boundary, 4096, PROT_READ | PROT_EXEC);
  printf("returned %d; errno = %d\n", error_code, errno);

  void (*function)() = page_boundary;
  printf("about to enter infinite loop\n");
  (*function)();          // should infinite loop
  printf("should never reach this\n");

  return 0;
}
