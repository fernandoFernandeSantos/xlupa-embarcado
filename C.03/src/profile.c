#include <stdio.h>
#include <stdlib.h>
#include "profile.h"

int get_profile()
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
 
