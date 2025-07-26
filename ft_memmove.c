/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memmove.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: pabartoc <pabartoc@student.42heilbronn.    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/07/26 09:09:14 by pabartoc          #+#    #+#             */
/*   Updated: 2025/07/26 12:06:13 by pabartoc         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

//	=== Try to understand memmove ===
void	*ft_memmove(void *dst, const void *src, size_t len)
{
	unsigned char	*dst_ptr;
	unsigned char	*src_ptr;

	dst_ptr = (unsigned char *) dst;
	src_ptr = (unsigned char *) src;

	if (dst == src || len == 0)
		return (dst);
	if (!dst && !src)
		return (NULL);
	if (dst_ptr > src_ptr)
	{
		while (len > 0)
		{
			len--;
			dst_ptr[len] = src_ptr[len];
		}
	}
	else
	{
		size_t	i = 0;
		while (i < len)
		{
			dst_ptr[i] = src_ptr[i];
			i++;
		}
	}
	return (dst);
}

// void	*ft_memmove(void *dst, const void *src, size_t len)
// {
// 	unsigned char	*dst_ptr;
// 	unsigned char	*src_ptr;
// 	int				i;

// 	i = 0;
// 	if (!dst && !src)
// 		return (NULL);
// 	dst_ptr = (char *) dst;
// 	src_ptr = (const char *) src;
// }
