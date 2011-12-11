#include <stdio.h>
#include <unistd.h>

int main() {
  printf("page size is %ld\n", sysconf(_SC_PAGESIZE));
  return 0;
}
