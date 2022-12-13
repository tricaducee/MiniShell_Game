#include "inc/PicoShell.h"

int	fr33_th3_duck(void)
{
	pid_t pid;
	int	status;
	char *av[] = {"so_long", MAP_PATH, NULL};
	pid = fork();
	if (pid == -1)
		return (1);
	else if (!pid)
	{
		chdir(GAME_PATH);
		execve("./so_long", av, get_data(NULL)->env);
		exit(1);
	}
	else
	{
		waitpid(pid, &status, 0);
		WIFEXITED(status);
        return (WEXITSTATUS(status));
	}
}