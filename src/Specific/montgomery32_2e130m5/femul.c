static void femul(uint32_t out[5], const uint32_t in1[5], const uint32_t in2[5]) {
  { const uint32_t x10 = in1[4];
  { const uint32_t x11 = in1[3];
  { const uint32_t x9 = in1[2];
  { const uint32_t x7 = in1[1];
  { const uint32_t x5 = in1[0];
  { const uint32_t x18 = in2[4];
  { const uint32_t x19 = in2[3];
  { const uint32_t x17 = in2[2];
  { const uint32_t x15 = in2[1];
  { const uint32_t x13 = in2[0];
  { uint32_t x22;  uint32_t x21 = _mulx_u32(x5, x13, &x22);
  { uint32_t x25;  uint32_t x24 = _mulx_u32(x5, x15, &x25);
  { uint32_t x28;  uint32_t x27 = _mulx_u32(x5, x17, &x28);
  { uint32_t x31;  uint32_t x30 = _mulx_u32(x5, x19, &x31);
  { uint32_t x34;  uint32_t x33 = _mulx_u32(x5, x18, &x34);
  { uint32_t x36; uint8_t x37 = _addcarryx_u32(0x0, x22, x24, &x36);
  { uint32_t x39; uint8_t x40 = _addcarryx_u32(x37, x25, x27, &x39);
  { uint32_t x42; uint8_t x43 = _addcarryx_u32(x40, x28, x30, &x42);
  { uint32_t x45; uint8_t x46 = _addcarryx_u32(x43, x31, x33, &x45);
  { uint32_t x48; uint8_t _ = _addcarryx_u32(0x0, x46, x34, &x48);
  { uint32_t _;  uint32_t x51 = _mulx_u32(x21, 0xcccccccd, &_);
  { uint32_t x55;  uint32_t x54 = _mulx_u32(x51, 0xfffffffb, &x55);
  { uint32_t x58;  uint32_t x57 = _mulx_u32(x51, 0xffffffff, &x58);
  { uint32_t x61;  uint32_t x60 = _mulx_u32(x51, 0xffffffff, &x61);
  { uint32_t x64;  uint32_t x63 = _mulx_u32(x51, 0xffffffff, &x64);
  { uint8_t x67;  uint32_t x66 = (uint8_t)_mulx_u32(x51, 0x3, &x67);
  { uint32_t x69; uint8_t x70 = _addcarryx_u32(0x0, x55, x57, &x69);
  { uint32_t x72; uint8_t x73 = _addcarryx_u32(x70, x58, x60, &x72);
  { uint32_t x75; uint8_t x76 = _addcarryx_u32(x73, x61, x63, &x75);
  { uint32_t x78; uint8_t x79 = _addcarryx_u32(x76, x64, x66, &x78);
  { uint8_t x80 = (x79 + x67);
  { uint32_t _; uint8_t x83 = _addcarryx_u32(0x0, x21, x54, &_);
  { uint32_t x85; uint8_t x86 = _addcarryx_u32(x83, x36, x69, &x85);
  { uint32_t x88; uint8_t x89 = _addcarryx_u32(x86, x39, x72, &x88);
  { uint32_t x91; uint8_t x92 = _addcarryx_u32(x89, x42, x75, &x91);
  { uint32_t x94; uint8_t x95 = _addcarryx_u32(x92, x45, x78, &x94);
  { uint32_t x97; uint8_t x98 = _addcarryx_u32(x95, x48, x80, &x97);
  { uint32_t x101;  uint32_t x100 = _mulx_u32(x7, x13, &x101);
  { uint32_t x104;  uint32_t x103 = _mulx_u32(x7, x15, &x104);
  { uint32_t x107;  uint32_t x106 = _mulx_u32(x7, x17, &x107);
  { uint32_t x110;  uint32_t x109 = _mulx_u32(x7, x19, &x110);
  { uint32_t x113;  uint32_t x112 = _mulx_u32(x7, x18, &x113);
  { uint32_t x115; uint8_t x116 = _addcarryx_u32(0x0, x101, x103, &x115);
  { uint32_t x118; uint8_t x119 = _addcarryx_u32(x116, x104, x106, &x118);
  { uint32_t x121; uint8_t x122 = _addcarryx_u32(x119, x107, x109, &x121);
  { uint32_t x124; uint8_t x125 = _addcarryx_u32(x122, x110, x112, &x124);
  { uint32_t x127; uint8_t _ = _addcarryx_u32(0x0, x125, x113, &x127);
  { uint32_t x130; uint8_t x131 = _addcarryx_u32(0x0, x85, x100, &x130);
  { uint32_t x133; uint8_t x134 = _addcarryx_u32(x131, x88, x115, &x133);
  { uint32_t x136; uint8_t x137 = _addcarryx_u32(x134, x91, x118, &x136);
  { uint32_t x139; uint8_t x140 = _addcarryx_u32(x137, x94, x121, &x139);
  { uint32_t x142; uint8_t x143 = _addcarryx_u32(x140, x97, x124, &x142);
  { uint32_t x145; uint8_t x146 = _addcarryx_u32(x143, x98, x127, &x145);
  { uint32_t _;  uint32_t x148 = _mulx_u32(x130, 0xcccccccd, &_);
  { uint32_t x152;  uint32_t x151 = _mulx_u32(x148, 0xfffffffb, &x152);
  { uint32_t x155;  uint32_t x154 = _mulx_u32(x148, 0xffffffff, &x155);
  { uint32_t x158;  uint32_t x157 = _mulx_u32(x148, 0xffffffff, &x158);
  { uint32_t x161;  uint32_t x160 = _mulx_u32(x148, 0xffffffff, &x161);
  { uint8_t x164;  uint32_t x163 = (uint8_t)_mulx_u32(x148, 0x3, &x164);
  { uint32_t x166; uint8_t x167 = _addcarryx_u32(0x0, x152, x154, &x166);
  { uint32_t x169; uint8_t x170 = _addcarryx_u32(x167, x155, x157, &x169);
  { uint32_t x172; uint8_t x173 = _addcarryx_u32(x170, x158, x160, &x172);
  { uint32_t x175; uint8_t x176 = _addcarryx_u32(x173, x161, x163, &x175);
  { uint8_t x177 = (x176 + x164);
  { uint32_t _; uint8_t x180 = _addcarryx_u32(0x0, x130, x151, &_);
  { uint32_t x182; uint8_t x183 = _addcarryx_u32(x180, x133, x166, &x182);
  { uint32_t x185; uint8_t x186 = _addcarryx_u32(x183, x136, x169, &x185);
  { uint32_t x188; uint8_t x189 = _addcarryx_u32(x186, x139, x172, &x188);
  { uint32_t x191; uint8_t x192 = _addcarryx_u32(x189, x142, x175, &x191);
  { uint32_t x194; uint8_t x195 = _addcarryx_u32(x192, x145, x177, &x194);
  { uint8_t x196 = (x195 + x146);
  { uint32_t x199;  uint32_t x198 = _mulx_u32(x9, x13, &x199);
  { uint32_t x202;  uint32_t x201 = _mulx_u32(x9, x15, &x202);
  { uint32_t x205;  uint32_t x204 = _mulx_u32(x9, x17, &x205);
  { uint32_t x208;  uint32_t x207 = _mulx_u32(x9, x19, &x208);
  { uint32_t x211;  uint32_t x210 = _mulx_u32(x9, x18, &x211);
  { uint32_t x213; uint8_t x214 = _addcarryx_u32(0x0, x199, x201, &x213);
  { uint32_t x216; uint8_t x217 = _addcarryx_u32(x214, x202, x204, &x216);
  { uint32_t x219; uint8_t x220 = _addcarryx_u32(x217, x205, x207, &x219);
  { uint32_t x222; uint8_t x223 = _addcarryx_u32(x220, x208, x210, &x222);
  { uint32_t x225; uint8_t _ = _addcarryx_u32(0x0, x223, x211, &x225);
  { uint32_t x228; uint8_t x229 = _addcarryx_u32(0x0, x182, x198, &x228);
  { uint32_t x231; uint8_t x232 = _addcarryx_u32(x229, x185, x213, &x231);
  { uint32_t x234; uint8_t x235 = _addcarryx_u32(x232, x188, x216, &x234);
  { uint32_t x237; uint8_t x238 = _addcarryx_u32(x235, x191, x219, &x237);
  { uint32_t x240; uint8_t x241 = _addcarryx_u32(x238, x194, x222, &x240);
  { uint32_t x243; uint8_t x244 = _addcarryx_u32(x241, x196, x225, &x243);
  { uint32_t _;  uint32_t x246 = _mulx_u32(x228, 0xcccccccd, &_);
  { uint32_t x250;  uint32_t x249 = _mulx_u32(x246, 0xfffffffb, &x250);
  { uint32_t x253;  uint32_t x252 = _mulx_u32(x246, 0xffffffff, &x253);
  { uint32_t x256;  uint32_t x255 = _mulx_u32(x246, 0xffffffff, &x256);
  { uint32_t x259;  uint32_t x258 = _mulx_u32(x246, 0xffffffff, &x259);
  { uint8_t x262;  uint32_t x261 = (uint8_t)_mulx_u32(x246, 0x3, &x262);
  { uint32_t x264; uint8_t x265 = _addcarryx_u32(0x0, x250, x252, &x264);
  { uint32_t x267; uint8_t x268 = _addcarryx_u32(x265, x253, x255, &x267);
  { uint32_t x270; uint8_t x271 = _addcarryx_u32(x268, x256, x258, &x270);
  { uint32_t x273; uint8_t x274 = _addcarryx_u32(x271, x259, x261, &x273);
  { uint8_t x275 = (x274 + x262);
  { uint32_t _; uint8_t x278 = _addcarryx_u32(0x0, x228, x249, &_);
  { uint32_t x280; uint8_t x281 = _addcarryx_u32(x278, x231, x264, &x280);
  { uint32_t x283; uint8_t x284 = _addcarryx_u32(x281, x234, x267, &x283);
  { uint32_t x286; uint8_t x287 = _addcarryx_u32(x284, x237, x270, &x286);
  { uint32_t x289; uint8_t x290 = _addcarryx_u32(x287, x240, x273, &x289);
  { uint32_t x292; uint8_t x293 = _addcarryx_u32(x290, x243, x275, &x292);
  { uint8_t x294 = (x293 + x244);
  { uint32_t x297;  uint32_t x296 = _mulx_u32(x11, x13, &x297);
  { uint32_t x300;  uint32_t x299 = _mulx_u32(x11, x15, &x300);
  { uint32_t x303;  uint32_t x302 = _mulx_u32(x11, x17, &x303);
  { uint32_t x306;  uint32_t x305 = _mulx_u32(x11, x19, &x306);
  { uint32_t x309;  uint32_t x308 = _mulx_u32(x11, x18, &x309);
  { uint32_t x311; uint8_t x312 = _addcarryx_u32(0x0, x297, x299, &x311);
  { uint32_t x314; uint8_t x315 = _addcarryx_u32(x312, x300, x302, &x314);
  { uint32_t x317; uint8_t x318 = _addcarryx_u32(x315, x303, x305, &x317);
  { uint32_t x320; uint8_t x321 = _addcarryx_u32(x318, x306, x308, &x320);
  { uint32_t x323; uint8_t _ = _addcarryx_u32(0x0, x321, x309, &x323);
  { uint32_t x326; uint8_t x327 = _addcarryx_u32(0x0, x280, x296, &x326);
  { uint32_t x329; uint8_t x330 = _addcarryx_u32(x327, x283, x311, &x329);
  { uint32_t x332; uint8_t x333 = _addcarryx_u32(x330, x286, x314, &x332);
  { uint32_t x335; uint8_t x336 = _addcarryx_u32(x333, x289, x317, &x335);
  { uint32_t x338; uint8_t x339 = _addcarryx_u32(x336, x292, x320, &x338);
  { uint32_t x341; uint8_t x342 = _addcarryx_u32(x339, x294, x323, &x341);
  { uint32_t _;  uint32_t x344 = _mulx_u32(x326, 0xcccccccd, &_);
  { uint32_t x348;  uint32_t x347 = _mulx_u32(x344, 0xfffffffb, &x348);
  { uint32_t x351;  uint32_t x350 = _mulx_u32(x344, 0xffffffff, &x351);
  { uint32_t x354;  uint32_t x353 = _mulx_u32(x344, 0xffffffff, &x354);
  { uint32_t x357;  uint32_t x356 = _mulx_u32(x344, 0xffffffff, &x357);
  { uint8_t x360;  uint32_t x359 = (uint8_t)_mulx_u32(x344, 0x3, &x360);
  { uint32_t x362; uint8_t x363 = _addcarryx_u32(0x0, x348, x350, &x362);
  { uint32_t x365; uint8_t x366 = _addcarryx_u32(x363, x351, x353, &x365);
  { uint32_t x368; uint8_t x369 = _addcarryx_u32(x366, x354, x356, &x368);
  { uint32_t x371; uint8_t x372 = _addcarryx_u32(x369, x357, x359, &x371);
  { uint8_t x373 = (x372 + x360);
  { uint32_t _; uint8_t x376 = _addcarryx_u32(0x0, x326, x347, &_);
  { uint32_t x378; uint8_t x379 = _addcarryx_u32(x376, x329, x362, &x378);
  { uint32_t x381; uint8_t x382 = _addcarryx_u32(x379, x332, x365, &x381);
  { uint32_t x384; uint8_t x385 = _addcarryx_u32(x382, x335, x368, &x384);
  { uint32_t x387; uint8_t x388 = _addcarryx_u32(x385, x338, x371, &x387);
  { uint32_t x390; uint8_t x391 = _addcarryx_u32(x388, x341, x373, &x390);
  { uint8_t x392 = (x391 + x342);
  { uint32_t x395;  uint32_t x394 = _mulx_u32(x10, x13, &x395);
  { uint32_t x398;  uint32_t x397 = _mulx_u32(x10, x15, &x398);
  { uint32_t x401;  uint32_t x400 = _mulx_u32(x10, x17, &x401);
  { uint32_t x404;  uint32_t x403 = _mulx_u32(x10, x19, &x404);
  { uint32_t x407;  uint32_t x406 = _mulx_u32(x10, x18, &x407);
  { uint32_t x409; uint8_t x410 = _addcarryx_u32(0x0, x395, x397, &x409);
  { uint32_t x412; uint8_t x413 = _addcarryx_u32(x410, x398, x400, &x412);
  { uint32_t x415; uint8_t x416 = _addcarryx_u32(x413, x401, x403, &x415);
  { uint32_t x418; uint8_t x419 = _addcarryx_u32(x416, x404, x406, &x418);
  { uint32_t x421; uint8_t _ = _addcarryx_u32(0x0, x419, x407, &x421);
  { uint32_t x424; uint8_t x425 = _addcarryx_u32(0x0, x378, x394, &x424);
  { uint32_t x427; uint8_t x428 = _addcarryx_u32(x425, x381, x409, &x427);
  { uint32_t x430; uint8_t x431 = _addcarryx_u32(x428, x384, x412, &x430);
  { uint32_t x433; uint8_t x434 = _addcarryx_u32(x431, x387, x415, &x433);
  { uint32_t x436; uint8_t x437 = _addcarryx_u32(x434, x390, x418, &x436);
  { uint32_t x439; uint8_t x440 = _addcarryx_u32(x437, x392, x421, &x439);
  { uint32_t _;  uint32_t x442 = _mulx_u32(x424, 0xcccccccd, &_);
  { uint32_t x446;  uint32_t x445 = _mulx_u32(x442, 0xfffffffb, &x446);
  { uint32_t x449;  uint32_t x448 = _mulx_u32(x442, 0xffffffff, &x449);
  { uint32_t x452;  uint32_t x451 = _mulx_u32(x442, 0xffffffff, &x452);
  { uint32_t x455;  uint32_t x454 = _mulx_u32(x442, 0xffffffff, &x455);
  { uint8_t x458;  uint32_t x457 = (uint8_t)_mulx_u32(x442, 0x3, &x458);
  { uint32_t x460; uint8_t x461 = _addcarryx_u32(0x0, x446, x448, &x460);
  { uint32_t x463; uint8_t x464 = _addcarryx_u32(x461, x449, x451, &x463);
  { uint32_t x466; uint8_t x467 = _addcarryx_u32(x464, x452, x454, &x466);
  { uint32_t x469; uint8_t x470 = _addcarryx_u32(x467, x455, x457, &x469);
  { uint8_t x471 = (x470 + x458);
  { uint32_t _; uint8_t x474 = _addcarryx_u32(0x0, x424, x445, &_);
  { uint32_t x476; uint8_t x477 = _addcarryx_u32(x474, x427, x460, &x476);
  { uint32_t x479; uint8_t x480 = _addcarryx_u32(x477, x430, x463, &x479);
  { uint32_t x482; uint8_t x483 = _addcarryx_u32(x480, x433, x466, &x482);
  { uint32_t x485; uint8_t x486 = _addcarryx_u32(x483, x436, x469, &x485);
  { uint32_t x488; uint8_t x489 = _addcarryx_u32(x486, x439, x471, &x488);
  { uint8_t x490 = (x489 + x440);
  { uint32_t x492; uint8_t x493 = _subborrow_u32(0x0, x476, 0xfffffffb, &x492);
  { uint32_t x495; uint8_t x496 = _subborrow_u32(x493, x479, 0xffffffff, &x495);
  { uint32_t x498; uint8_t x499 = _subborrow_u32(x496, x482, 0xffffffff, &x498);
  { uint32_t x501; uint8_t x502 = _subborrow_u32(x499, x485, 0xffffffff, &x501);
  { uint32_t x504; uint8_t x505 = _subborrow_u32(x502, x488, 0x3, &x504);
  { uint32_t _; uint8_t x508 = _subborrow_u32(x505, x490, 0x0, &_);
  { uint32_t x509 = cmovznz(x508, x504, x488);
  { uint32_t x510 = cmovznz(x508, x501, x485);
  { uint32_t x511 = cmovznz(x508, x498, x482);
  { uint32_t x512 = cmovznz(x508, x495, x479);
  { uint32_t x513 = cmovznz(x508, x492, x476);
  out[0] = x513;
  out[1] = x512;
  out[2] = x511;
  out[3] = x510;
  out[4] = x509;
  }}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}
}
