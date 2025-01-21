/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   txt_convert.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: pberset <pberset@student.42lausanne.ch>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/01/07 14:54:13 by pberset           #+#    #+#             */
/*   Updated: 2025/01/21 16:10:29 by pberset          ###   Lausanne.ch       */
/*                                                                            */
/* ************************************************************************** */

#include "../header/txt_convert.h"

int	main(int argc, char *argv[])
{
	if (argc != 3)
	{
		printf("wrong command format\n");
		return (1);
	}
	printf("%s\n", *argv);
	return (0);
}
