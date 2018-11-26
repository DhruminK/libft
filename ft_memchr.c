/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memchr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: dkhatri <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/11/16 15:44:56 by dkhatri           #+#    #+#             */
/*   Updated: 2018/11/16 16:11:38 by dkhatri          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	*ft_memchr(void *s, int c, size_t n)
{
	char	*dup;
	size_t	i;

	dup = (char*)s;
	i = 0;
	while (i < n)
	{
		if (*(dup + i) == (char)c)
			return (s + i);
		i = i + 1;
	}
	return (0);
}
