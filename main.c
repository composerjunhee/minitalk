/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: junheeki <junheeki@student.hive.fi>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/02/09 17:12:18 by junheeki          #+#    #+#             */
/*   Updated: 2023/02/09 17:25:10 by junheeki         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdlib.h>
#include <stdio.h>
#include <signal.h>

void	handle_sigtstp(int sig)
{
	printf("Stop not allowed\n");
}
void	handle_sigcont(int sig)
{
	printf("Input number: ");
	fflush(stdout);
}

int	main(int argc, char *argv[])
{
	struct sigaction sa;
	sa.sa_handler = &handle_sigtstp;
	sa.sa_flags = SA_RESTART;
	// sigaction(SIGTSTP, &sa, NULL);

	// signal(SIGTSTP, &handle_sigtstp);

	int x;
	printf("Input number: ");
	scanf("%d", &x);
	printf("Result %d * 5 = %d\n", x, x * 5);
}
