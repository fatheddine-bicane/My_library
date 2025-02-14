/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putstr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: fbicane <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/11/20 17:51:39 by fbicane           #+#    #+#             */
/*   Updated: 2024/11/25 11:05:04 by fbicane          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../my_library.h"

int	ft_putstr(char *s)
{
	size_t	i;

	if (!s)
		return (ft_printf("(null)"));
	i = 0;
	while (s[i] != 0)
	{
		write(1, &s[i], 1);
		i++;
	}
	return (i);
}
