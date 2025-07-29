/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memmove.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: pabartoc <pabartoc@student.42heilbronn.    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/07/26 09:09:14 by pabartoc          #+#    #+#             */
/*   Updated: 2025/07/29 20:31:49 by pabartoc         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	*ft_memmove(void *dst, const void *src, size_t len)
{
	unsigned char		*dst_ptr;
	const unsigned char	*src_ptr;
	size_t				i;

	if (!dst && !src)
		return (NULL);
	dst_ptr = (unsigned char *) dst;
	src_ptr = (const unsigned char *) src;
	i = 0;
	if (dst_ptr > src_ptr)
	{
		while (len-- > 0)
			dst_ptr[len] = src_ptr[len];
	}
	else
	{
		while (i++ < len)
			dst_ptr[i - 1] = src_ptr[i - 1];
	}
	return (dst);
}

// int	main(void)
// {
// 	char s[] = "abcdefg";

// 	printf("%s\n", ft_memmove(s + 2, s, 4));
// 	printf("%s\n", memmove(s + 2, s, 4));
// 	return (0);
// }
