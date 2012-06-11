#include <bwl.h>
#include <stdio.h>
#include <string.h>

void show_banner() {
  printf(" ==============================");
  printf("\n bwl - better world lisp/scheme");
  printf("\n ==============================");
}

// Do any cleanups if needed
int end_main(int x) 
{
  printf("\n");
  return x;
}

int run_tests(int argc, char * argv[]) {
  if (argc != 2 ||
      strncmp(RUN_TESTS_OPTION, argv[1], strlen(RUN_TESTS_OPTION)) != 0)
    return START_BWL_VM;

  printf("\n main.c: run_tests running internal tests \n");
  return 0;
}


int main(int argc, char * argv[]) 
{
  int ret = 0;
  show_banner();
  
  ret = run_tests(argc, argv);

  if(ret != START_BWL_VM) // tests were executed nothing more to do
    return 0;
  
  return end_main(0);
}
