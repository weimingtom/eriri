/*
 * This file is loading the irep
 * Ruby GEM code.
 *
 * IMPORTANT:
 *   This file was generated!
 *   All manual changes will get lost.
 */
#include <stdlib.h>
#include "mruby.h"
#include "mruby/irep.h"
#include <stdint.h>

#if defined(_MSC_VER) && _MSC_VER <= 1200
#pragma pack(push)
#pragma pack(4)
#endif

const uint8_t
#if defined __GNUC__
__attribute__((aligned(4)))
#elif defined(_MSC_VER) && _MSC_VER > 1200
__declspec(align(4))
#endif
gem_mrblib_irep_mruby_object_ext[] = {
0x45,0x54,0x49,0x52,0x30,0x30,0x30,0x33,0xeb,0xcd,0x00,0x00,0x01,0x9b,0x4d,0x41,
0x54,0x5a,0x30,0x30,0x30,0x30,0x49,0x52,0x45,0x50,0x00,0x00,0x00,0xa5,0x30,0x30,
0x30,0x30,0x00,0x00,0x00,0x37,0x00,0x01,0x00,0x03,0x00,0x01,0x00,0x00,0x00,0x05,
0x05,0x00,0x80,0x00,0x05,0x00,0x00,0x01,0x43,0x00,0x80,0x00,0x45,0x00,0x80,0x00,
0x4a,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x01,0x00,0x06,0x4f,0x62,
0x6a,0x65,0x63,0x74,0x00,0x00,0x00,0x00,0x34,0x00,0x01,0x00,0x03,0x00,0x01,0x00,
0x00,0x00,0x05,0x00,0x48,0x00,0x80,0x00,0xc0,0x00,0x00,0x01,0x46,0x00,0x80,0x00,
0x04,0x00,0x80,0x00,0x29,0x00,0x80,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x01,
0x00,0x03,0x74,0x61,0x70,0x00,0x00,0x00,0x00,0x39,0x00,0x02,0x00,0x04,0x00,0x00,
0x00,0x00,0x00,0x06,0x26,0x00,0x00,0x00,0x2b,0x00,0x00,0x01,0x06,0x00,0x80,0x01,
0xa0,0x00,0x00,0x01,0x06,0x00,0x00,0x01,0x29,0x00,0x00,0x01,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x01,0x00,0x04,0x63,0x61,0x6c,0x6c,0x00,0x44,0x42,0x47,0x00,0x00,
0x00,0x00,0xc8,0x00,0x01,0x00,0x69,0x46,0x3a,0x2f,0x70,0x61,0x6e,0x32,0x2f,0x61,
0x6e,0x64,0x72,0x6f,0x69,0x64,0x5f,0x72,0x74,0x6d,0x70,0x2f,0x66,0x66,0x6d,0x70,
0x65,0x67,0x2f,0x6d,0x73,0x79,0x73,0x2f,0x68,0x6f,0x6d,0x65,0x2f,0x41,0x64,0x6d,
0x69,0x6e,0x69,0x73,0x74,0x72,0x61,0x74,0x6f,0x72,0x2f,0x6d,0x72,0x75,0x62,0x79,
0x2d,0x31,0x2e,0x31,0x2e,0x30,0x2f,0x6d,0x72,0x62,0x67,0x65,0x6d,0x73,0x2f,0x6d,
0x72,0x75,0x62,0x79,0x2d,0x6f,0x62,0x6a,0x65,0x63,0x74,0x2d,0x65,0x78,0x74,0x2f,
0x6d,0x72,0x62,0x6c,0x69,0x62,0x2f,0x6f,0x62,0x6a,0x65,0x63,0x74,0x2e,0x72,0x62,
0x00,0x00,0x00,0x1b,0x00,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x05,
0x00,0x00,0x01,0x00,0x01,0x00,0x01,0x00,0x01,0x00,0x01,0x00,0x00,0x00,0x1b,0x00,
0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x05,0x00,0x00,0x0f,0x00,0x0f,
0x00,0x0f,0x00,0x0f,0x00,0x0f,0x00,0x00,0x00,0x1d,0x00,0x01,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x00,0x00,0x06,0x00,0x00,0x0f,0x00,0x10,0x00,0x10,0x00,0x10,0x00,
0x11,0x00,0x11,0x4c,0x56,0x41,0x52,0x00,0x00,0x00,0x10,0x00,0x00,0x00,0x00,0xff,
0xff,0x00,0x00,0x45,0x4e,0x44,0x00,0x00,0x00,0x00,0x08,
};
void mrb_mruby_object_ext_gem_init(mrb_state *mrb);
void mrb_mruby_object_ext_gem_final(mrb_state *mrb);

void GENERATED_TMP_mrb_mruby_object_ext_gem_init(mrb_state *mrb) {
  int ai = mrb_gc_arena_save(mrb);
  mrb_mruby_object_ext_gem_init(mrb);
  mrb_load_irep(mrb, gem_mrblib_irep_mruby_object_ext);
  if (mrb->exc) {
    mrb_print_error(mrb);
    exit(EXIT_FAILURE);
  }
  mrb_gc_arena_restore(mrb, ai);
}

void GENERATED_TMP_mrb_mruby_object_ext_gem_final(mrb_state *mrb) {
  mrb_mruby_object_ext_gem_final(mrb);
}

#if defined(_MSC_VER) && _MSC_VER <= 1200
#pragma pack(pop)
#endif
