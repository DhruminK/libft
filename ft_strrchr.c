/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strrchr.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: dkhatri <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/11/16 11:14:40 by dkhatri           #+#    #+#             */
/*   Updated: 2018/11/16 11:19:14 by dkhatri          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strrchr(char *s, int c)
{
	int		len;
	int		i;

	len = ft_strlen(s);
	i = 0;
	while (i <= len)
	{
		if (*(s + len - i) == c)
			return (s + len - i);
		i = i + 1;
	}
	return (0);
}
