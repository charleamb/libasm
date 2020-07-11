/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: chgilber <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/07/07 18:06:57 by chgilber          #+#    #+#             */
/*   Updated: 2020/07/11 21:06:28 by chgilber         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <unistd.h>
#include <string.h>

int	ft_strlen(char *str);
int	ft_strcmp(char *str1, char *str2);
char	*ft_strcpy(char *str1, char *str2);

int	main(int ac, char **av)
{
	int i;

	i = ac;
	printf("ft_strlen[%s] le ret = [%d]\n", av[1], ft_strlen(av[1]));
	printf("   strlen[%s] le ret = [%d]\n", av[1], strlen(av[1]));
	printf("ft_strcmp[%s] et [%s] le ret = [%d]\n", av[1], av[2], ft_strcmp(av[1], av[2]));
	printf("   strcmp[%s] et [%s] le ret = [%d]\n", av[1], av[2], strcmp(av[1], av[2]));
	printf("ft_strcpy[%s] et [%s] le ret = [%s]\n", av[1], av[2], ft_strcpy(av[1], av[2]));
	printf("[av[1] = [%s] et av[2] = [%s] \n", av[1] , av[2]);
	printf("   strcpy[%s] et [%s] le ret = [%s]\n", av[1], av[2], strcpy(av[1], av[2]));
	printf("[av[1] = [%s] et av[2] = [%s] \n", av[1] , av[2]);
}
