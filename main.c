/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: chgilber <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/07/07 18:06:57 by chgilber          #+#    #+#             */
/*   Updated: 2020/07/07 18:18:05 by chgilber         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>

int	ft_strlen(char *str);
int	ft_strcmp(char *str1, char *str2);

int	main(int ac, char **av)
{
	int i;

	i = ac;
	printf("[%s] le ret = [%d]\n", av[1], ft_strlen(av[1]));
	printf("meee[%s] et [%s] le ret = [%d]\n", av[1], av[2], ft_strcmp(av[1], av[2]));
	printf("true[%s] et [%s] le ret = [%d]\n", av[1], av[2], strcmp(av[1], av[2]));
}