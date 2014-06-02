#include <stdio.h>
#include <stdlib.h>
#include "./Headers/profile.h"

unsigned char get_profile()
{
	return profile;
}

void refresh_profile()
{
	if( profile == 5 )
		profile = 0;
	else
		profile += 1;
}
 
