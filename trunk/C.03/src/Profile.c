#include <stdio.h>
#include <stdlib.h>
#include "./Headers/Profile.h"

unsigned char get_profile() {
    return profile;
}

void refresh_profile() {
    profile = (profile + 1) % 6;
    /*
            if( profile == 5 )
                    profile = 0;
            else
                    profile += 1;
     */
}

