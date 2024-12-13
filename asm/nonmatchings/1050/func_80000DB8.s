glabel func_80000DB8
    /* 19B8 80000DB8 3C01FFFE */  lui        $at, (0xFFFEBD4C >> 16)
    /* 19BC 80000DBC 3421BD4C */  ori        $at, $at, (0xFFFEBD4C & 0xFFFF)
    /* 19C0 80000DC0 00817021 */  addu       $t6, $a0, $at
    /* 19C4 80000DC4 3C018000 */  lui        $at, %hi(D_80001BF0)
    /* 19C8 80000DC8 AC2E1BF0 */  sw         $t6, %lo(D_80001BF0)($at)
    /* 19CC 80000DCC 3C01FFFE */  lui        $at, (0xFFFECD88 >> 16)
    /* 19D0 80000DD0 3421CD88 */  ori        $at, $at, (0xFFFECD88 & 0xFFFF)
    /* 19D4 80000DD4 00817821 */  addu       $t7, $a0, $at
    /* 19D8 80000DD8 3C018000 */  lui        $at, %hi(D_80001BF4)
    /* 19DC 80000DDC AC2F1BF4 */  sw         $t7, %lo(D_80001BF4)($at)
    /* 19E0 80000DE0 3C01FFFF */  lui        $at, (0xFFFF0D90 >> 16)
    /* 19E4 80000DE4 34210D90 */  ori        $at, $at, (0xFFFF0D90 & 0xFFFF)
    /* 19E8 80000DE8 0081C021 */  addu       $t8, $a0, $at
    /* 19EC 80000DEC 3C018000 */  lui        $at, %hi(D_80001BF8)
    /* 19F0 80000DF0 AC381BF8 */  sw         $t8, %lo(D_80001BF8)($at)
    /* 19F4 80000DF4 3C018000 */  lui        $at, %hi(D_80001BFC)
    /* 19F8 80000DF8 24998D98 */  addiu      $t9, $a0, -0x7268
    /* 19FC 80000DFC 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* 1A00 80000E00 AC391BFC */  sw         $t9, %lo(D_80001BFC)($at)
    /* 1A04 80000E04 3C018000 */  lui        $at, %hi(D_80001C00)
    /* 1A08 80000E08 248ACDA0 */  addiu      $t2, $a0, -0x3260
    /* 1A0C 80000E0C AC2A1C00 */  sw         $t2, %lo(D_80001C00)($at)
    /* 1A10 80000E10 3C018000 */  lui        $at, %hi(D_80001C04)
    /* 1A14 80000E14 248BDDA4 */  addiu      $t3, $a0, -0x225C
    /* 1A18 80000E18 AC2B1C04 */  sw         $t3, %lo(D_80001C04)($at)
    /* 1A1C 80000E1C 3C018000 */  lui        $at, %hi(D_80001C08)
    /* 1A20 80000E20 248CE778 */  addiu      $t4, $a0, -0x1888
    /* 1A24 80000E24 AC2C1C08 */  sw         $t4, %lo(D_80001C08)($at)
    /* 1A28 80000E28 AFB40028 */  sw         $s4, 0x28($sp)
    /* 1A2C 80000E2C AFB1001C */  sw         $s1, 0x1C($sp)
    /* 1A30 80000E30 3C018000 */  lui        $at, %hi(D_80001C0C)
    /* 1A34 80000E34 248DF62C */  addiu      $t5, $a0, -0x9D4
    /* 1A38 80000E38 3C118000 */  lui        $s1, %hi(D_80001BD4)
    /* 1A3C 80000E3C 3C148000 */  lui        $s4, %hi(D_80001BD8)
    /* 1A40 80000E40 AC2D1C0C */  sw         $t5, %lo(D_80001C0C)($at)
    /* 1A44 80000E44 26941BD8 */  addiu      $s4, $s4, %lo(D_80001BD8)
    /* 1A48 80000E48 26311BD4 */  addiu      $s1, $s1, %lo(D_80001BD4)
    /* 1A4C 80000E4C AFBF003C */  sw         $ra, 0x3C($sp)
    /* 1A50 80000E50 AFBE0038 */  sw         $fp, 0x38($sp)
    /* 1A54 80000E54 AFB70034 */  sw         $s7, 0x34($sp)
    /* 1A58 80000E58 AFB60030 */  sw         $s6, 0x30($sp)
    /* 1A5C 80000E5C AFB5002C */  sw         $s5, 0x2C($sp)
    /* 1A60 80000E60 AFB30024 */  sw         $s3, 0x24($sp)
    /* 1A64 80000E64 AFB20020 */  sw         $s2, 0x20($sp)
    /* 1A68 80000E68 AFB00018 */  sw         $s0, 0x18($sp)
    /* 1A6C 80000E6C AE840000 */  sw         $a0, 0x0($s4)
    /* 1A70 80000E70 AE250000 */  sw         $a1, 0x0($s1)
    /* 1A74 80000E74 8C900000 */  lw         $s0, 0x0($a0)
    /* 1A78 80000E78 248F0004 */  addiu      $t7, $a0, 0x4
    /* 1A7C 80000E7C AE8F0000 */  sw         $t7, 0x0($s4)
    /* 1A80 80000E80 16000003 */  bnez       $s0, .L80000E90
    /* 1A84 80000E84 00000000 */   nop
    /* 1A88 80000E88 10000087 */  b          .L800010A8
    /* 1A8C 80000E8C 00A01025 */   or        $v0, $a1, $zero
  .L80000E90:
    /* 1A90 80000E90 0C000192 */  jal        func_80000648
    /* 1A94 80000E94 00000000 */   nop
    /* 1A98 80000E98 8E320000 */  lw         $s2, 0x0($s1)
    /* 1A9C 80000E9C 3C1E8000 */  lui        $fp, %hi(D_80001D10)
    /* 1AA0 80000EA0 27DE1D10 */  addiu      $fp, $fp, %lo(D_80001D10)
    /* 1AA4 80000EA4 0250B021 */  addu       $s6, $s2, $s0
    /* 1AA8 80000EA8 0256082B */  sltu       $at, $s2, $s6
    /* 1AAC 80000EAC 1020007D */  beqz       $at, .L800010A4
    /* 1AB0 80000EB0 3C178000 */   lui       $s7, %hi(D_80001C10)
    /* 1AB4 80000EB4 3C138000 */  lui        $s3, %hi(D_80001BE4)
    /* 1AB8 80000EB8 3C118000 */  lui        $s1, %hi(D_80001BE0)
    /* 1ABC 80000EBC 26311BE0 */  addiu      $s1, $s1, %lo(D_80001BE0)
    /* 1AC0 80000EC0 26731BE4 */  addiu      $s3, $s3, %lo(D_80001BE4)
    /* 1AC4 80000EC4 26F71C10 */  addiu      $s7, $s7, %lo(D_80001C10)
    /* 1AC8 80000EC8 24150008 */  addiu      $s5, $zero, 0x8
  .L80000ECC:
    /* 1ACC 80000ECC 3C068000 */  lui        $a2, %hi(D_80001C0C)
    /* 1AD0 80000ED0 8CC61C0C */  lw         $a2, %lo(D_80001C0C)($a2)
    /* 1AD4 80000ED4 8CD009C8 */  lw         $s0, 0x9C8($a2)
    /* 1AD8 80000ED8 2E010273 */  sltiu      $at, $s0, 0x273
    /* 1ADC 80000EDC 50200020 */  beql       $at, $zero, .L80000F60
    /* 1AE0 80000EE0 2610FD8D */   addiu     $s0, $s0, -0x273
    /* 1AE4 80000EE4 92630000 */  lbu        $v1, 0x0($s3)
  .L80000EE8:
    /* 1AE8 80000EE8 28610009 */  slti       $at, $v1, 0x9
    /* 1AEC 80000EEC 1020000D */  beqz       $at, .L80000F24
    /* 1AF0 80000EF0 00602825 */   or        $a1, $v1, $zero
    /* 1AF4 80000EF4 8E840000 */  lw         $a0, 0x0($s4)
    /* 1AF8 80000EF8 8E390000 */  lw         $t9, 0x0($s1)
    /* 1AFC 80000EFC 02A55023 */  subu       $t2, $s5, $a1
    /* 1B00 80000F00 90820000 */  lbu        $v0, 0x0($a0)
    /* 1B04 80000F04 24AD0008 */  addiu      $t5, $a1, 0x8
    /* 1B08 80000F08 24980001 */  addiu      $t8, $a0, 0x1
    /* 1B0C 80000F0C 01425804 */  sllv       $t3, $v0, $t2
    /* 1B10 80000F10 032B6025 */  or         $t4, $t9, $t3
    /* 1B14 80000F14 AE2C0000 */  sw         $t4, 0x0($s1)
    /* 1B18 80000F18 AE980000 */  sw         $t8, 0x0($s4)
    /* 1B1C 80000F1C A26D0000 */  sb         $t5, 0x0($s3)
    /* 1B20 80000F20 31A300FF */  andi       $v1, $t5, 0xFF
  .L80000F24:
    /* 1B24 80000F24 8E220000 */  lw         $v0, 0x0($s1)
    /* 1B28 80000F28 246AFFFF */  addiu      $t2, $v1, -0x1
    /* 1B2C 80000F2C A26A0000 */  sb         $t2, 0x0($s3)
    /* 1B30 80000F30 000273C2 */  srl        $t6, $v0, 15
    /* 1B34 80000F34 31CF0001 */  andi       $t7, $t6, 0x1
    /* 1B38 80000F38 020F8021 */  addu       $s0, $s0, $t7
    /* 1B3C 80000F3C 0010C880 */  sll        $t9, $s0, 2
    /* 1B40 80000F40 0002C040 */  sll        $t8, $v0, 1
    /* 1B44 80000F44 AE380000 */  sw         $t8, 0x0($s1)
    /* 1B48 80000F48 00D95821 */  addu       $t3, $a2, $t9
    /* 1B4C 80000F4C 8D700000 */  lw         $s0, 0x0($t3)
    /* 1B50 80000F50 2E010273 */  sltiu      $at, $s0, 0x273
    /* 1B54 80000F54 5420FFE4 */  bnel       $at, $zero, .L80000EE8
    /* 1B58 80000F58 92630000 */   lbu       $v1, 0x0($s3)
    /* 1B5C 80000F5C 2610FD8D */  addiu      $s0, $s0, -0x273
  .L80000F60:
    /* 1B60 80000F60 0C00030F */  jal        func_80000C3C
    /* 1B64 80000F64 02002025 */   or        $a0, $s0, $zero
    /* 1B68 80000F68 2A010100 */  slti       $at, $s0, 0x100
    /* 1B6C 80000F6C 50200005 */  beql       $at, $zero, .L80000F84
    /* 1B70 80000F70 92650000 */   lbu       $a1, 0x0($s3)
    /* 1B74 80000F74 A2500000 */  sb         $s0, 0x0($s2)
    /* 1B78 80000F78 10000047 */  b          .L80001098
    /* 1B7C 80000F7C 26520001 */   addiu     $s2, $s2, 0x1
    /* 1B80 80000F80 92650000 */  lbu        $a1, 0x0($s3)
  .L80000F84:
    /* 1B84 80000F84 8E230000 */  lw         $v1, 0x0($s1)
    /* 1B88 80000F88 00001025 */  or         $v0, $zero, $zero
    /* 1B8C 80000F8C 28A10009 */  slti       $at, $a1, 0x9
    /* 1B90 80000F90 1020000A */  beqz       $at, .L80000FBC
    /* 1B94 80000F94 02A56823 */   subu      $t5, $s5, $a1
    /* 1B98 80000F98 8E840000 */  lw         $a0, 0x0($s4)
    /* 1B9C 80000F9C 24AF0008 */  addiu      $t7, $a1, 0x8
    /* 1BA0 80000FA0 31E500FF */  andi       $a1, $t7, 0xFF
    /* 1BA4 80000FA4 90860000 */  lbu        $a2, 0x0($a0)
    /* 1BA8 80000FA8 248C0001 */  addiu      $t4, $a0, 0x1
    /* 1BAC 80000FAC AE8C0000 */  sw         $t4, 0x0($s4)
    /* 1BB0 80000FB0 01A67004 */  sllv       $t6, $a2, $t5
    /* 1BB4 80000FB4 006E1825 */  or         $v1, $v1, $t6
    /* 1BB8 80000FB8 A26F0000 */  sb         $t7, 0x0($s3)
  .L80000FBC:
    /* 1BBC 80000FBC 00034202 */  srl        $t0, $v1, 8
    /* 1BC0 80000FC0 311900FF */  andi       $t9, $t0, 0xFF
    /* 1BC4 80000FC4 02F95821 */  addu       $t3, $s7, $t9
    /* 1BC8 80000FC8 91690000 */  lbu        $t1, 0x0($t3)
    /* 1BCC 80000FCC 03D96821 */  addu       $t5, $fp, $t9
    /* 1BD0 80000FD0 24AAFFF8 */  addiu      $t2, $a1, -0x8
    /* 1BD4 80000FD4 91A60000 */  lbu        $a2, 0x0($t5)
    /* 1BD8 80000FD8 314500FF */  andi       $a1, $t2, 0xFF
    /* 1BDC 80000FDC 28A10009 */  slti       $at, $a1, 0x9
    /* 1BE0 80000FE0 00033A00 */  sll        $a3, $v1, 8
    /* 1BE4 80000FE4 00096180 */  sll        $t4, $t1, 6
    /* 1BE8 80000FE8 01804825 */  or         $t1, $t4, $zero
    /* 1BEC 80000FEC AE270000 */  sw         $a3, 0x0($s1)
    /* 1BF0 80000FF0 A26A0000 */  sb         $t2, 0x0($s3)
    /* 1BF4 80000FF4 03204025 */  or         $t0, $t9, $zero
    /* 1BF8 80000FF8 1020000B */  beqz       $at, .L80001028
    /* 1BFC 80000FFC 24C6FFFE */   addiu     $a2, $a2, -0x2
    /* 1C00 80001000 8E840000 */  lw         $a0, 0x0($s4)
    /* 1C04 80001004 02A57823 */  subu       $t7, $s5, $a1
    /* 1C08 80001008 24AA0008 */  addiu      $t2, $a1, 0x8
    /* 1C0C 8000100C 90830000 */  lbu        $v1, 0x0($a0)
    /* 1C10 80001010 248E0001 */  addiu      $t6, $a0, 0x1
    /* 1C14 80001014 AE8E0000 */  sw         $t6, 0x0($s4)
    /* 1C18 80001018 01E3C004 */  sllv       $t8, $v1, $t7
    /* 1C1C 8000101C 00F83825 */  or         $a3, $a3, $t8
    /* 1C20 80001020 A26A0000 */  sb         $t2, 0x0($s3)
    /* 1C24 80001024 314500FF */  andi       $a1, $t2, 0xFF
  .L80001028:
    /* 1C28 80001028 00C7C804 */  sllv       $t9, $a3, $a2
    /* 1C2C 8000102C 00A65823 */  subu       $t3, $a1, $a2
    /* 1C30 80001030 2603FF03 */  addiu      $v1, $s0, -0xFD
    /* 1C34 80001034 A26B0000 */  sb         $t3, 0x0($s3)
    /* 1C38 80001038 18600017 */  blez       $v1, .L80001098
    /* 1C3C 8000103C AE390000 */   sw        $t9, 0x0($s1)
    /* 1C40 80001040 240C0010 */  addiu      $t4, $zero, 0x10
    /* 1C44 80001044 240F0001 */  addiu      $t7, $zero, 0x1
    /* 1C48 80001048 00CFC004 */  sllv       $t8, $t7, $a2
    /* 1C4C 8000104C 01866823 */  subu       $t5, $t4, $a2
    /* 1C50 80001050 01A77006 */  srlv       $t6, $a3, $t5
    /* 1C54 80001054 270AFFFF */  addiu      $t2, $t8, -0x1
    /* 1C58 80001058 01CAC824 */  and        $t9, $t6, $t2
    /* 1C5C 8000105C 00C85804 */  sllv       $t3, $t0, $a2
    /* 1C60 80001060 01796025 */  or         $t4, $t3, $t9
    /* 1C64 80001064 318D003F */  andi       $t5, $t4, 0x3F
    /* 1C68 80001068 01A97825 */  or         $t7, $t5, $t1
    /* 1C6C 8000106C 24180FC3 */  addiu      $t8, $zero, 0xFC3
    /* 1C70 80001070 030F2023 */  subu       $a0, $t8, $t7
    /* 1C74 80001074 308E0FFF */  andi       $t6, $a0, 0xFFF
    /* 1C78 80001078 01C02025 */  or         $a0, $t6, $zero
  .L8000107C:
    /* 1C7C 8000107C 02445021 */  addu       $t2, $s2, $a0
    /* 1C80 80001080 914BF03C */  lbu        $t3, -0xFC4($t2)
    /* 1C84 80001084 24420001 */  addiu      $v0, $v0, 0x1
    /* 1C88 80001088 0043082A */  slt        $at, $v0, $v1
    /* 1C8C 8000108C 26520001 */  addiu      $s2, $s2, 0x1
    /* 1C90 80001090 1420FFFA */  bnez       $at, .L8000107C
    /* 1C94 80001094 A24BFFFF */   sb        $t3, -0x1($s2)
  .L80001098:
    /* 1C98 80001098 0256082B */  sltu       $at, $s2, $s6
    /* 1C9C 8000109C 1420FF8B */  bnez       $at, .L80000ECC
    /* 1CA0 800010A0 00000000 */   nop
  .L800010A4:
    /* 1CA4 800010A4 02401025 */  or         $v0, $s2, $zero
  .L800010A8:
    /* 1CA8 800010A8 8FBF003C */  lw         $ra, 0x3C($sp)
    /* 1CAC 800010AC 8FB00018 */  lw         $s0, 0x18($sp)
    /* 1CB0 800010B0 8FB1001C */  lw         $s1, 0x1C($sp)
    /* 1CB4 800010B4 8FB20020 */  lw         $s2, 0x20($sp)
    /* 1CB8 800010B8 8FB30024 */  lw         $s3, 0x24($sp)
    /* 1CBC 800010BC 8FB40028 */  lw         $s4, 0x28($sp)
    /* 1CC0 800010C0 8FB5002C */  lw         $s5, 0x2C($sp)
    /* 1CC4 800010C4 8FB60030 */  lw         $s6, 0x30($sp)
    /* 1CC8 800010C8 8FB70034 */  lw         $s7, 0x34($sp)
    /* 1CCC 800010CC 8FBE0038 */  lw         $fp, 0x38($sp)
    /* 1CD0 800010D0 03E00008 */  jr         $ra
    /* 1CD4 800010D4 27BD0040 */   addiu     $sp, $sp, 0x40
