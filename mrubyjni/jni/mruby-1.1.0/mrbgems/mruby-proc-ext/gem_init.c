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
gem_mrblib_irep_mruby_proc_ext[] = {
0x45,0x54,0x49,0x52,0x30,0x30,0x30,0x33,0x56,0x1e,0x00,0x00,0x06,0x9b,0x4d,0x41,
0x54,0x5a,0x30,0x30,0x30,0x30,0x49,0x52,0x45,0x50,0x00,0x00,0x03,0xcf,0x30,0x30,
0x30,0x30,0x00,0x00,0x00,0x35,0x00,0x01,0x00,0x03,0x00,0x01,0x00,0x00,0x00,0x05,
0x05,0x00,0x80,0x00,0x05,0x00,0x00,0x01,0x43,0x00,0x80,0x00,0x45,0x00,0x80,0x00,
0x4a,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x01,0x00,0x04,0x50,0x72,
0x6f,0x63,0x00,0x00,0x00,0x00,0x72,0x00,0x01,0x00,0x03,0x00,0x04,0x00,0x00,0x00,
0x0e,0x00,0x00,0x00,0x48,0x00,0x80,0x00,0xc0,0x00,0x00,0x01,0x46,0x00,0x80,0x00,
0x48,0x00,0x80,0x00,0xc0,0x02,0x00,0x01,0x46,0x40,0x80,0x00,0x48,0x00,0x80,0x00,
0xc0,0x04,0x00,0x01,0x46,0x80,0x80,0x00,0x48,0x00,0x80,0x00,0xc0,0x06,0x00,0x01,
0x46,0xc0,0x80,0x00,0x84,0x01,0x80,0x00,0x29,0x00,0x80,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x04,0x00,0x03,0x3d,0x3d,0x3d,0x00,0x00,0x05,0x79,0x69,0x65,0x6c,
0x64,0x00,0x00,0x07,0x74,0x6f,0x5f,0x70,0x72,0x6f,0x63,0x00,0x00,0x05,0x63,0x75,
0x72,0x72,0x79,0x00,0x00,0x00,0x00,0x3d,0x00,0x03,0x00,0x06,0x00,0x00,0x00,0x00,
0x00,0x07,0x00,0x00,0x26,0x00,0x08,0x00,0x06,0x00,0x80,0x01,0x37,0x00,0x01,0x02,
0x01,0x40,0x80,0x02,0x38,0x40,0x01,0x02,0xa0,0x3f,0x80,0x01,0x29,0x00,0x80,0x01,
0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x01,0x00,0x04,0x63,0x61,0x6c,0x6c,0x00,0x00,
0x00,0x00,0x3d,0x00,0x03,0x00,0x06,0x00,0x00,0x00,0x00,0x00,0x07,0x00,0x00,0x00,
0x26,0x00,0x08,0x00,0x06,0x00,0x80,0x01,0x37,0x00,0x01,0x02,0x01,0x40,0x80,0x02,
0x38,0x40,0x01,0x02,0xa0,0x3f,0x80,0x01,0x29,0x00,0x80,0x01,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x01,0x00,0x04,0x63,0x61,0x6c,0x6c,0x00,0x00,0x00,0x00,0x26,0x00,
0x02,0x00,0x03,0x00,0x00,0x00,0x00,0x00,0x03,0x00,0x00,0x00,0x26,0x00,0x00,0x00,
0x06,0x00,0x00,0x01,0x29,0x00,0x00,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x01,0x80,0x00,0x07,0x00,0x0d,0x00,0x02,0x00,0x00,0x00,0x39,0x00,0x00,
0x26,0x00,0x10,0x00,0x97,0x00,0x40,0x00,0x97,0x01,0x40,0x00,0x06,0x00,0x80,0x03,
0x20,0x00,0x80,0x03,0x01,0xc0,0x81,0x00,0x06,0x00,0x80,0x03,0x40,0x01,0x00,0x04,
0x21,0x40,0x80,0x03,0x01,0xc0,0x81,0x01,0x01,0x40,0x00,0x04,0xa0,0x80,0x80,0x03,
0x01,0xc0,0x81,0x00,0x06,0x00,0x80,0x03,0x20,0xc0,0x80,0x03,0x19,0x11,0xc0,0x03,
0x06,0x00,0x80,0x03,0x20,0x00,0x80,0x03,0x01,0xc0,0x01,0x02,0x83,0xff,0x3f,0x04,
0xb6,0x00,0x81,0x03,0x99,0x01,0xc0,0x03,0x01,0x40,0x80,0x03,0x01,0x00,0x01,0x04,
0xa0,0x40,0x81,0x03,0x98,0x04,0xc0,0x03,0x01,0x00,0x81,0x03,0x83,0xff,0x3f,0x04,
0xb3,0x80,0x81,0x03,0x99,0x02,0xc0,0x03,0x01,0xc0,0x80,0x03,0x01,0x00,0x01,0x04,
0xa0,0x80,0x80,0x03,0x01,0x40,0x00,0x04,0xb5,0xc0,0x81,0x03,0x19,0x07,0xc0,0x03,
0x06,0x00,0x80,0x03,0x91,0x04,0x00,0x04,0x3d,0x00,0x80,0x04,0x01,0x40,0x00,0x05,
0x3e,0x80,0x82,0x04,0xbd,0x00,0x00,0x05,0x3e,0x80,0x82,0x04,0x01,0xc0,0x00,0x05,
0x01,0x00,0x81,0x05,0xa0,0x80,0x00,0x05,0x3e,0x80,0x82,0x04,0x3d,0x01,0x00,0x05,
0x3e,0x80,0x82,0x04,0x20,0x01,0x82,0x03,0x06,0x00,0x80,0x02,0x06,0x00,0x80,0x03,
0x40,0x03,0x00,0x04,0x21,0x80,0x82,0x03,0x01,0xc0,0x01,0x03,0x20,0xc0,0x82,0x03,
0x29,0x00,0x80,0x03,0x00,0x00,0x00,0x03,0x00,0x00,0x1b,0x77,0x72,0x6f,0x6e,0x67,
0x20,0x6e,0x75,0x6d,0x62,0x65,0x72,0x20,0x6f,0x66,0x20,0x61,0x72,0x67,0x75,0x6d,
0x65,0x6e,0x74,0x73,0x20,0x28,0x00,0x00,0x05,0x20,0x66,0x6f,0x72,0x20,0x00,0x00,
0x01,0x29,0x00,0x00,0x00,0x0c,0x00,0x05,0x61,0x72,0x69,0x74,0x79,0x00,0x00,0x06,
0x6c,0x61,0x6d,0x62,0x64,0x61,0x00,0x00,0x02,0x5b,0x5d,0x00,0x00,0x07,0x6c,0x61,
0x6d,0x62,0x64,0x61,0x3f,0x00,0x00,0x02,0x3e,0x3d,0x00,0x00,0x02,0x21,0x3d,0x00,
0x00,0x01,0x3c,0x00,0x00,0x01,0x3e,0x00,0x00,0x05,0x72,0x61,0x69,0x73,0x65,0x00,
0x00,0x0d,0x41,0x72,0x67,0x75,0x6d,0x65,0x6e,0x74,0x45,0x72,0x72,0x6f,0x72,0x00,
0x00,0x04,0x70,0x72,0x6f,0x63,0x00,0x00,0x04,0x63,0x61,0x6c,0x6c,0x00,0x00,0x00,
0x00,0x53,0x00,0x03,0x00,0x06,0x00,0x00,0x00,0x00,0x00,0x0b,0x26,0x00,0x00,0x02,
0x01,0x40,0x80,0x01,0x83,0xff,0x3f,0x02,0xb3,0x00,0x80,0x01,0x19,0x02,0xc0,0x01,
0x01,0x40,0x80,0x01,0x20,0x40,0x80,0x01,0xaf,0x80,0x80,0x01,0x97,0x00,0x40,0x00,
0x01,0x40,0x80,0x01,0x29,0x00,0x80,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x03,
0x00,0x01,0x3c,0x00,0x00,0x02,0x2d,0x40,0x00,0x00,0x01,0x2d,0x00,0x00,0x00,0x00,
0x41,0x00,0x03,0x00,0x05,0x00,0x01,0x00,0x00,0x00,0x08,0x00,0x26,0x00,0x10,0x00,
0x97,0x00,0x40,0x00,0x97,0x00,0x40,0x00,0x37,0xc0,0x80,0x00,0x06,0x00,0x80,0x01,
0x40,0x01,0x00,0x02,0x21,0x00,0x80,0x01,0x29,0x00,0x80,0x01,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x01,0x00,0x04,0x70,0x72,0x6f,0x63,0x00,0x00,0x00,0x00,0x7b,0x00,
0x04,0x00,0x07,0x00,0x00,0x00,0x00,0x00,0x13,0x00,0x00,0x00,0x26,0x00,0x08,0x00,
0x15,0x40,0x00,0x02,0x01,0x40,0x80,0x02,0xac,0x00,0x00,0x02,0x01,0x00,0x81,0x01,
0x20,0x40,0x00,0x02,0x95,0x40,0x80,0x02,0xb6,0x80,0x00,0x02,0x19,0x03,0x40,0x02,
0x95,0x40,0x01,0x02,0x37,0x40,0x81,0x02,0x01,0xc0,0x00,0x03,0x38,0x80,0x81,0x02,
0xa0,0xff,0x00,0x02,0x97,0x01,0x40,0x00,0x95,0x80,0x01,0x02,0x01,0xc0,0x80,0x02,
0xa0,0xc0,0x00,0x02,0x29,0x00,0x00,0x02,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x04,
0x00,0x01,0x2b,0x00,0x00,0x04,0x73,0x69,0x7a,0x65,0x00,0x00,0x02,0x3e,0x3d,0x00,
0x00,0x02,0x5b,0x5d,0x00,0x44,0x42,0x47,0x00,0x00,0x00,0x02,0x10,0x00,0x01,0x00,
0x65,0x46,0x3a,0x2f,0x70,0x61,0x6e,0x32,0x2f,0x61,0x6e,0x64,0x72,0x6f,0x69,0x64,
0x5f,0x72,0x74,0x6d,0x70,0x2f,0x66,0x66,0x6d,0x70,0x65,0x67,0x2f,0x6d,0x73,0x79,
0x73,0x2f,0x68,0x6f,0x6d,0x65,0x2f,0x41,0x64,0x6d,0x69,0x6e,0x69,0x73,0x74,0x72,
0x61,0x74,0x6f,0x72,0x2f,0x6d,0x72,0x75,0x62,0x79,0x2d,0x31,0x2e,0x31,0x2e,0x30,
0x2f,0x6d,0x72,0x62,0x67,0x65,0x6d,0x73,0x2f,0x6d,0x72,0x75,0x62,0x79,0x2d,0x70,
0x72,0x6f,0x63,0x2d,0x65,0x78,0x74,0x2f,0x6d,0x72,0x62,0x6c,0x69,0x62,0x2f,0x70,
0x72,0x6f,0x63,0x2e,0x72,0x62,0x00,0x00,0x00,0x1b,0x00,0x01,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x00,0x00,0x05,0x00,0x00,0x01,0x00,0x01,0x00,0x01,0x00,0x01,0x00,
0x01,0x00,0x00,0x00,0x2d,0x00,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
0x0e,0x00,0x00,0x03,0x00,0x03,0x00,0x03,0x00,0x07,0x00,0x07,0x00,0x07,0x00,0x0b,
0x00,0x0b,0x00,0x0b,0x00,0x0f,0x00,0x0f,0x00,0x0f,0x00,0x0f,0x00,0x0f,0x00,0x00,
0x00,0x1f,0x00,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x07,0x00,0x00,
0x03,0x00,0x04,0x00,0x04,0x00,0x04,0x00,0x04,0x00,0x04,0x00,0x04,0x00,0x00,0x00,
0x1f,0x00,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x07,0x00,0x00,0x07,
0x00,0x08,0x00,0x08,0x00,0x08,0x00,0x08,0x00,0x08,0x00,0x08,0x00,0x00,0x00,0x17,
0x00,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x03,0x00,0x00,0x0b,0x00,
0x0c,0x00,0x0c,0x00,0x00,0x00,0x83,0x00,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x39,0x00,0x00,0x0f,0x00,0x0f,0x00,0x0f,0x00,0x0f,0x00,0x0f,0x00,0x0f,
0x00,0x10,0x00,0x10,0x00,0x10,0x00,0x10,0x00,0x11,0x00,0x11,0x00,0x11,0x00,0x12,
0x00,0x12,0x00,0x12,0x00,0x13,0x00,0x13,0x00,0x13,0x00,0x14,0x00,0x14,0x00,0x14,
0x00,0x14,0x00,0x14,0x00,0x14,0x00,0x14,0x00,0x15,0x00,0x15,0x00,0x15,0x00,0x15,
0x00,0x15,0x00,0x15,0x00,0x15,0x00,0x15,0x00,0x15,0x00,0x15,0x00,0x16,0x00,0x16,
0x00,0x16,0x00,0x16,0x00,0x16,0x00,0x16,0x00,0x16,0x00,0x16,0x00,0x16,0x00,0x16,
0x00,0x16,0x00,0x16,0x00,0x16,0x00,0x16,0x00,0x1a,0x00,0x24,0x00,0x1b,0x00,0x1b,
0x00,0x1b,0x00,0x25,0x00,0x25,0x00,0x00,0x00,0x27,0x00,0x01,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x00,0x00,0x0b,0x00,0x00,0x10,0x00,0x10,0x00,0x10,0x00,0x10,0x00,
0x10,0x00,0x10,0x00,0x10,0x00,0x10,0x00,0x10,0x00,0x10,0x00,0x10,0x00,0x00,0x00,
0x21,0x00,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x08,0x00,0x00,0x1b,
0x00,0x1b,0x00,0x1b,0x00,0x1b,0x00,0x23,0x00,0x1c,0x00,0x1c,0x00,0x1c,0x00,0x00,
0x00,0x37,0x00,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x13,0x00,0x00,
0x1c,0x00,0x1d,0x00,0x1d,0x00,0x1d,0x00,0x1d,0x00,0x1e,0x00,0x1e,0x00,0x1e,0x00,
0x1e,0x00,0x1f,0x00,0x1f,0x00,0x1f,0x00,0x1f,0x00,0x1f,0x00,0x1f,0x00,0x21,0x00,
0x21,0x00,0x21,0x00,0x21,0x4c,0x56,0x41,0x52,0x00,0x00,0x00,0x9e,0x00,0x00,0x00,
0x09,0x00,0x04,0x61,0x72,0x67,0x73,0x00,0x05,0x61,0x72,0x69,0x74,0x79,0x00,0x03,
0x61,0x62,0x73,0x00,0x0a,0x73,0x65,0x6c,0x66,0x5f,0x61,0x72,0x69,0x74,0x79,0x00,
0x05,0x70,0x70,0x72,0x6f,0x63,0x00,0x0a,0x6d,0x61,0x6b,0x65,0x5f,0x63,0x75,0x72,
0x72,0x79,0x00,0x01,0x61,0x00,0x0a,0x67,0x69,0x76,0x65,0x6e,0x5f,0x61,0x72,0x67,
0x73,0x00,0x08,0x6e,0x65,0x77,0x5f,0x61,0x72,0x67,0x73,0x00,0x00,0x00,0x01,0xff,
0xff,0x00,0x00,0x00,0x00,0x00,0x01,0xff,0xff,0x00,0x00,0xff,0xff,0x00,0x00,0x00,
0x01,0x00,0x01,0xff,0xff,0x00,0x00,0x00,0x02,0x00,0x03,0x00,0x03,0x00,0x04,0x00,
0x04,0x00,0x05,0x00,0x05,0x00,0x06,0x00,0x06,0x00,0x01,0xff,0xff,0x00,0x00,0x00,
0x07,0x00,0x01,0xff,0xff,0x00,0x00,0x00,0x00,0x00,0x01,0xff,0xff,0x00,0x00,0x00,
0x08,0x00,0x03,0x45,0x4e,0x44,0x00,0x00,0x00,0x00,0x08,
};
void mrb_mruby_proc_ext_gem_init(mrb_state *mrb);
void mrb_mruby_proc_ext_gem_final(mrb_state *mrb);

void GENERATED_TMP_mrb_mruby_proc_ext_gem_init(mrb_state *mrb) {
  int ai = mrb_gc_arena_save(mrb);
  mrb_mruby_proc_ext_gem_init(mrb);
  mrb_load_irep(mrb, gem_mrblib_irep_mruby_proc_ext);
  if (mrb->exc) {
    mrb_print_error(mrb);
    exit(EXIT_FAILURE);
  }
  mrb_gc_arena_restore(mrb, ai);
}

void GENERATED_TMP_mrb_mruby_proc_ext_gem_final(mrb_state *mrb) {
  mrb_mruby_proc_ext_gem_final(mrb);
}

#if defined(_MSC_VER) && _MSC_VER <= 1200
#pragma pack(pop)
#endif

