#include <substrate.h>

// Fungsi dasar mematikan recoil senjata
void (*old_Recoil)(void *instance);
void new_Recoil(void *instance) {
    return; 
}

// Injeksi otomatis saat game dibuka
__attribute__((constructor)) static void init() {
    // Fitur langsung disuntik ke biner game
    MSHookFunction((void *)0x1023456, (void *)new_Recoil, (void **)&old_Recoil);
}
