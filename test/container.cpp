#define _GNU_SOURCE

#include <sched.h>
#include <sys/syscall.h>
#include <unistd.h>
#include <stdio.h>
#include <sys/types.h>
#include <stdlib.h>
#include <sys/wait.h>
#include <errno.h>
#include <string.h>

// run_child is ran by the child process when it is created.
int run_child(void *arg)
{
    printf("Child with PID %d here!\n", getpid());
    return 0;
}

int main()
{
    printf("Parent with PID %d here!\n", getpid());

    // allocates 1MB of stack for the child
    void *pchild_stack = malloc(1024 * 1024);
    if(pchild_stack == NULL)
    {
        printf("Failed to allocate stack for child\n");
        return -1;
    }

    // clones the process
    pid_t pid = clone(
        run_child,                  // function to run in the child
        pchild_stack + 1024 * 1024, // stack pointer
        CLONE_NEWPID | SIGCHLD,     // unshare the PID namespace (CLONE_NEWPID)
        NULL);
    if(pid == -1)
    {
        printf("Failed to clone process: %s\n", strerror(errno));
        return -1;
    }

    // waits for the child to finish
    wait(NULL);

    // frees the stack
    free(pchild_stack);
    
    return 0;
}
