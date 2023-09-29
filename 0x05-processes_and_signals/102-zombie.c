#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
/**
 */

int infinite_while(void)
{
	while (1)
	{
		sleep(1);
	} /* End while */
	return (0);
} /* End function */


/**
 */
int main(void)
{
	pid_t pid; /* The pid */
	char counter = 0; /* The counter */

	for (; counter < 5; counter++)
	{
		pid = fork();
		if (pid > 0)
		{
			printf("Zombie process created, PID: %d\n", pid);
			sleep(1);
		} /* End if */
		else
			exit(0);

	} /* End while */
	infinite_while();
	return (EXIT_SUCCESS);
} /* End function */
