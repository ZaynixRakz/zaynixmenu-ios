#include <substrate.h>
#include <mach-o/dyld.h>

void (*old_Recoil)(void *instance);
void new_Recoil(void *instance) {
    return; 
}

%ctor {
    %init;
    MSHookFunction((void *)(_dyld_get_image_header(0) + 0x1023456), (void *)new_Recoil, (void **)&old_Recoil);
}

