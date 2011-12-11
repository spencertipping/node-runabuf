void (*f)(char* data, unsigned long long n);

void foo(char* data, unsigned long long n) {
}

void bar(char* data, unsigned long long n) {
}

int main() {
  char* s = "hello world";
  f = &foo;
  (*f)(s, 12);
  return 0;
}
