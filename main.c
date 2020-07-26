/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: chgilber <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/07/07 18:06:57 by chgilber          #+#    #+#             */
/*   Updated: 2020/07/25 19:18:45 by chgilber         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <stdlib.h>
#include "libasm.h"

int	main(int ac, char **av)
{
	int fdr;
	int fdw;
	char buf[2049];

	fdr = ac;
	fdr = open("test.txt",O_RDONLY);
	fdw = open("test.txt",O_WRONLY);
	
/*	printf("ft_strlen[%s] le ret = [%lu]\n", av[1], ft_strlen(av[1]));
	printf("   strlen[%s] le ret = [%lu]\n", av[1], strlen(av[1]));
	printf("ft_strcmp[%s] et [%s] le ret = [%d]\n", av[1], av[2], ft_strcmp(av[1], av[2]));
	printf("   strcmp[%s] et [%s] le ret = [%d]\n", av[1], av[2], strcmp(av[1], av[2]));
	printf("ft_strcpy[%s] et [%s] le ret = [%s]\n", av[1], av[2], ft_strcpy(av[1], av[2]));
	printf("[av[1] = [%s] et av[2] = [%s] \n", av[1] , av[2]);
	printf("   strcpy[%s] et [%s] le ret = [%s]\n", av[1], av[2], strcpy(av[1], av[2]));
	printf("[av[1] = [%s] et av[2] = [%s] \n", av[1] , av[2]);
	printf("   strdup[%s] le ret = [%s]\n", av[3], strdup(av[3]));
	printf(" ftstrdup[%s] le ret = [%s]\n", av[3], ft_strdup(av[3]));
	printf("\n^--write[%d][%s][%d] le ret = [%lu]\n", atoi(av[4]), av[3], atoi(av[5]), write(atoi(av[4]), av[3], atoi(av[5])));
	printf("\n^--write[%d][%s][%d] le ret = [%lu]\n", atoi(av[4]), av[3], atoi(av[5]), write(atoi(av[4]), av[3], atoi(av[5])));
	printf("  read[%d][%s][%d] le ret = [%lu]\n", fdr, av[3], atoi(av[5]), read(fdr, av[3], atoi(av[5])));
	printf("\n^--ftwrite[%d][%s][%d] le ret = [%lu]\n", fdw, av[3], atoi(av[5]), ft_write(fdw, av[3], atoi(av[5])));
	printf("  ftread[%d][%s][%d] le ret = [%lu]\n", fdr, av[3], atoi(av[5]), ft_read(fdr, av[3], atoi(av[5])));
*/
	printf("read    = %lu, buf = %s\n", read(19, NULL, -1), buf);
	printf("ft_read = %lu, buf = %s\n", ft_read(19, NULL, -1), buf);
	}
