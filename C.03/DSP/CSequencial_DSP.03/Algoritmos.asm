;******************************************************************************
;* TMS320C6x C/C++ Codegen                                        Unix v7.6.0 *
;* Date/Time created: Wed Feb 18 17:27:41 2015                                *
;******************************************************************************
	.compiler_opts --abi=coffabi --array_alignment=8 --c64p_l1d_workaround=default --endian=little --hll_source=on --long_precision_bits=40 --mem_model:code=near --mem_model:const=data --mem_model:data=far_aggregates --object_format=coff --silicon_version=6500 --symdebug:dwarf_version=3 --symdebug:skeletal 

;******************************************************************************
;* GLOBAL FILE PARAMETERS                                                     *
;*                                                                            *
;*   Architecture      : TMS320C64x+                                          *
;*   Optimization      : Enabled at level 3                                   *
;*   Optimizing for    : Speed                                                *
;*                       Based on options: -o3, no -ms                        *
;*   Endian            : Little                                               *
;*   Interrupt Thrshld : Disabled                                             *
;*   Data Access Model : Far Aggregate Data                                   *
;*   Pipelining        : Enabled                                              *
;*   Speculate Loads   : Enabled with threshold = 0                           *
;*   Memory Aliases    : Presume not aliases (optimistic)                     *
;*   Debug Info        : DWARF Debug for Program Analysis w/Optimization      *
;*                                                                            *
;******************************************************************************

	.asg	A15, FP
	.asg	B14, DP
	.asg	B15, SP
	.global	$bss


$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C6x C/C++ Codegen Unix v7.6.0 Copyright (c) 1996-2014 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("/home/fernandofernandes/NetBeansProjects/C.03/DSP/CSequencial_DSP.03")

$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("_amem8_const")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("__amem8_const")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$20)
	.dwendtag $C$DW$1


$C$DW$3	.dwtag  DW_TAG_subprogram, DW_AT_name("_amem4_const")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("__amem4_const")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$3, DW_AT_declaration
	.dwattr $C$DW$3, DW_AT_external
$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$20)
	.dwendtag $C$DW$3


$C$DW$5	.dwtag  DW_TAG_subprogram, DW_AT_name("_amem8")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("__amem8")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$5, DW_AT_declaration
	.dwattr $C$DW$5, DW_AT_external
$C$DW$6	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$3)
	.dwendtag $C$DW$5


$C$DW$7	.dwtag  DW_TAG_subprogram, DW_AT_name("_amem2")
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("__amem2")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$7, DW_AT_declaration
	.dwattr $C$DW$7, DW_AT_external
$C$DW$8	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$3)
	.dwendtag $C$DW$7

;	/opt/c6000_7.6.0/bin/opt6x /tmp/08687dxoTnz /tmp/08687ixwzmm 
	.sect	".text"
	.clink
	.global	_memorycpy

$C$DW$9	.dwtag  DW_TAG_subprogram, DW_AT_name("memorycpy")
	.dwattr $C$DW$9, DW_AT_low_pc(_memorycpy)
	.dwattr $C$DW$9, DW_AT_high_pc(0x00)
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("_memorycpy")
	.dwattr $C$DW$9, DW_AT_external
	.dwattr $C$DW$9, DW_AT_TI_begin_file("Algoritmos.c")
	.dwattr $C$DW$9, DW_AT_TI_begin_line(0x7e)
	.dwattr $C$DW$9, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$9, DW_AT_TI_max_frame_size(0x00)
	.dwattr $C$DW$9, DW_AT_frame_base[DW_OP_breg31 0]
	.dwattr $C$DW$9, DW_AT_TI_skeletal
	.dwpsn	file "Algoritmos.c",line 126,column 90,is_stmt,address _memorycpy,isa 0
$C$DW$10	.dwtag  DW_TAG_formal_parameter, DW_AT_name("src")
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("_src")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$10, DW_AT_location[DW_OP_reg4]
$C$DW$11	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dst")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("_dst")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$11, DW_AT_location[DW_OP_reg20]

;******************************************************************************
;* FUNCTION NAME: memorycpy                                                   *
;*                                                                            *
;*   Regs Modified     : A3,A4,A6,A7,B4,B5,B6,B7                              *
;*   Regs Used         : A3,A4,A6,A7,B3,B4,B5,B6,B7                           *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_memorycpy:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 3

           MVKL    .S2     0x2a300,B4
||         ADD     .L1X    8,B4,A4
||         MV      .L2     B4,B5             ; |Algoritmos.c:126| 
||         MV      .S1     A4,A3             ; |Algoritmos.c:126| 

           MVKH    .S2     0x2a300,B4
           SUB     .L2     B4,2,B4
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop found in file               : Algoritmos.c
;*      Loop source line                 : 129
;*      Loop opening brace source line   : 130
;*      Loop closing brace source line   : 130
;*      Loop Unroll Multiple             : 2x
;*      Known Minimum Trip Count         : 172800                    
;*      Known Maximum Trip Count         : 172800                    
;*      Known Max Trip Count Factor      : 172800
;*      Loop Carried Dependency Bound(^) : 0
;*      Unpartitioned Resource Bound     : 2
;*      Partitioned Resource Bound(*)    : 2
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     0        0     
;*      .D units                     2*       2*    
;*      .M units                     0        0     
;*      .X cross paths               0        0     
;*      .T address paths             2*       2*    
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          0        0     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             0        0     
;*      Bound(.L .S .D .LS .LSD)     1        1     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 2  Schedule found with 3 iterations in parallel
;*
;*      Register Usage Table:
;*          +-----------------------------------------------------------------+
;*          |AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA|BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB|
;*          |00000000001111111111222222222233|00000000001111111111222222222233|
;*          |01234567890123456789012345678901|01234567890123456789012345678901|
;*          |--------------------------------+--------------------------------|
;*       0: |   **                           |    **                          |
;*       1: |   ** **                        |    ****                        |
;*          +-----------------------------------------------------------------+
;*
;*      Done
;*
;*      Loop will be splooped
;*      Collapsed epilog stages       : 0
;*      Collapsed prolog stages       : 0
;*      Minimum required memory pad   : 0 bytes
;*
;*      Minimum safe trip count       : 1 (after unrolling)
;*      Min. prof. trip count  (est.) : 2 (after unrolling)
;*
;*      Mem bank conflicts/iter(est.) : { min 0.000, est 0.000, max 0.000 }
;*      Mem bank perf. penalty (est.) : 0.0%
;*
;*
;*      Total cycles (est.)         : 4 + min_trip_cnt * 2 = 345604        
;*----------------------------------------------------------------------------*
;*       SETUP CODE
;*
;*                  MV              B5,A4
;*                  ADD             8,A4,A4
;*                  MV              B4,A3
;*                  ADD             8,A3,A3
;*
;*        SINGLE SCHEDULED ITERATION
;*
;*        $C$C22:
;*   0              LDDW    .D2T2   *B4++(16),B7:B6   ; |Algoritmos.c:130| 
;*     ||           LDDW    .D1T1   *A3++(16),A7:A6   ; |Algoritmos.c:130| 
;*   1              NOP             4
;*   5              STDW    .D2T2   B7:B6,*B5++(16)   ; |Algoritmos.c:130| 
;*     ||           STDW    .D1T1   A7:A6,*A4++(16)   ; |Algoritmos.c:130| 
;*     ||           SPBR            $C$C22
;*   6              ; BRANCHCC OCCURS {$C$C22}        ; |Algoritmos.c:129| 
;*----------------------------------------------------------------------------*
$C$L1:    ; PIPED LOOP PROLOG
;          EXCLUSIVE CPU CYCLES: 5
	.dwpsn	file "Algoritmos.c",line 129,column 0,is_stmt,isa 0

           SPLOOPD 2       ;6                ; (P) 
||         ADD     .L1     8,A3,A3
||         MV      .L2X    A3,B4
||         MVC     .S2     B4,ILC

;** --------------------------------------------------------------------------*
$C$L2:    ; PIPED LOOP KERNEL
$C$DW$L$_memorycpy$3$B:
	.dwpsn	file "Algoritmos.c",line 130,column 0,is_stmt,isa 0
;          EXCLUSIVE CPU CYCLES: 2

           LDDW    .D2T2   *B4++(16),B7:B6   ; |Algoritmos.c:130| (P) <0,0> 
||         LDDW    .D1T1   *A3++(16),A7:A6   ; |Algoritmos.c:130| (P) <0,0> 

           NOP             3
           NOP             1

           SPKERNEL 0,0
||         STDW    .D2T2   B7:B6,*B5++(16)   ; |Algoritmos.c:130| <0,5> 
||         STDW    .D1T1   A7:A6,*A4++(16)   ; |Algoritmos.c:130| <0,5> 

$C$DW$L$_memorycpy$3$E:
;** --------------------------------------------------------------------------*
$C$L3:    ; PIPED LOOP EPILOG
;          EXCLUSIVE CPU CYCLES: 6
	.dwpsn	file "Algoritmos.c",line 131,column 1,is_stmt,isa 0
$C$DW$12	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$12, DW_AT_low_pc(0x00)
	.dwattr $C$DW$12, DW_AT_TI_return
           RETNOP  .S2     B3,5              ; |Algoritmos.c:131| 
           ; BRANCH OCCURS {B3}              ; |Algoritmos.c:131| 

$C$DW$13	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$13, DW_AT_name("/home/fernandofernandes/NetBeansProjects/C.03/DSP/CSequencial_DSP.03/Algoritmos.asm:$C$L2:1:1424287661")
	.dwattr $C$DW$13, DW_AT_TI_begin_file("Algoritmos.c")
	.dwattr $C$DW$13, DW_AT_TI_begin_line(0x81)
	.dwattr $C$DW$13, DW_AT_TI_end_line(0x82)
$C$DW$14	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$14, DW_AT_low_pc($C$DW$L$_memorycpy$3$B)
	.dwattr $C$DW$14, DW_AT_high_pc($C$DW$L$_memorycpy$3$E)
	.dwendtag $C$DW$13

	.dwattr $C$DW$9, DW_AT_TI_end_file("Algoritmos.c")
	.dwattr $C$DW$9, DW_AT_TI_end_line(0x83)
	.dwattr $C$DW$9, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$9

	.sect	".text"
	.clink
	.global	_YUYVtoRGB

$C$DW$15	.dwtag  DW_TAG_subprogram, DW_AT_name("YUYVtoRGB")
	.dwattr $C$DW$15, DW_AT_low_pc(_YUYVtoRGB)
	.dwattr $C$DW$15, DW_AT_high_pc(0x00)
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("_YUYVtoRGB")
	.dwattr $C$DW$15, DW_AT_external
	.dwattr $C$DW$15, DW_AT_TI_begin_file("Algoritmos.c")
	.dwattr $C$DW$15, DW_AT_TI_begin_line(0x39)
	.dwattr $C$DW$15, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$15, DW_AT_TI_max_frame_size(0x10)
	.dwattr $C$DW$15, DW_AT_frame_base[DW_OP_breg31 16]
	.dwattr $C$DW$15, DW_AT_TI_skeletal
	.dwpsn	file "Algoritmos.c",line 57,column 95,is_stmt,address _YUYVtoRGB,isa 0
$C$DW$16	.dwtag  DW_TAG_formal_parameter, DW_AT_name("subimage")
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("_subimage")
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$16, DW_AT_location[DW_OP_reg4]
$C$DW$17	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dest")
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("_dest")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$17, DW_AT_location[DW_OP_reg20]

;******************************************************************************
;* FUNCTION NAME: YUYVtoRGB                                                   *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B4,B5,B6,B7,  *
;*                           B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24,B16,*
;*                           B17,B18,B19,B20,B21                              *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,DP,SP,A16,A17,A18,A19,A20,A21,A22,A23,  *
;*                           A24,B16,B17,B18,B19,B20,B21                      *
;*   Local Frame Size  : 0 Args + 12 Auto + 0 Save = 12 byte                  *
;******************************************************************************
_YUYVtoRGB:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 27

           SUB     .D2     SP,16,SP          ; |Algoritmos.c:57| 
||         ZERO    .L2     B5                ; |Algoritmos.c:65| 

           STH     .D2T2   B5,*+SP(8)        ; |Algoritmos.c:65| 
           LDHU    .D2T2   *+SP(8),B5        ; |Algoritmos.c:66| 
           MV      .L1     A4,A19
           MVK     .S1     0xffffff80,A21
           MVK     .S2     0xfffffd00,B20
           MVK     .S2     0xff,B9
           STH     .D2T2   B5,*+SP(10)       ; |Algoritmos.c:66| 
           LDHU    .D2T2   *+SP(10),B5       ; |Algoritmos.c:67| 
           DINT                              ; interrupts off
           SUB     .L1X    B4,6,A23
           NOP             2
           STH     .D2T2   B5,*+SP(12)       ; |Algoritmos.c:67| 
           LDW     .D1T1   *A19++,A3         ; |Algoritmos.c:70| (P) <0,0> 
           NOP             4
           STW     .D2T1   A3,*+SP(4)        ; |Algoritmos.c:70| (P) <0,10> 
           LDBU    .D2T1   *+SP(7),A4        ; |Algoritmos.c:82| (P) <0,18> 
           LDBU    .D2T2   *+SP(5),B5        ; |Algoritmos.c:83| (P) <0,11> 
           LDW     .D1T1   *A19++,A17        ; |Algoritmos.c:70| (P) <1,0> 
           LDBU    .D2T1   *+SP(6),A18       ; |Algoritmos.c:85| (P) <0,15> 
           LDBU    .D2T2   *+SP(4),B21       ; |Algoritmos.c:82| (P) <0,21> 
           ADD     .L1     A21,A4,A3         ; |Algoritmos.c:82| (P) <0,23> 

           MPYSU   .M1     6,A4,A5           ; |Algoritmos.c:83| (P) <0,23> 
||         ADD     .L2X    A21,B5,B4         ; |Algoritmos.c:83| (P) <0,22> 

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop found in file               : Algoritmos.c
;*      Loop source line                 : 69
;*      Loop opening brace source line   : 69
;*      Loop closing brace source line   : 91
;*      Known Minimum Trip Count         : 460800                    
;*      Known Maximum Trip Count         : 460800                    
;*      Known Max Trip Count Factor      : 460800
;*      Loop Carried Dependency Bound(^) : 5
;*      Unpartitioned Resource Bound     : 13
;*      Partitioned Resource Bound(*)    : 14
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     6        6     
;*      .S units                    10        9     
;*      .D units                     4       14*    
;*      .M units                     6        5     
;*      .X cross paths               5        9     
;*      .T address paths            10        8     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           1        1     (.L or .S unit)
;*      Addition ops (.LSD)         11       11     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             9        8     
;*      Bound(.L .S .D .LS .LSD)    11       14*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 14 Schedule found with 4 iterations in parallel
;*
;*      Register Usage Table:
;*          +-----------------------------------------------------------------+
;*          |AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA|BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB|
;*          |00000000001111111111222222222233|00000000001111111111222222222233|
;*          |01234567890123456789012345678901|01234567890123456789012345678901|
;*          |--------------------------------+--------------------------------|
;*       0: | ******           ******        | ** ***  *     *  ****          |
;*       1: |  ******          *******       | ** *    *     *  ****          |
;*       2: |  *****           *******       | **     **     ** ****          |
;*       3: |   **** **        *******       | ** **  **     ** ****          |
;*       4: |   **** **      * *******       | ** *** **     ** ****          |
;*       5: |   *******      *********       | ** ******     ** ****          |
;*       6: |   *******      ********        | ** ******     ** ****          |
;*       7: | * *******      ********        |*** ******     *  ****          |
;*       8: | *** *** *       *******        |*** ******     ** ****          |
;*       9: |**** **  *       *******        | ** ******     *******          |
;*      10: |*******          *******        | ** *  ***     *******          |
;*      11: |*******          *******        |*** **  **     *******          |
;*      12: | ******           ******        |*** ******     ******           |
;*      13: | **** *           ******        | ** ***  *     ** ****          |
;*          +-----------------------------------------------------------------+
;*
;*      Done
;*
;*      Epilog not removed
;*      Collapsed epilog stages       : 0
;*
;*      Prolog not entirely removed
;*      Collapsed prolog stages       : 1
;*
;*      Minimum required memory pad   : 0 bytes
;*
;*      For further improvement on this loop, try option -mh12
;*
;*      Minimum safe trip count       : 3
;*
;*
;*      Mem bank conflicts/iter(est.) : { min 0.000, est 0.500, max 4.000 }
;*      Mem bank perf. penalty (est.) : 3.4%
;*
;*      Effective ii                : { min 14.00, est 14.50, max 18.00 }
;*
;*
;*      Total cycles (est.)         : 41 + min_trip_cnt * 14 = 6451241        
;*----------------------------------------------------------------------------*
;*       SETUP CODE
;*
;*                  MV              A20,B9
;*
;*        SINGLE SCHEDULED ITERATION
;*
;*        $C$C136:
;*   0              LDW     .D1T1   *A19++,A17        ; |Algoritmos.c:70| 
;*   1              NOP             5
;*  10              STW     .D2T1   A17,*+SP(4)       ; |Algoritmos.c:70| 
;*  11              LDBU    .D2T2   *+SP(5),B5        ; |Algoritmos.c:83| 
;*  12              NOP             3
;*  15              LDBU    .D2T1   *+SP(6),A18       ; |Algoritmos.c:85| 
;*  16              NOP             2
;*  18              LDBU    .D2T1   *+SP(7),A4        ; |Algoritmos.c:82| 
;*  19              NOP             2
;*  21              LDBU    .D2T2   *+SP(4),B21       ; |Algoritmos.c:82| 
;*  22              ADD     .S2X    A21,B5,B4         ; |Algoritmos.c:83| 
;*  23              ADD     .L1     A21,A4,A3         ; |Algoritmos.c:82| 
;*     ||           MPY     .M2     B4,3,B5           ; |Algoritmos.c:83| 
;*     ||           MPYSU   .M1     6,A4,A6           ; |Algoritmos.c:83| 
;*  24              MPY     .M1     A3,3,A3           ; |Algoritmos.c:82| 
;*  25              MPY     .M1     6,A3,A6           ; |Algoritmos.c:83| 
;*  26              EXT     .S1     A3,15,16,A5       ; |Algoritmos.c:82| 
;*     ||           ADD     .L2X    B5,A6,B6          ; |Algoritmos.c:83| 
;*     ||           MPY     .M1X    B4,A22,A24        ; |Algoritmos.c:84| 
;*  27              SHR     .S1     A3,1,A6           ; |Algoritmos.c:82| 
;*     ||           ADD     .L2     B20,B6,B4         ; |Algoritmos.c:83| 
;*     ||           ADD     .D1X    B5,A6,A7          ; |Algoritmos.c:83| 
;*     ||           ADD     .L1     A5,A18,A3         ; |Algoritmos.c:85| 
;*  28              ADD     .L2X    A5,B21,B16        ; |Algoritmos.c:82| 
;*     ||           SHR     .S2     B4,3,B8           ; |Algoritmos.c:83| 
;*     ||           EXT     .S1     A7,13,16,A5       ; |Algoritmos.c:83| 
;*  29              CMPLT   .L2     B16,0,B4          ; |Algoritmos.c:82| 
;*     ||           EXT     .S1     A24,10,16,A8      ; |Algoritmos.c:84| 
;*     ||           SUB     .L1     A18,A5,A9         ; |Algoritmos.c:86| 
;*  30              ADD     .D1X    A6,B21,A4         ; |Algoritmos.c:82| 
;*     ||           XOR     .S2     1,B4,B4           ; |Algoritmos.c:82| 
;*     ||           ADD     .S1     A6,A18,A16        ; |Algoritmos.c:85| 
;*     ||           CMPLT   .L2X    A3,0,B6           ; |Algoritmos.c:85| 
;*     ||           CMPLT   .L1     A9,0,A6           ; |Algoritmos.c:86| 
;*  31              SUB     .L2X    B21,A5,B7         ; |Algoritmos.c:83| 
;*     ||           XOR     .S2     1,B6,B6           ; |Algoritmos.c:85| 
;*     ||           SUB     .L1X    A18,B8,A6         ; |Algoritmos.c:86| 
;*     ||           XOR     .D1     1,A6,A17          ; |Algoritmos.c:86| 
;*     ||           ADD     .S1     A8,A18,A7         ; |Algoritmos.c:87| 
;*  32              MPY     .M2X    B4,A4,B6          ; |Algoritmos.c:82| 
;*     ||           SUB     .S2     B21,B8,B4         ; |Algoritmos.c:83| 
;*     ||           CMPLT   .L2     B7,0,B8           ; |Algoritmos.c:83| 
;*     ||           SHR     .S1     A24,6,A6          ; |Algoritmos.c:84| 
;*     ||           MPY     .M1     A17,A6,A9         ; |Algoritmos.c:86| 
;*     ||           CMPLT   .L1     A7,0,A4           ; |Algoritmos.c:87| 
;*  33              CMPGT   .L2     B16,B9,B0         ; |Algoritmos.c:82| 
;*     ||           XOR     .S2     1,B8,B8           ; |Algoritmos.c:83| 
;*     ||           MPY     .M2X    B6,A16,B16        ; |Algoritmos.c:85| 
;*     ||           CMPGT   .L1     A9,A20,A1         ; |Algoritmos.c:86| 
;*     ||           ADD     .S1     A6,A18,A4         ; |Algoritmos.c:87| 
;*     ||           XOR     .D1     1,A4,A16          ; |Algoritmos.c:87| 
;*  34      [ B0]   EXTU    .S2     B9,24,24,B4       ; |Algoritmos.c:82| 
;*     ||           MPY     .M2     B8,B4,B17         ; |Algoritmos.c:83| 
;*     ||           ADD     .L2X    A8,B21,B8         ; |Algoritmos.c:84| 
;*     ||           CMPGT   .L1     A3,A20,A2         ; |Algoritmos.c:85| 
;*     ||   [ A1]   EXTU    .S1     A20,24,24,A3      ; |Algoritmos.c:86| 
;*     ||           MPY     .M1     A16,A4,A5         ; |Algoritmos.c:87| 
;*  35      [!B0]   EXTU    .S2     B6,24,24,B4       ; |Algoritmos.c:82| 
;*     ||           CMPLT   .L2     B8,0,B6           ; |Algoritmos.c:84| 
;*     ||           CMPGT   .L1     A7,A20,A0         ; |Algoritmos.c:87| 
;*  36              STB     .D2T2   B4,*+SP(8)        ; |Algoritmos.c:82| 
;*     ||           CMPGT   .L1X    B8,A20,A1         ; |Algoritmos.c:84| 
;*     ||           XOR     .L2     1,B6,B8           ; |Algoritmos.c:84| 
;*     ||   [!A1]   EXTU    .S1     A9,24,24,A3       ; |Algoritmos.c:86| 
;*  37              CMPGT   .L2     B7,B9,B0          ; |Algoritmos.c:83| 
;*     ||   [ A1]   EXTU    .S2     B9,24,24,B19      ; |Algoritmos.c:84| 
;*     ||           STB     .D2T1   A3,*+SP(12)       ; |Algoritmos.c:86| 
;*     ||   [ A0]   EXTU    .S1     A20,24,24,A4      ; |Algoritmos.c:87| 
;*  38      [ B0]   EXTU    .S2     B9,24,24,B6       ; |Algoritmos.c:83| 
;*     ||           ADD     .L2X    A6,B21,B7         ; |Algoritmos.c:84| 
;*     ||   [!A0]   EXTU    .S1     A5,24,24,A4       ; |Algoritmos.c:87| 
;*  39      [!B0]   EXTU    .S2     B17,24,24,B6      ; |Algoritmos.c:83| 
;*     ||           MPY     .M2     B8,B7,B4          ; |Algoritmos.c:84| 
;*     ||   [ B1]   SUB     .L2     B1,1,B1           ; |Algoritmos.c:69| 
;*  40              STB     .D2T2   B6,*+SP(9)        ; |Algoritmos.c:83| 
;*     ||   [!A2]   EXTU    .S2     B16,24,24,B18     ; |Algoritmos.c:85| 
;*  41      [!A1]   EXTU    .S2     B4,24,24,B19      ; |Algoritmos.c:84| 
;*     ||           LDHU    .D2T1   *+SP(8),A5        ; |Algoritmos.c:88| 
;*  42              STB     .D2T2   B19,*+SP(10)      ; |Algoritmos.c:84| 
;*  43      [ A2]   EXTU    .S2     B9,24,24,B18      ; |Algoritmos.c:85| 
;*  44              STB     .D2T1   A4,*+SP(13)       ; |Algoritmos.c:87| 
;*  45              STB     .D2T2   B18,*+SP(11)      ; |Algoritmos.c:85| 
;*  46              NOP             1
;*  47              LDHU    .D2T2   *+SP(10),B5       ; |Algoritmos.c:89| 
;*  48              LDHU    .D2T1   *+SP(12),A5       ; |Algoritmos.c:90| 
;*  49              STH     .D1T1   A5,*++A23(6)      ; |Algoritmos.c:88| 
;*     ||   [ B1]   B       .S1     $C$C136           ; |Algoritmos.c:69| 
;*  50              NOP             2
;*  52              STH     .D1T2   B5,*+A23(2)       ; |Algoritmos.c:89| 
;*  53              STH     .D1T1   A5,*+A23(4)       ; |Algoritmos.c:90| 
;*  54              NOP             1
;*  55              ; BRANCHCC OCCURS {$C$C136}       ; |Algoritmos.c:69| 
;*----------------------------------------------------------------------------*
$C$L4:    ; PIPED LOOP PROLOG
;          EXCLUSIVE CPU CYCLES: 3

           MVKL    .S2     0x70800,B1
||         MPY     .M2     B4,3,B5           ; |Algoritmos.c:83| (P) <0,23> 
||         MPY     .M1     A3,3,A3           ; |Algoritmos.c:82| (P) <0,24> 
||         STW     .D2T1   A17,*+SP(4)       ; |Algoritmos.c:70| (P) <1,10> 

           ZERO    .L2     B2
||         MVK     .S1     0x81,A22
||         MVKH    .S2     0x70800,B1
||         MV      .L1X    B9,A20
||         MPY     .M1     6,A3,A6           ; |Algoritmos.c:83| (P) <0,25> 
||         LDBU    .D2T2   *+SP(5),B5        ; |Algoritmos.c:83| (P) <1,11> 

	.dwpsn	file "Algoritmos.c",line 69,column 0,is_stmt,isa 0

           MVKH    .S2     0x10000,B2        ; init prolog collapse predicate
||         SUB     .L2     B1,3,B1
||         MPY     .M1X    B4,A22,A24        ; |Algoritmos.c:84| (P) <0,26> 
||         ADD     .D2X    B5,A5,B6          ; |Algoritmos.c:83| (P) <0,26> 
||         EXT     .S1     A3,15,16,A5       ; |Algoritmos.c:82| (P) <0,26> 

;** --------------------------------------------------------------------------*
$C$L5:    ; PIPED LOOP KERNEL
$C$DW$L$_YUYVtoRGB$3$B:
;          EXCLUSIVE CPU CYCLES: 14

   [!A1]   EXTU    .S2     B4,24,24,B19      ; |Algoritmos.c:84| <0,41> 
||         LDHU    .D2T1   *+SP(8),A5        ; |Algoritmos.c:88| <0,41> 
||         ADD     .L2     B20,B6,B4         ; |Algoritmos.c:83| <1,27> 
||         SHR     .S1     A3,1,A6           ; |Algoritmos.c:82| <1,27> 
||         ADD     .L1     A5,A18,A3         ; |Algoritmos.c:85| <1,27> 
||         ADD     .D1X    B5,A6,A7          ; |Algoritmos.c:83| <1,27> 

   [!B2]   STB     .D2T2   B19,*+SP(10)      ; |Algoritmos.c:84| <0,42> 
||         ADD     .L2X    A5,B21,B16        ; |Algoritmos.c:82| <1,28> 
||         SHR     .S2     B4,3,B8           ; |Algoritmos.c:83| <1,28> 
||         EXT     .S1     A7,13,16,A5       ; |Algoritmos.c:83| <1,28> 
||         LDW     .D1T1   *A19++,A17        ; |Algoritmos.c:70| <3,0> 

   [ A2]   EXTU    .S2     B9,24,24,B18      ; |Algoritmos.c:85| <0,43> 
||         SUB     .L1     A18,A5,A9         ; |Algoritmos.c:86| <1,29> 
||         EXT     .S1     A24,10,16,A8      ; |Algoritmos.c:84| <1,29> 
||         CMPLT   .L2     B16,0,B4          ; |Algoritmos.c:82| <1,29> 
||         LDBU    .D2T1   *+SP(6),A18       ; |Algoritmos.c:85| <2,15> 

   [!B2]   STB     .D2T1   A4,*+SP(13)       ; |Algoritmos.c:87| <0,44> 
||         ADD     .S1     A6,A18,A16        ; |Algoritmos.c:85| <1,30> 
||         CMPLT   .L1     A9,0,A6           ; |Algoritmos.c:86| <1,30> 
||         ADD     .D1X    A6,B21,A4         ; |Algoritmos.c:82| <1,30> 
||         XOR     .S2     1,B4,B4           ; |Algoritmos.c:82| <1,30> 
||         CMPLT   .L2X    A3,0,B6           ; |Algoritmos.c:85| <1,30> 

   [!B2]   STB     .D2T2   B18,*+SP(11)      ; |Algoritmos.c:85| <0,45> 
||         ADD     .S1     A8,A18,A7         ; |Algoritmos.c:87| <1,31> 
||         XOR     .D1     1,A6,A17          ; |Algoritmos.c:86| <1,31> 
||         SUB     .L1X    A18,B8,A6         ; |Algoritmos.c:86| <1,31> 
||         XOR     .S2     1,B6,B6           ; |Algoritmos.c:85| <1,31> 
||         SUB     .L2X    B21,A5,B7         ; |Algoritmos.c:83| <1,31> 

           SUB     .S2     B21,B8,B4         ; |Algoritmos.c:83| <1,32> 
||         SHR     .S1     A24,6,A6          ; |Algoritmos.c:84| <1,32> 
||         CMPLT   .L1     A7,0,A4           ; |Algoritmos.c:87| <1,32> 
||         MPY     .M2X    B4,A4,B6          ; |Algoritmos.c:82| <1,32> 
||         CMPLT   .L2     B7,0,B8           ; |Algoritmos.c:83| <1,32> 
||         MPY     .M1     A17,A6,A9         ; |Algoritmos.c:86| <1,32> 
||         LDBU    .D2T1   *+SP(7),A4        ; |Algoritmos.c:82| <2,18> 

           LDHU    .D2T2   *+SP(10),B5       ; |Algoritmos.c:89| <0,47> 
||         ADD     .S1     A6,A18,A4         ; |Algoritmos.c:87| <1,33> 
||         CMPGT   .L1     A9,A20,A1         ; |Algoritmos.c:86| <1,33> 
||         XOR     .D1     1,A4,A16          ; |Algoritmos.c:87| <1,33> 
||         CMPGT   .L2     B16,B9,B0         ; |Algoritmos.c:82| <1,33> 
||         MPY     .M2X    B6,A16,B16        ; |Algoritmos.c:85| <1,33> 
||         XOR     .S2     1,B8,B8           ; |Algoritmos.c:83| <1,33> 

           LDHU    .D2T1   *+SP(12),A5       ; |Algoritmos.c:90| <0,48> 
|| [ A1]   EXTU    .S1     A20,24,24,A3      ; |Algoritmos.c:86| <1,34> 
|| [ B0]   EXTU    .S2     B9,24,24,B4       ; |Algoritmos.c:82| <1,34> 
||         ADD     .L2X    A8,B21,B8         ; |Algoritmos.c:84| <1,34> 
||         MPY     .M1     A16,A4,A5         ; |Algoritmos.c:87| <1,34> 
||         MPY     .M2     B8,B4,B17         ; |Algoritmos.c:83| <1,34> 
||         CMPGT   .L1     A3,A20,A2         ; |Algoritmos.c:85| <1,34> 

   [ B1]   B       .S1     $C$L5             ; |Algoritmos.c:69| <0,49> 
|| [!B2]   STH     .D1T1   A5,*++A23(6)      ; |Algoritmos.c:88| <0,49> 
||         CMPLT   .L2     B8,0,B6           ; |Algoritmos.c:84| <1,35> 
|| [!B0]   EXTU    .S2     B6,24,24,B4       ; |Algoritmos.c:82| <1,35> 
||         CMPGT   .L1     A7,A20,A0         ; |Algoritmos.c:87| <1,35> 
||         LDBU    .D2T2   *+SP(4),B21       ; |Algoritmos.c:82| <2,21> 

   [!A1]   EXTU    .S1     A9,24,24,A3       ; |Algoritmos.c:86| <1,36> 
||         STB     .D2T2   B4,*+SP(8)        ; |Algoritmos.c:82| <1,36> 
||         XOR     .L2     1,B6,B8           ; |Algoritmos.c:84| <1,36> 
||         CMPGT   .L1X    B8,A20,A1         ; |Algoritmos.c:84| <1,36> 
||         ADD     .S2X    A21,B5,B4         ; |Algoritmos.c:83| <2,22> 

           STB     .D2T1   A3,*+SP(12)       ; |Algoritmos.c:86| <1,37> 
|| [ A1]   EXTU    .S2     B9,24,24,B19      ; |Algoritmos.c:84| <1,37> 
||         CMPGT   .L2     B7,B9,B0          ; |Algoritmos.c:83| <1,37> 
|| [ A0]   EXTU    .S1     A20,24,24,A4      ; |Algoritmos.c:87| <1,37> 
||         MPYSU   .M1     6,A4,A6           ; |Algoritmos.c:83| <2,23> 
||         ADD     .L1     A21,A4,A3         ; |Algoritmos.c:82| <2,23> 
||         MPY     .M2     B4,3,B5           ; |Algoritmos.c:83| <2,23> 

   [!B2]   STH     .D1T2   B5,*+A23(2)       ; |Algoritmos.c:89| <0,52> 
|| [!A0]   EXTU    .S1     A5,24,24,A4       ; |Algoritmos.c:87| <1,38> 
||         ADD     .L2X    A6,B21,B7         ; |Algoritmos.c:84| <1,38> 
|| [ B0]   EXTU    .S2     B9,24,24,B6       ; |Algoritmos.c:83| <1,38> 
||         MPY     .M1     A3,3,A3           ; |Algoritmos.c:82| <2,24> 
||         STW     .D2T1   A17,*+SP(4)       ; |Algoritmos.c:70| <3,10> 

   [!B2]   STH     .D1T1   A5,*+A23(4)       ; |Algoritmos.c:90| <0,53> 
|| [ B1]   SUB     .L2     B1,1,B1           ; |Algoritmos.c:69| <1,39> 
||         MPY     .M2     B8,B7,B4          ; |Algoritmos.c:84| <1,39> 
|| [!B0]   EXTU    .S2     B17,24,24,B6      ; |Algoritmos.c:83| <1,39> 
||         MPY     .M1     6,A3,A6           ; |Algoritmos.c:83| <2,25> 
||         LDBU    .D2T2   *+SP(5),B5        ; |Algoritmos.c:83| <3,11> 

	.dwpsn	file "Algoritmos.c",line 91,column 0,is_stmt,isa 0

   [ B2]   MPYSU   .M2     2,B2,B2           ; <0,54> 
|| [!A2]   EXTU    .S2     B16,24,24,B18     ; |Algoritmos.c:85| <1,40> 
||         STB     .D2T2   B6,*+SP(9)        ; |Algoritmos.c:83| <1,40> 
||         MPY     .M1X    B4,A22,A24        ; |Algoritmos.c:84| <2,26> 
||         ADD     .L2X    B5,A6,B6          ; |Algoritmos.c:83| <2,26> 
||         EXT     .S1     A3,15,16,A5       ; |Algoritmos.c:82| <2,26> 

$C$DW$L$_YUYVtoRGB$3$E:
;** --------------------------------------------------------------------------*
$C$L6:    ; PIPED LOOP EPILOG
;          EXCLUSIVE CPU CYCLES: 41

   [!A1]   EXTU    .S2     B4,24,24,B19      ; |Algoritmos.c:84| (E) <1,41> 
||         LDHU    .D2T1   *+SP(8),A7        ; |Algoritmos.c:88| (E) <1,41> 
||         ADD     .L2     B20,B6,B4         ; |Algoritmos.c:83| (E) <2,27> 
||         SHR     .S1     A3,1,A6           ; |Algoritmos.c:82| (E) <2,27> 
||         ADD     .L1     A5,A18,A3         ; |Algoritmos.c:85| (E) <2,27> 
||         ADD     .D1X    B5,A6,A7          ; |Algoritmos.c:83| (E) <2,27> 

           STB     .D2T2   B19,*+SP(10)      ; |Algoritmos.c:84| (E) <1,42> 
||         ADD     .L2X    A5,B21,B6         ; |Algoritmos.c:82| (E) <2,28> 
||         SHR     .S2     B4,3,B4           ; |Algoritmos.c:83| (E) <2,28> 
||         EXT     .S1     A7,13,16,A5       ; |Algoritmos.c:83| (E) <2,28> 

   [ A2]   EXTU    .S2     B9,24,24,B18      ; |Algoritmos.c:85| (E) <1,43> 
||         SUB     .L1     A18,A5,A9         ; |Algoritmos.c:86| (E) <2,29> 
||         EXT     .S1     A24,10,16,A16     ; |Algoritmos.c:84| (E) <2,29> 
||         CMPLT   .L2     B6,0,B7           ; |Algoritmos.c:82| (E) <2,29> 
||         LDBU    .D2T1   *+SP(6),A18       ; |Algoritmos.c:85| (E) <3,15> 

           STB     .D2T1   A4,*+SP(13)       ; |Algoritmos.c:87| (E) <1,44> 
||         ADD     .S1     A6,A18,A8         ; |Algoritmos.c:85| (E) <2,30> 
||         CMPLT   .L1     A9,0,A6           ; |Algoritmos.c:86| (E) <2,30> 
||         ADD     .D1X    A6,B21,A4         ; |Algoritmos.c:82| (E) <2,30> 
||         XOR     .S2     1,B7,B7           ; |Algoritmos.c:82| (E) <2,30> 
||         CMPLT   .L2X    A3,0,B8           ; |Algoritmos.c:85| (E) <2,30> 

           STB     .D2T2   B18,*+SP(11)      ; |Algoritmos.c:85| (E) <1,45> 
||         ADD     .S1     A16,A18,A6        ; |Algoritmos.c:87| (E) <2,31> 
||         XOR     .D1     1,A6,A5           ; |Algoritmos.c:86| (E) <2,31> 
||         SUB     .L1X    A18,B4,A17        ; |Algoritmos.c:86| (E) <2,31> 
||         XOR     .S2     1,B8,B16          ; |Algoritmos.c:85| (E) <2,31> 
||         SUB     .L2X    B21,A5,B8         ; |Algoritmos.c:83| (E) <2,31> 

           SUB     .S2     B21,B4,B4         ; |Algoritmos.c:83| (E) <2,32> 
||         SHR     .S1     A24,6,A17         ; |Algoritmos.c:84| (E) <2,32> 
||         CMPLT   .L1     A6,0,A4           ; |Algoritmos.c:87| (E) <2,32> 
||         MPY     .M2X    B7,A4,B6          ; |Algoritmos.c:82| (E) <2,32> 
||         CMPLT   .L2     B8,0,B7           ; |Algoritmos.c:83| (E) <2,32> 
||         MPY     .M1     A5,A17,A9         ; |Algoritmos.c:86| (E) <2,32> 
||         LDBU    .D2T1   *+SP(7),A4        ; |Algoritmos.c:82| (E) <3,18> 

           LDHU    .D2T2   *+SP(10),B4       ; |Algoritmos.c:89| (E) <1,47> 
||         ADD     .S1     A17,A18,A4        ; |Algoritmos.c:87| (E) <2,33> 
||         CMPGT   .L1     A9,A20,A1         ; |Algoritmos.c:86| (E) <2,33> 
||         XOR     .D1     1,A4,A5           ; |Algoritmos.c:87| (E) <2,33> 
||         CMPGT   .L2     B6,B9,B0          ; |Algoritmos.c:82| (E) <2,33> 
||         MPY     .M2X    B16,A8,B16        ; |Algoritmos.c:85| (E) <2,33> 
||         XOR     .S2     1,B7,B7           ; |Algoritmos.c:83| (E) <2,33> 

           LDHU    .D2T1   *+SP(12),A6       ; |Algoritmos.c:90| (E) <1,48> 
|| [ A1]   EXTU    .S1     A20,24,24,A3      ; |Algoritmos.c:86| (E) <2,34> 
|| [ B0]   EXTU    .S2     B9,24,24,B4       ; |Algoritmos.c:82| (E) <2,34> 
||         ADD     .L2X    A16,B21,B7        ; |Algoritmos.c:84| (E) <2,34> 
||         MPY     .M1     A5,A4,A5          ; |Algoritmos.c:87| (E) <2,34> 
||         MPY     .M2     B7,B4,B17         ; |Algoritmos.c:83| (E) <2,34> 
||         CMPGT   .L1     A3,A20,A2         ; |Algoritmos.c:85| (E) <2,34> 

           STH     .D1T1   A7,*++A23(6)      ; |Algoritmos.c:88| (E) <1,49> 
||         CMPLT   .L2     B7,0,B6           ; |Algoritmos.c:84| (E) <2,35> 
|| [!B0]   EXTU    .S2     B6,24,24,B4       ; |Algoritmos.c:82| (E) <2,35> 
||         CMPGT   .L1     A6,A20,A0         ; |Algoritmos.c:87| (E) <2,35> 
||         LDBU    .D2T2   *+SP(4),B21       ; |Algoritmos.c:82| (E) <3,21> 

   [!A1]   EXTU    .S1     A9,24,24,A3       ; |Algoritmos.c:86| (E) <2,36> 
||         STB     .D2T2   B4,*+SP(8)        ; |Algoritmos.c:82| (E) <2,36> 
||         XOR     .L2     1,B6,B5           ; |Algoritmos.c:84| (E) <2,36> 
||         CMPGT   .L1X    B7,A20,A1         ; |Algoritmos.c:84| (E) <2,36> 
||         ADD     .S2X    A21,B5,B7         ; |Algoritmos.c:83| (E) <3,22> 

           STB     .D2T1   A3,*+SP(12)       ; |Algoritmos.c:86| (E) <2,37> 
|| [ A1]   EXTU    .S2     B9,24,24,B19      ; |Algoritmos.c:84| (E) <2,37> 
||         CMPGT   .L2     B8,B9,B0          ; |Algoritmos.c:83| (E) <2,37> 
|| [ A0]   EXTU    .S1     A20,24,24,A4      ; |Algoritmos.c:87| (E) <2,37> 
||         MPYSU   .M1     6,A4,A5           ; |Algoritmos.c:83| (E) <3,23> 
||         ADD     .L1     A21,A4,A3         ; |Algoritmos.c:82| (E) <3,23> 
||         MPY     .M2     B7,3,B8           ; |Algoritmos.c:83| (E) <3,23> 

           STH     .D1T2   B4,*+A23(2)       ; |Algoritmos.c:89| (E) <1,52> 
|| [!A0]   EXTU    .S1     A5,24,24,A4       ; |Algoritmos.c:87| (E) <2,38> 
||         ADD     .L2X    A17,B21,B4        ; |Algoritmos.c:84| (E) <2,38> 
|| [ B0]   EXTU    .S2     B9,24,24,B6       ; |Algoritmos.c:83| (E) <2,38> 
||         MPY     .M1     A3,3,A3           ; |Algoritmos.c:82| (E) <3,24> 

           STH     .D1T1   A6,*+A23(4)       ; |Algoritmos.c:90| (E) <1,53> 
||         MPY     .M2     B5,B4,B4          ; |Algoritmos.c:84| (E) <2,39> 
|| [!B0]   EXTU    .S2     B17,24,24,B6      ; |Algoritmos.c:83| (E) <2,39> 
||         MPY     .M1     6,A3,A6           ; |Algoritmos.c:83| (E) <3,25> 

   [!A2]   EXTU    .S2     B16,24,24,B18     ; |Algoritmos.c:85| (E) <2,40> 
||         STB     .D2T2   B6,*+SP(9)        ; |Algoritmos.c:83| (E) <2,40> 
||         MPY     .M1X    B7,A22,A9         ; |Algoritmos.c:84| (E) <3,26> 
||         ADD     .L2X    B8,A5,B5          ; |Algoritmos.c:83| (E) <3,26> 
||         EXT     .S1     A3,15,16,A5       ; |Algoritmos.c:82| (E) <3,26> 

   [!A1]   EXTU    .S2     B4,24,24,B19      ; |Algoritmos.c:84| (E) <2,41> 
||         LDHU    .D2T1   *+SP(8),A5        ; |Algoritmos.c:88| (E) <2,41> 
||         ADD     .L2     B20,B5,B4         ; |Algoritmos.c:83| (E) <3,27> 
||         SHR     .S1     A3,1,A6           ; |Algoritmos.c:82| (E) <3,27> 
||         ADD     .L1     A5,A18,A3         ; |Algoritmos.c:85| (E) <3,27> 
||         ADD     .D1X    B8,A6,A7          ; |Algoritmos.c:83| (E) <3,27> 

           STB     .D2T2   B19,*+SP(10)      ; |Algoritmos.c:84| (E) <2,42> 
||         ADD     .L2X    A5,B21,B5         ; |Algoritmos.c:82| (E) <3,28> 
||         SHR     .S2     B4,3,B4           ; |Algoritmos.c:83| (E) <3,28> 
||         EXT     .S1     A7,13,16,A5       ; |Algoritmos.c:83| (E) <3,28> 

   [ A2]   EXTU    .S2     B9,24,24,B18      ; |Algoritmos.c:85| (E) <2,43> 
||         SUB     .L1     A18,A5,A17        ; |Algoritmos.c:86| (E) <3,29> 
||         EXT     .S1     A9,10,16,A16      ; |Algoritmos.c:84| (E) <3,29> 
||         CMPLT   .L2     B5,0,B6           ; |Algoritmos.c:82| (E) <3,29> 

           STB     .D2T1   A4,*+SP(13)       ; |Algoritmos.c:87| (E) <2,44> 
||         ADD     .S1     A6,A18,A6         ; |Algoritmos.c:85| (E) <3,30> 
||         CMPLT   .L1     A17,0,A7          ; |Algoritmos.c:86| (E) <3,30> 
||         ADD     .D1X    A6,B21,A4         ; |Algoritmos.c:82| (E) <3,30> 
||         XOR     .S2     1,B6,B8           ; |Algoritmos.c:82| (E) <3,30> 
||         CMPLT   .L2X    A3,0,B6           ; |Algoritmos.c:85| (E) <3,30> 

           STB     .D2T2   B18,*+SP(11)      ; |Algoritmos.c:85| (E) <2,45> 
||         ADD     .S1     A16,A18,A8        ; |Algoritmos.c:87| (E) <3,31> 
||         XOR     .D1     1,A7,A19          ; |Algoritmos.c:86| (E) <3,31> 
||         SUB     .L1X    A18,B4,A7         ; |Algoritmos.c:86| (E) <3,31> 
||         XOR     .S2     1,B6,B6           ; |Algoritmos.c:85| (E) <3,31> 
||         SUB     .L2X    B21,A5,B7         ; |Algoritmos.c:83| (E) <3,31> 

           SUB     .S2     B21,B4,B4         ; |Algoritmos.c:83| (E) <3,32> 
||         SHR     .S1     A9,6,A7           ; |Algoritmos.c:84| (E) <3,32> 
||         CMPLT   .L1     A8,0,A4           ; |Algoritmos.c:87| (E) <3,32> 
||         MPY     .M2X    B8,A4,B6          ; |Algoritmos.c:82| (E) <3,32> 
||         CMPLT   .L2     B7,0,B8           ; |Algoritmos.c:83| (E) <3,32> 
||         MPY     .M1     A19,A7,A9         ; |Algoritmos.c:86| (E) <3,32> 

           LDHU    .D2T2   *+SP(10),B5       ; |Algoritmos.c:89| (E) <2,47> 
||         ADD     .S1     A7,A18,A4         ; |Algoritmos.c:87| (E) <3,33> 
||         CMPGT   .L1     A17,A20,A1        ; |Algoritmos.c:86| (E) <3,33> 
||         XOR     .D1     1,A4,A6           ; |Algoritmos.c:87| (E) <3,33> 
||         CMPGT   .L2     B5,B9,B0          ; |Algoritmos.c:82| (E) <3,33> 
||         MPY     .M2X    B6,A6,B16         ; |Algoritmos.c:85| (E) <3,33> 
||         XOR     .S2     1,B8,B5           ; |Algoritmos.c:83| (E) <3,33> 

           LDHU    .D2T1   *+SP(12),A3       ; |Algoritmos.c:90| (E) <2,48> 
|| [ A1]   EXTU    .S1     A20,24,24,A3      ; |Algoritmos.c:86| (E) <3,34> 
|| [ B0]   EXTU    .S2     B9,24,24,B4       ; |Algoritmos.c:82| (E) <3,34> 
||         ADD     .L2X    A16,B21,B5        ; |Algoritmos.c:84| (E) <3,34> 
||         MPY     .M1     A6,A4,A5          ; |Algoritmos.c:87| (E) <3,34> 
||         MPY     .M2     B5,B4,B17         ; |Algoritmos.c:83| (E) <3,34> 
||         CMPGT   .L1     A3,A20,A2         ; |Algoritmos.c:85| (E) <3,34> 

           STH     .D1T1   A5,*++A23(6)      ; |Algoritmos.c:88| (E) <2,49> 
||         CMPLT   .L2     B5,0,B6           ; |Algoritmos.c:84| (E) <3,35> 
|| [!B0]   EXTU    .S2     B6,24,24,B4       ; |Algoritmos.c:82| (E) <3,35> 
||         CMPGT   .L1     A8,A20,A0         ; |Algoritmos.c:87| (E) <3,35> 

   [!A1]   EXTU    .S1     A9,24,24,A3       ; |Algoritmos.c:86| (E) <3,36> 
||         STB     .D2T2   B4,*+SP(8)        ; |Algoritmos.c:82| (E) <3,36> 
||         XOR     .L2     1,B6,B4           ; |Algoritmos.c:84| (E) <3,36> 
||         CMPGT   .L1X    B5,A20,A1         ; |Algoritmos.c:84| (E) <3,36> 

           STB     .D2T1   A3,*+SP(12)       ; |Algoritmos.c:86| (E) <3,37> 
|| [ A1]   EXTU    .S2     B9,24,24,B19      ; |Algoritmos.c:84| (E) <3,37> 
||         CMPGT   .L2     B7,B9,B0          ; |Algoritmos.c:83| (E) <3,37> 
|| [ A0]   EXTU    .S1     A20,24,24,A4      ; |Algoritmos.c:87| (E) <3,37> 

           STH     .D1T2   B5,*+A23(2)       ; |Algoritmos.c:89| (E) <2,52> 
|| [!A0]   EXTU    .S1     A5,24,24,A4       ; |Algoritmos.c:87| (E) <3,38> 
||         ADD     .L2X    A7,B21,B5         ; |Algoritmos.c:84| (E) <3,38> 
|| [ B0]   EXTU    .S2     B9,24,24,B6       ; |Algoritmos.c:83| (E) <3,38> 

           STH     .D1T1   A3,*+A23(4)       ; |Algoritmos.c:90| (E) <2,53> 
||         MPY     .M2     B4,B5,B4          ; |Algoritmos.c:84| (E) <3,39> 
|| [!B0]   EXTU    .S2     B17,24,24,B6      ; |Algoritmos.c:83| (E) <3,39> 

   [!A2]   EXTU    .S2     B16,24,24,B18     ; |Algoritmos.c:85| (E) <3,40> 
||         STB     .D2T2   B6,*+SP(9)        ; |Algoritmos.c:83| (E) <3,40> 

   [!A1]   EXTU    .S2     B4,24,24,B19      ; |Algoritmos.c:84| (E) <3,41> 
||         LDHU    .D2T1   *+SP(8),A3        ; |Algoritmos.c:88| (E) <3,41> 

           STB     .D2T2   B19,*+SP(10)      ; |Algoritmos.c:84| (E) <3,42> 
   [ A2]   EXTU    .S2     B9,24,24,B18      ; |Algoritmos.c:85| (E) <3,43> 
           STB     .D2T1   A4,*+SP(13)       ; |Algoritmos.c:87| (E) <3,44> 
           STB     .D2T2   B18,*+SP(11)      ; |Algoritmos.c:85| (E) <3,45> 
           NOP             1
           LDHU    .D2T2   *+SP(10),B4       ; |Algoritmos.c:89| (E) <3,47> 
$C$DW$18	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$18, DW_AT_low_pc(0x00)
	.dwattr $C$DW$18, DW_AT_TI_return

           RET     .S2     B3                ; |Algoritmos.c:92| 
||         LDHU    .D2T1   *+SP(12),A3       ; |Algoritmos.c:90| (E) <3,48> 

           STH     .D1T1   A3,*++A23(6)      ; |Algoritmos.c:88| (E) <3,49> 
           NOP             2

           STH     .D1T2   B4,*+A23(2)       ; |Algoritmos.c:89| (E) <3,52> 
||         RINT                              ; interrupts on

	.dwpsn	file "Algoritmos.c",line 92,column 1,is_stmt,isa 0

           ADDK    .S2     16,SP             ; |Algoritmos.c:92| 
||         STH     .D1T1   A3,*+A23(4)       ; |Algoritmos.c:90| (E) <3,53> 

           ; BRANCH OCCURS {B3}              ; |Algoritmos.c:92| 

$C$DW$19	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$19, DW_AT_name("/home/fernandofernandes/NetBeansProjects/C.03/DSP/CSequencial_DSP.03/Algoritmos.asm:$C$L5:1:1424287661")
	.dwattr $C$DW$19, DW_AT_TI_begin_file("Algoritmos.c")
	.dwattr $C$DW$19, DW_AT_TI_begin_line(0x45)
	.dwattr $C$DW$19, DW_AT_TI_end_line(0x5b)
$C$DW$20	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$20, DW_AT_low_pc($C$DW$L$_YUYVtoRGB$3$B)
	.dwattr $C$DW$20, DW_AT_high_pc($C$DW$L$_YUYVtoRGB$3$E)
	.dwendtag $C$DW$19

	.dwattr $C$DW$15, DW_AT_TI_end_file("Algoritmos.c")
	.dwattr $C$DW$15, DW_AT_TI_end_line(0x5c)
	.dwattr $C$DW$15, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$15

	.sect	".text"
	.clink
	.global	_NearestNeighbour

$C$DW$21	.dwtag  DW_TAG_subprogram, DW_AT_name("NearestNeighbour")
	.dwattr $C$DW$21, DW_AT_low_pc(_NearestNeighbour)
	.dwattr $C$DW$21, DW_AT_high_pc(0x00)
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("_NearestNeighbour")
	.dwattr $C$DW$21, DW_AT_external
	.dwattr $C$DW$21, DW_AT_TI_begin_file("Algoritmos.c")
	.dwattr $C$DW$21, DW_AT_TI_begin_line(0x5e)
	.dwattr $C$DW$21, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$21, DW_AT_TI_max_frame_size(0x00)
	.dwattr $C$DW$21, DW_AT_frame_base[DW_OP_breg31 0]
	.dwattr $C$DW$21, DW_AT_TI_skeletal
	.dwpsn	file "Algoritmos.c",line 95,column 63,is_stmt,address _NearestNeighbour,isa 0
$C$DW$22	.dwtag  DW_TAG_formal_parameter, DW_AT_name("subimage")
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("_subimage")
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$22, DW_AT_location[DW_OP_reg4]
$C$DW$23	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dest")
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("_dest")
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$23, DW_AT_location[DW_OP_reg20]
$C$DW$24	.dwtag  DW_TAG_formal_parameter, DW_AT_name("scale")
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("_scale")
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$24, DW_AT_location[DW_OP_reg6]

;******************************************************************************
;* FUNCTION NAME: NearestNeighbour                                            *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,A16,A17,A18,A19,A20,A21,B30,B31         *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,DP,SP,A16,A17,A18,A19,A20,A21,B30,B31   *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_NearestNeighbour:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 35
           MV      .L1X    B4,A9             ; |Algoritmos.c:95| 

           MV      .L1X    B3,A21            ; |Algoritmos.c:95| 
||         MV      .S1     A4,A8             ; |Algoritmos.c:95| 

$C$DW$25	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$25, DW_AT_low_pc(0x00)
	.dwattr $C$DW$25, DW_AT_name("__divu")
	.dwattr $C$DW$25, DW_AT_TI_call

           CALLP   .S2     __divu,B3
||         MVK     .S1     0x2d0,A4          ; |Algoritmos.c:101| 
||         MV      .L2X    A6,B4             ; |Algoritmos.c:101| 
||         MV      .L1     A6,A3             ; |Algoritmos.c:101| 
||         MV      .D1     A6,A7             ; |Algoritmos.c:95| 

$C$RL0:    ; CALL OCCURS {__divu} {0}        ; |Algoritmos.c:101| 
$C$DW$26	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$26, DW_AT_low_pc(0x00)
	.dwattr $C$DW$26, DW_AT_name("__divu")
	.dwattr $C$DW$26, DW_AT_TI_call

           CALLP   .S2     __divu,B3
||         MV      .L2X    A3,B4             ; |Algoritmos.c:101| 
||         MV      .L1     A4,A5             ; |Algoritmos.c:101| 
||         MVK     .S1     0x500,A4          ; |Algoritmos.c:101| 

$C$RL1:    ; CALL OCCURS {__divu} {0}        ; |Algoritmos.c:101| 
$C$DW$27	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$27, DW_AT_low_pc(0x00)
	.dwattr $C$DW$27, DW_AT_name("__divu")
	.dwattr $C$DW$27, DW_AT_TI_call

           CALLP   .S2     __divu,B3
||         MV      .L2X    A3,B4             ; |Algoritmos.c:104| 
||         MV      .L1     A4,A16            ; |Algoritmos.c:101| 
||         MVK     .S1     0x500,A4          ; |Algoritmos.c:104| 

$C$RL2:    ; CALL OCCURS {__divu} {0}        ; |Algoritmos.c:104| 
           SHRU    .S1     A5,1,A3           ; |Algoritmos.c:101| 
           MVK     .S2     360,B4            ; |Algoritmos.c:101| 

           SUB     .L2X    B4,A3,B4          ; |Algoritmos.c:101| 
||         MVK     .S2     1280,B5           ; |Algoritmos.c:101| 

           MPY     .M2     B4,B5,B4          ; |Algoritmos.c:101| 
||         MVK     .S2     640,B5            ; |Algoritmos.c:101| 
||         SHRU    .S1     A16,1,A3          ; |Algoritmos.c:101| 

           MV      .L1     A7,A0

           MV      .L1X    B5,A5             ; |Algoritmos.c:101| 
||         SUB     .L2X    B5,A3,B5          ; |Algoritmos.c:101| 
||         SHRU    .S1     A4,1,A3           ; |Algoritmos.c:104| 

           SUB     .L1     A5,A3,A4          ; |Algoritmos.c:104| 

           ADD     .L2     B4,B5,B5          ; |Algoritmos.c:101| 
||         MVK     .L1     3,A3              ; |Algoritmos.c:101| 

           ADD     .L2X    B4,A4,B4          ; |Algoritmos.c:104| 

           MPYLI   .M1X    A3,B5,A19:A18     ; |Algoritmos.c:101| 
||         MV      .L2X    A3,B5             ; |Algoritmos.c:101| 

           MPYLI   .M2     B5,B4,B5:B4       ; |Algoritmos.c:104| 
           MVK     .S2     0x500,B9          ; |Algoritmos.c:104| 
           ZERO    .L1     A17               ; |Algoritmos.c:106| 
   [ A0]   ADD     .L1     A18,A8,A3
	.dwpsn	file "Algoritmos.c",line 106,column 0,is_stmt,isa 0

           MVK     .S1     0xf00,A19
||         ZERO    .L1     A16               ; |Algoritmos.c:106| 
||         MVK     .L2     0x1,B7            ; |Algoritmos.c:103| 
||         ZERO    .S2     B6                ; |Algoritmos.c:107| 
||         MV      .D2     B4,B8             ; |Algoritmos.c:104| 

;** --------------------------------------------------------------------------*
;**   BEGIN LOOP $C$L7
;** --------------------------------------------------------------------------*
$C$L7:    
$C$DW$L$_NearestNeighbour$2$B:
;          EXCLUSIVE CPU CYCLES: 5
	.dwpsn	file "Algoritmos.c",line 107,column 0,is_stmt,isa 0
   [!A0]   BNOP    .S1     $C$L12,4          ; |Algoritmos.c:108| 
$C$DW$L$_NearestNeighbour$2$E:
;** --------------------------------------------------------------------------*
;**   BEGIN LOOP $C$L8
;** --------------------------------------------------------------------------*
$C$L8:    
$C$DW$L$_NearestNeighbour$3$B:
;          EXCLUSIVE CPU CYCLES: 1

   [ A0]   MVK     .L1     3,A4              ; |Algoritmos.c:112| 
|| [ A0]   LDBU    .D1T1   *+A3(2),A6

           ; BRANCHCC OCCURS {$C$L12}        ; |Algoritmos.c:108| 
$C$DW$L$_NearestNeighbour$3$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop found in file               : Algoritmos.c
;*      Loop source line                 : 108
;*      Loop opening brace source line   : 108
;*      Loop closing brace source line   : 113
;*      Known Minimum Trip Count         : 1                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 0
;*      Unpartitioned Resource Bound     : 2
;*      Partitioned Resource Bound(*)    : 2
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     0        0     
;*      .D units                     2*       1     
;*      .M units                     0        0     
;*      .X cross paths               0        0     
;*      .T address paths             2*       1     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          0        0     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             0        0     
;*      Bound(.L .S .D .LS .LSD)     1        1     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 2  Schedule found with 2 iterations in parallel
;*
;*      Register Usage Table:
;*          +-----------------------------------------------------------------+
;*          |AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA|BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB|
;*          |00000000001111111111222222222233|00000000001111111111222222222233|
;*          |01234567890123456789012345678901|01234567890123456789012345678901|
;*          |--------------------------------+--------------------------------|
;*       0: |   ****                         |    **                          |
;*       1: |   ****                         |    **                          |
;*          +-----------------------------------------------------------------+
;*
;*      Done
;*
;*      Loop will be splooped
;*      Collapsed epilog stages       : 0
;*      Collapsed prolog stages       : 0
;*      Minimum required memory pad   : 0 bytes
;*
;*      Minimum safe trip count       : 1
;*      Min. prof. trip count  (est.) : 2
;*
;*      Mem bank conflicts/iter(est.) : { min 0.969, est 0.969, max 0.969 }
;*      Mem bank perf. penalty (est.) : 32.6%
;*
;*      Effective ii                : 3.0
;*
;*
;*      Total cycles (est.)         : 2 + trip_cnt * 2        
;*----------------------------------------------------------------------------*
;*       SETUP CODE
;*
;*                  MV              A4,A3
;*                  ADD             5,A3,A3
;*                  MV              A4,B4
;*                  ADD             4,B4,B4
;*                  ADD             3,A4,A4
;*
;*        SINGLE SCHEDULED ITERATION
;*
;*        $C$C189:
;*   0              STB     .D1T1   A5,*A4++(3)       ; |Algoritmos.c:109| 
;*   1              STB     .D2T2   B5,*B4++(3)       ; |Algoritmos.c:110| 
;*     ||           STB     .D1T1   A6,*A3++(3)       ; |Algoritmos.c:111| 
;*     ||           SPBR            $C$C189
;*   2              NOP             2
;*   4              ; BRANCHCC OCCURS {$C$C189}       ; |Algoritmos.c:108| 
;*----------------------------------------------------------------------------*
$C$L9:    ; PIPED LOOP PROLOG
;          EXCLUSIVE CPU CYCLES: 7

           MVC     .S2X    A7,ILC
||         MPYLI   .M1     A4,A7,A5:A4       ; |Algoritmos.c:112| 
||         LDBU    .D1T1   *+A18[A8],A5

           LDBU    .D1T2   *+A3(1),B5
           NOP             1
           ADD     .L1     A16,A9,A20
	.dwpsn	file "Algoritmos.c",line 108,column 0,is_stmt,isa 0

           SPLOOP  2       ;4                ; (P) 
||         ADD     .L1     A4,A16,A16        ; |Algoritmos.c:112| 
||         MV      .S1     A20,A4

;** --------------------------------------------------------------------------*
$C$L10:    ; PIPED LOOP KERNEL
$C$DW$L$_NearestNeighbour$5$B:
;          EXCLUSIVE CPU CYCLES: 2

           SPMASK          L1,L2
||         ADD     .L1     2,A20,A3
||         ADD     .L2X    1,A20,B4
||         STB     .D1T1   A5,*A4++(3)       ; |Algoritmos.c:109| (P) <0,0> 

           SPMASK          L2
||         ADD     .L2X    A7,B6,B6          ; |Algoritmos.c:108| 
||         STB     .D2T2   B5,*B4++(3)       ; |Algoritmos.c:110| (P) <0,1> 
||         STB     .D1T1   A6,*A3++(3)       ; |Algoritmos.c:111| (P) <0,1> 

	.dwpsn	file "Algoritmos.c",line 113,column 0,is_stmt,isa 0
           SPKERNEL 0,0
$C$DW$L$_NearestNeighbour$5$E:
;** --------------------------------------------------------------------------*
$C$L11:    ; PIPED LOOP EPILOG
;          EXCLUSIVE CPU CYCLES: 1
           NOP             1
;** --------------------------------------------------------------------------*
$C$L12:    
$C$DW$L$_NearestNeighbour$7$B:
;          EXCLUSIVE CPU CYCLES: 7

           CMPLT   .L2     B6,B9,B0          ; |Algoritmos.c:107| 
||         ADD     .L1     3,A18,A18         ; |Algoritmos.c:114| 

   [!B0]   MVK     .L1     0x1,A0            ; nullify predicate
|| [ B0]   B       .S1     $C$L8             ; |Algoritmos.c:107| 

	.dwpsn	file "Algoritmos.c",line 115,column 0,is_stmt,isa 0

   [!A0]   BNOP    .S1     $C$L12,4          ; |Algoritmos.c:108| 
|| [ A0]   ADD     .L1     A18,A8,A3

           ; BRANCHCC OCCURS {$C$L8}         ; |Algoritmos.c:107| 
$C$DW$L$_NearestNeighbour$7$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_NearestNeighbour$8$B:
;          EXCLUSIVE CPU CYCLES: 8

           MPY     .M1     A17,A19,A16       ; |Algoritmos.c:116| 
||         ADD     .L1     1,A17,A17         ; |Algoritmos.c:106| 
||         MVK     .S1     720,A3            ; |Algoritmos.c:106| 
||         MV      .D1X    B8,A18            ; |Algoritmos.c:117| 
||         CMPEQ   .L2X    B7,A7,B0          ; |Algoritmos.c:118| 
||         ZERO    .S2     B6                ; |Algoritmos.c:107| 

           CMPLT   .L1     A17,A3,A0         ; |Algoritmos.c:106| 
|| [ B0]   ADD     .S1X    A19,B8,A18        ; |Algoritmos.c:119| 
|| [ B0]   ADDK    .S2     3840,B8           ; |Algoritmos.c:120| 
|| [!B0]   ADD     .L2     1,B7,B7           ; |Algoritmos.c:118| 
|| [ B0]   MVK     .D2     0x1,B7            ; |Algoritmos.c:121| 

   [ A0]   BNOP    .S1     $C$L7,4           ; |Algoritmos.c:106| 
||         MV      .L1     A7,A0

	.dwpsn	file "Algoritmos.c",line 123,column 0,is_stmt,isa 0
   [ A0]   ADD     .L1     A18,A8,A3
           ; BRANCHCC OCCURS {$C$L7}         ; |Algoritmos.c:106| 
$C$DW$L$_NearestNeighbour$8$E:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 6
	.dwpsn	file "Algoritmos.c",line 124,column 1,is_stmt,isa 0
$C$DW$28	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$28, DW_AT_low_pc(0x00)
	.dwattr $C$DW$28, DW_AT_TI_return
           RETNOP  .S2X    A21,5             ; |Algoritmos.c:124| 
           ; BRANCH OCCURS {A21}             ; |Algoritmos.c:124| 

$C$DW$29	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$29, DW_AT_name("/home/fernandofernandes/NetBeansProjects/C.03/DSP/CSequencial_DSP.03/Algoritmos.asm:$C$L7:1:1424287661")
	.dwattr $C$DW$29, DW_AT_TI_begin_file("Algoritmos.c")
	.dwattr $C$DW$29, DW_AT_TI_begin_line(0x6a)
	.dwattr $C$DW$29, DW_AT_TI_end_line(0x7b)
$C$DW$30	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$30, DW_AT_low_pc($C$DW$L$_NearestNeighbour$2$B)
	.dwattr $C$DW$30, DW_AT_high_pc($C$DW$L$_NearestNeighbour$2$E)
$C$DW$31	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$31, DW_AT_low_pc($C$DW$L$_NearestNeighbour$8$B)
	.dwattr $C$DW$31, DW_AT_high_pc($C$DW$L$_NearestNeighbour$8$E)

$C$DW$32	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$32, DW_AT_name("/home/fernandofernandes/NetBeansProjects/C.03/DSP/CSequencial_DSP.03/Algoritmos.asm:$C$L8:2:1424287661")
	.dwattr $C$DW$32, DW_AT_TI_begin_file("Algoritmos.c")
	.dwattr $C$DW$32, DW_AT_TI_begin_line(0x6b)
	.dwattr $C$DW$32, DW_AT_TI_end_line(0x73)
$C$DW$33	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$33, DW_AT_low_pc($C$DW$L$_NearestNeighbour$3$B)
	.dwattr $C$DW$33, DW_AT_high_pc($C$DW$L$_NearestNeighbour$3$E)
$C$DW$34	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$34, DW_AT_low_pc($C$DW$L$_NearestNeighbour$7$B)
	.dwattr $C$DW$34, DW_AT_high_pc($C$DW$L$_NearestNeighbour$7$E)

$C$DW$35	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$35, DW_AT_name("/home/fernandofernandes/NetBeansProjects/C.03/DSP/CSequencial_DSP.03/Algoritmos.asm:$C$L10:3:1424287661")
	.dwattr $C$DW$35, DW_AT_TI_begin_file("Algoritmos.c")
	.dwattr $C$DW$35, DW_AT_TI_begin_line(0x6c)
	.dwattr $C$DW$35, DW_AT_TI_end_line(0x71)
$C$DW$36	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$36, DW_AT_low_pc($C$DW$L$_NearestNeighbour$5$B)
	.dwattr $C$DW$36, DW_AT_high_pc($C$DW$L$_NearestNeighbour$5$E)
	.dwendtag $C$DW$35

	.dwendtag $C$DW$32

	.dwendtag $C$DW$29

	.dwattr $C$DW$21, DW_AT_TI_end_file("Algoritmos.c")
	.dwattr $C$DW$21, DW_AT_TI_end_line(0x7c)
	.dwattr $C$DW$21, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$21

	.sect	".text"
	.clink
	.global	_YUYVtoRGBPlusZoom

$C$DW$37	.dwtag  DW_TAG_subprogram, DW_AT_name("YUYVtoRGBPlusZoom")
	.dwattr $C$DW$37, DW_AT_low_pc(_YUYVtoRGBPlusZoom)
	.dwattr $C$DW$37, DW_AT_high_pc(0x00)
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("_YUYVtoRGBPlusZoom")
	.dwattr $C$DW$37, DW_AT_external
	.dwattr $C$DW$37, DW_AT_TI_begin_file("Algoritmos.c")
	.dwattr $C$DW$37, DW_AT_TI_begin_line(0x8c)
	.dwattr $C$DW$37, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$37, DW_AT_TI_max_frame_size(0x00)
	.dwattr $C$DW$37, DW_AT_frame_base[DW_OP_breg31 0]
	.dwattr $C$DW$37, DW_AT_TI_skeletal
	.dwpsn	file "Algoritmos.c",line 141,column 63,is_stmt,address _YUYVtoRGBPlusZoom,isa 0
$C$DW$38	.dwtag  DW_TAG_formal_parameter, DW_AT_name("subimage")
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("_subimage")
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$38, DW_AT_location[DW_OP_reg4]
$C$DW$39	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dest")
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("_dest")
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$39, DW_AT_location[DW_OP_reg20]
$C$DW$40	.dwtag  DW_TAG_formal_parameter, DW_AT_name("scale")
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("_scale")
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$40, DW_AT_location[DW_OP_reg6]

;******************************************************************************
;* FUNCTION NAME: YUYVtoRGBPlusZoom                                           *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,*
;*                           A26,A27,A28,B16,B17,B18,B19,B20,B21,B30,B31      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,DP,SP,A16,A17,A18,A19,A20,A21,A22,A23,  *
;*                           A24,A25,A26,A27,A28,B16,B17,B18,B19,B20,B21,B30, *
;*                           B31                                              *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_YUYVtoRGBPlusZoom:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 10
           MV      .L1X    B3,A28            ; |Algoritmos.c:141| 
$C$DW$41	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$41, DW_AT_low_pc(0x00)
	.dwattr $C$DW$41, DW_AT_name("_YUYVtoRGB")
	.dwattr $C$DW$41, DW_AT_TI_call

           CALLP   .S2     _YUYVtoRGB,B3
||         MV      .L1     A4,A25            ; |Algoritmos.c:141| 
||         MV      .S1X    B4,A26            ; |Algoritmos.c:141| 
||         MV      .D1     A6,A27            ; |Algoritmos.c:141| 

$C$RL3:    ; CALL OCCURS {_YUYVtoRGB} {0}    ; |Algoritmos.c:142| 
           MVKL    .S2     0x2a300,B4
           MVKH    .S2     0x2a300,B4
           SUB     .L2     B4,2,B4
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop found in file               : Algoritmos.c
;*      Loop source line                 : 129
;*      Loop opening brace source line   : 130
;*      Loop closing brace source line   : 130
;*      Loop Unroll Multiple             : 2x
;*      Known Minimum Trip Count         : 172800                    
;*      Known Maximum Trip Count         : 172800                    
;*      Known Max Trip Count Factor      : 172800
;*      Loop Carried Dependency Bound(^) : 0
;*      Unpartitioned Resource Bound     : 2
;*      Partitioned Resource Bound(*)    : 2
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     0        0     
;*      .D units                     2*       2*    
;*      .M units                     0        0     
;*      .X cross paths               0        0     
;*      .T address paths             2*       2*    
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          0        0     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             0        0     
;*      Bound(.L .S .D .LS .LSD)     1        1     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 2  Schedule found with 3 iterations in parallel
;*
;*      Register Usage Table:
;*          +-----------------------------------------------------------------+
;*          |AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA|BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB|
;*          |00000000001111111111222222222233|00000000001111111111222222222233|
;*          |01234567890123456789012345678901|01234567890123456789012345678901|
;*          |--------------------------------+--------------------------------|
;*       0: |   **                           |    **                          |
;*       1: |   ** **                        |    ****                        |
;*          +-----------------------------------------------------------------+
;*
;*      Done
;*
;*      Loop will be splooped
;*      Collapsed epilog stages       : 0
;*      Collapsed prolog stages       : 0
;*      Minimum required memory pad   : 0 bytes
;*
;*      For further improvement on this loop, try option -mh48
;*
;*      Minimum safe trip count       : 1 (after unrolling)
;*      Min. prof. trip count  (est.) : 2 (after unrolling)
;*
;*      Mem bank conflicts/iter(est.) : { min 0.000, est 0.000, max 0.000 }
;*      Mem bank perf. penalty (est.) : 0.0%
;*
;*
;*      Total cycles (est.)         : 4 + min_trip_cnt * 2 = 345604        
;*----------------------------------------------------------------------------*
;*       SETUP CODE
;*
;*                  MV              B5,A4
;*                  ADD             8,A4,A4
;*                  MV              B4,A3
;*                  ADD             8,A3,A3
;*
;*        SINGLE SCHEDULED ITERATION
;*
;*        $C$C229:
;*   0              LDDW    .D2T2   *B4++(16),B7:B6   ; |Algoritmos.c:130| 
;*     ||           LDDW    .D1T1   *A3++(16),A7:A6   ; |Algoritmos.c:130| 
;*   1              NOP             4
;*   5              STDW    .D2T2   B7:B6,*B5++(16)   ; |Algoritmos.c:130| 
;*     ||           STDW    .D1T1   A7:A6,*A4++(16)   ; |Algoritmos.c:130| 
;*     ||           SPBR            $C$C229
;*   6              ; BRANCHCC OCCURS {$C$C229}       ; |Algoritmos.c:129| 
;*----------------------------------------------------------------------------*
$C$L13:    ; PIPED LOOP PROLOG
;          EXCLUSIVE CPU CYCLES: 5
	.dwpsn	file "Algoritmos.c",line 129,column 0,is_stmt,isa 0

           SPLOOPD 2       ;6                ; (P) 
||         ADD     .L1     8,A26,A3
||         MVC     .S2     B4,ILC
||         MV      .L2X    A26,B4            ; |Algoritmos.c:141| 

;** --------------------------------------------------------------------------*
$C$L14:    ; PIPED LOOP KERNEL
$C$DW$L$_YUYVtoRGBPlusZoom$3$B:
	.dwpsn	file "Algoritmos.c",line 130,column 0,is_stmt,isa 0
;          EXCLUSIVE CPU CYCLES: 2

           LDDW    .D2T2   *B4++(16),B7:B6   ; |Algoritmos.c:130| (P) <0,0> 
||         LDDW    .D1T1   *A3++(16),A7:A6   ; |Algoritmos.c:130| (P) <0,0> 

           NOP             2

           SPMASK          L1,S1,L2
||         MV      .L2X    A25,B5            ; |Algoritmos.c:141| 
||         MV      .L1     A27,A5            ; |Algoritmos.c:141| 
||         ADD     .S1     8,A25,A4

           NOP             1

           SPKERNEL 0,0
||         STDW    .D2T2   B7:B6,*B5++(16)   ; |Algoritmos.c:130| <0,5> 
||         STDW    .D1T1   A7:A6,*A4++(16)   ; |Algoritmos.c:130| <0,5> 

$C$DW$L$_YUYVtoRGBPlusZoom$3$E:
;** --------------------------------------------------------------------------*
$C$L15:    ; PIPED LOOP EPILOG
;          EXCLUSIVE CPU CYCLES: 6
$C$DW$42	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$42, DW_AT_low_pc(0x00)
	.dwattr $C$DW$42, DW_AT_name("_NearestNeighbour")
	.dwattr $C$DW$42, DW_AT_TI_call
           CALL    .S2     _NearestNeighbour ; |Algoritmos.c:144| 

           MV      .L2X    A26,B4            ; |Algoritmos.c:144| 
||         ADDKPC  .S2     $C$RL4,B3,1       ; |Algoritmos.c:144| 

           MV      .L1     A5,A6             ; |Algoritmos.c:144| 
           MV      .L1     A25,A4            ; |Algoritmos.c:144| 
           NOP             1
$C$RL4:    ; CALL OCCURS {_NearestNeighbour} {0}  ; |Algoritmos.c:144| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 6
	.dwpsn	file "Algoritmos.c",line 145,column 1,is_stmt,isa 0
$C$DW$43	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$43, DW_AT_low_pc(0x00)
	.dwattr $C$DW$43, DW_AT_TI_return
           RETNOP  .S2X    A28,5             ; |Algoritmos.c:145| 
           ; BRANCH OCCURS {A28}             ; |Algoritmos.c:145| 

$C$DW$44	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$44, DW_AT_name("/home/fernandofernandes/NetBeansProjects/C.03/DSP/CSequencial_DSP.03/Algoritmos.asm:$C$L14:1:1424287661")
	.dwattr $C$DW$44, DW_AT_TI_begin_file("Algoritmos.c")
	.dwattr $C$DW$44, DW_AT_TI_begin_line(0x81)
	.dwattr $C$DW$44, DW_AT_TI_end_line(0x82)
$C$DW$45	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$45, DW_AT_low_pc($C$DW$L$_YUYVtoRGBPlusZoom$3$B)
	.dwattr $C$DW$45, DW_AT_high_pc($C$DW$L$_YUYVtoRGBPlusZoom$3$E)
	.dwendtag $C$DW$44

	.dwattr $C$DW$37, DW_AT_TI_end_file("Algoritmos.c")
	.dwattr $C$DW$37, DW_AT_TI_end_line(0x91)
	.dwattr $C$DW$37, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$37

	.sect	".text"
	.clink
	.global	_ImageThreshold

$C$DW$46	.dwtag  DW_TAG_subprogram, DW_AT_name("ImageThreshold")
	.dwattr $C$DW$46, DW_AT_low_pc(_ImageThreshold)
	.dwattr $C$DW$46, DW_AT_high_pc(0x00)
	.dwattr $C$DW$46, DW_AT_TI_symbol_name("_ImageThreshold")
	.dwattr $C$DW$46, DW_AT_external
	.dwattr $C$DW$46, DW_AT_TI_begin_file("Algoritmos.c")
	.dwattr $C$DW$46, DW_AT_TI_begin_line(0x20)
	.dwattr $C$DW$46, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$46, DW_AT_TI_max_frame_size(0x00)
	.dwattr $C$DW$46, DW_AT_frame_base[DW_OP_breg31 0]
	.dwattr $C$DW$46, DW_AT_TI_skeletal
	.dwpsn	file "Algoritmos.c",line 33,column 34,is_stmt,address _ImageThreshold,isa 0
$C$DW$47	.dwtag  DW_TAG_formal_parameter, DW_AT_name("subimage")
	.dwattr $C$DW$47, DW_AT_TI_symbol_name("_subimage")
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$47, DW_AT_location[DW_OP_reg4]
$C$DW$48	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dest")
	.dwattr $C$DW$48, DW_AT_TI_symbol_name("_dest")
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$48, DW_AT_location[DW_OP_reg20]
$C$DW$49	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cor")
	.dwattr $C$DW$49, DW_AT_TI_symbol_name("_cor")
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$49, DW_AT_location[DW_OP_reg6]

;******************************************************************************
;* FUNCTION NAME: ImageThreshold                                              *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B4,B5,B6,B7,B8,B9,A16, *
;*                           B16,B17,B18                                      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B3,B4,B5,B6,B7,B8,B9,  *
;*                           DP,SP,A16,B16,B17,B18                            *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_ImageThreshold:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 8

           MV      .L2X    A6,B9             ; |Algoritmos.c:33| 
||         MV      .L1     A4,A6             ; |Algoritmos.c:33| 

           LDBU    .D1T1   *+A6(2),A8        ; |Algoritmos.c:46| (P) <0,0> 
           LDBU    .D1T1   *A6++(8),A9       ; |Algoritmos.c:48| (P) <0,2> 
           MVK     .S1     0x80,A5
           LDBU    .D1T2   *-A6(4),B7        ; |Algoritmos.c:48| (P) <0,3> 
           MVKL    .S1     0x38400,A2
           CMPLT   .L1     A8,A5,A0          ; |Algoritmos.c:51| (P) <0,5> 

           MVD     .M1     A0,A0             ; |Algoritmos.c:51| (P) <0,6> Post-sched spill
||         LDBU    .D1T1   *-A6(2),A7        ; |Algoritmos.c:46| (P) <0,5> 
||         MVKH    .S1     0x38400,A2
||         DINT                              ; interrupts off
||         MV      .L2     B4,B8
||         ADD     .L1X    -8,B4,A3

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop found in file               : Algoritmos.c
;*      Loop source line                 : 39
;*      Loop opening brace source line   : 39
;*      Loop closing brace source line   : 54
;*      Loop Unroll Multiple             : 2x
;*      Known Minimum Trip Count         : 230400                    
;*      Known Maximum Trip Count         : 230400                    
;*      Known Max Trip Count Factor      : 230400
;*      Loop Carried Dependency Bound(^) : 4
;*      Unpartitioned Resource Bound     : 7
;*      Partitioned Resource Bound(*)    : 7
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     4        0     
;*      .S units                     1        0     
;*      .D units                     7*       7*    
;*      .M units                     0        0     
;*      .X cross paths               1        0     
;*      .T address paths             7*       7*    
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          0        8     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             3        0     
;*      Bound(.L .S .D .LS .LSD)     4        5     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 7  Schedule found with 3 iterations in parallel
;*
;*      Register Usage Table:
;*          +-----------------------------------------------------------------+
;*          |AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA|BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB|
;*          |00000000001111111111222222222233|00000000001111111111222222222233|
;*          |01234567890123456789012345678901|01234567890123456789012345678901|
;*          |--------------------------------+--------------------------------|
;*       0: |  ***** **                      |    ** ***      *               |
;*       1: |  ***** **                      |    ******      **              |
;*       2: |**********                      |    ******      **              |
;*       3: |******** *                      |    ******      ***             |
;*       4: |*********                       |    ******      **              |
;*       5: |*********                       |    ******      **              |
;*       6: |* ***** **                      |    ******      *               |
;*          +-----------------------------------------------------------------+
;*
;*      Done
;*
;*      Epilog not removed
;*      Collapsed epilog stages       : 0
;*
;*      Prolog not removed
;*      Collapsed prolog stages       : 0
;*
;*      Minimum required memory pad   : 0 bytes
;*
;*      For further improvement on this loop, try option -mh16
;*
;*      Minimum safe trip count       : 3 (after unrolling)
;*
;*
;*      Mem bank conflicts/iter(est.) : { min 0.000, est 0.750, max 6.000 }
;*      Mem bank perf. penalty (est.) : 9.7%
;*
;*      Effective ii                : { min 7.00, est 7.75, max 13.00 }
;*
;*
;*      Total cycles (est.)         : 8 + min_trip_cnt * 7 = 1612808        
;*----------------------------------------------------------------------------*
;*       SETUP CODE
;*
;*                  SUB             A2,1,A2
;*                  MV              A4,B5
;*                  MV              A3,B4
;*                  ADD             4,A3,A3
;*
;*        SINGLE SCHEDULED ITERATION
;*
;*        $C$C315:
;*   0              LDBU    .D1T1   *+A6(2),A8        ; |Algoritmos.c:46| 
;*   1              NOP             1
;*   2              LDBU    .D1T1   *A6++(8),A9       ; |Algoritmos.c:48| 
;*   3              LDBU    .D1T2   *-A6(4),B7        ; |Algoritmos.c:48| 
;*   4              NOP             1
;*   5              CMPLT   .L1     A8,A5,A0          ; |Algoritmos.c:51| 
;*     ||           LDBU    .D1T1   *-A6(2),A7        ; |Algoritmos.c:46| 
;*   6              NOP             2
;*   8              STH     .D2T1   A4,*++B4(12)      ; |Algoritmos.c:41|  ^ 
;*     ||           STH     .D1T2   B5,*++A3(12)      ; |Algoritmos.c:43| 
;*     ||           ADD     .S2     B16,B9,B17        ; |Algoritmos.c:52| 
;*     ||           ADD     .L2     B16,B9,B6         ; |Algoritmos.c:52| 
;*   9              STH     .D2T2   B5,*+B4(2)        ; |Algoritmos.c:42|  ^ 
;*     ||           CMPLT   .L1     A9,A5,A1          ; |Algoritmos.c:48| 
;*     ||           ADD     .S2     B8,B17,B6         ; |Algoritmos.c:52| 
;*     ||           ADD     .L2     B8,B6,B17         ; |Algoritmos.c:52| 
;*     ||   [ A2]   BDEC    .S1     $C$C315,A2        ; |Algoritmos.c:39| 
;*  10              ADD     .S2     B9,B16,B6         ; |Algoritmos.c:49| 
;*     ||   [!A0]   STB     .D2T1   A8,*+B6(3)        ; |Algoritmos.c:52|  ^ 
;*     ||           CMPLT   .L1X    B7,A5,A0          ; |Algoritmos.c:48| 
;*     ||           ADD     .L2     B9,B16,B18        ; |Algoritmos.c:49| 
;*  11      [!A1]   STB     .D2T1   A9,*+B6[B8]       ; |Algoritmos.c:49|  ^ 
;*     ||           STH     .D1T2   B5,*+A3(4)        ; |Algoritmos.c:42|  ^ 
;*     ||           ADD     .L2     B8,B18,B6         ; |Algoritmos.c:49| 
;*     ||           CMPLT   .L1     A7,A5,A1          ; |Algoritmos.c:51| 
;*  12              STH     .D2T2   B5,*+B4(10)       ; |Algoritmos.c:43|  ^ 
;*  13              STH     .D1T2   B5,*+A3(2)        ; |Algoritmos.c:41|  ^ 
;*     ||   [!A1]   STB     .D2T1   A7,*+B17(9)       ; |Algoritmos.c:52|  ^ 
;*  14      [!A0]   STB     .D2T2   B7,*+B6(6)        ; |Algoritmos.c:49|  ^ 
;*     ||           ADD     .L2     12,B16,B16        ; |Algoritmos.c:39| 
;*  15              ; BRANCHCC OCCURS {$C$C315}       ; |Algoritmos.c:39| 
;*----------------------------------------------------------------------------*
$C$L16:    ; PIPED LOOP PROLOG
;          EXCLUSIVE CPU CYCLES: 1
	.dwpsn	file "Algoritmos.c",line 39,column 0,is_stmt,isa 0

           ZERO    .L2     B16               ; |Algoritmos.c:35| 
||         ZERO    .S2     B5                ; |Algoritmos.c:35| 
||         SUB     .D2     B4,12,B4
||         SUB     .L1     A2,3,A2
||         ZERO    .S1     A4                ; |Algoritmos.c:35| 
||         LDBU    .D1T1   *+A6(2),A8        ; |Algoritmos.c:46| (P) <1,0> 

;** --------------------------------------------------------------------------*
$C$L17:    ; PIPED LOOP KERNEL
$C$DW$L$_ImageThreshold$3$B:
;          EXCLUSIVE CPU CYCLES: 7

           ADD     .L2     B16,B9,B6         ; |Algoritmos.c:52| <0,8> 
||         ADD     .S2     B16,B9,B17        ; |Algoritmos.c:52| <0,8> 
||         STH     .D1T2   B5,*++A3(12)      ; |Algoritmos.c:43| <0,8> 
||         STH     .D2T1   A4,*++B4(12)      ; |Algoritmos.c:41| <0,8>  ^ 

   [ A2]   BDEC    .S1     $C$L17,A2         ; |Algoritmos.c:39| <0,9> 
||         ADD     .L2     B8,B6,B17         ; |Algoritmos.c:52| <0,9> 
||         ADD     .S2     B8,B17,B6         ; |Algoritmos.c:52| <0,9> 
||         STH     .D2T2   B5,*+B4(2)        ; |Algoritmos.c:42| <0,9>  ^ 
||         CMPLT   .L1     A9,A5,A1          ; |Algoritmos.c:48| <0,9> 
||         LDBU    .D1T1   *A6++(8),A9       ; |Algoritmos.c:48| <1,2> 

           ADD     .L2     B9,B16,B18        ; |Algoritmos.c:49| <0,10> 
||         ADD     .S2     B9,B16,B6         ; |Algoritmos.c:49| <0,10> 
|| [!A0]   STB     .D2T1   A8,*+B6(3)        ; |Algoritmos.c:52| <0,10>  ^ 
||         CMPLT   .L1X    B7,A5,A0          ; |Algoritmos.c:48| <0,10> 
||         LDBU    .D1T2   *-A6(4),B7        ; |Algoritmos.c:48| <1,3> 

           ADD     .L2     B8,B18,B6         ; |Algoritmos.c:49| <0,11> 
||         CMPLT   .L1     A7,A5,A1          ; |Algoritmos.c:51| <0,11> 
||         STH     .D1T2   B5,*+A3(4)        ; |Algoritmos.c:42| <0,11>  ^ 
|| [!A1]   STB     .D2T1   A9,*+B6[B8]       ; |Algoritmos.c:49| <0,11>  ^ 

           ROTL    .M1     A0,0,A0           ; |Algoritmos.c:48| <0,12> Post-sched spill
||         STH     .D2T2   B5,*+B4(10)       ; |Algoritmos.c:43| <0,12>  ^ 
||         CMPLT   .L1     A8,A5,A0          ; |Algoritmos.c:51| <1,5> 
||         LDBU    .D1T1   *-A6(2),A7        ; |Algoritmos.c:46| <1,5> 

           STH     .D1T2   B5,*+A3(2)        ; |Algoritmos.c:41| <0,13>  ^ 
|| [!A1]   STB     .D2T1   A7,*+B17(9)       ; |Algoritmos.c:52| <0,13>  ^ 
||         MVD     .M1     A0,A0             ; |Algoritmos.c:51| <1,6> Post-sched spill

	.dwpsn	file "Algoritmos.c",line 54,column 0,is_stmt,isa 0

           ADD     .L2     12,B16,B16        ; |Algoritmos.c:39| <0,14> 
|| [!A0]   STB     .D2T2   B7,*+B6(6)        ; |Algoritmos.c:49| <0,14>  ^ 
||         LDBU    .D1T1   *+A6(2),A8        ; |Algoritmos.c:46| <2,0> 

$C$DW$L$_ImageThreshold$3$E:
;** --------------------------------------------------------------------------*
$C$L18:    ; PIPED LOOP EPILOG
;          EXCLUSIVE CPU CYCLES: 7

           ADD     .L2     B16,B9,B17        ; |Algoritmos.c:52| (E) <1,8> 
||         ADD     .S2     B16,B9,B6         ; |Algoritmos.c:52| (E) <1,8> 
||         STH     .D1T2   B5,*++A3(12)      ; |Algoritmos.c:43| (E) <1,8> 
||         STH     .D2T1   A4,*++B4(12)      ; |Algoritmos.c:41| (E) <1,8>  ^ 

           ADD     .L2     B8,B17,B17        ; |Algoritmos.c:52| (E) <1,9> 
||         ADD     .S2     B8,B6,B6          ; |Algoritmos.c:52| (E) <1,9> 
||         STH     .D2T2   B5,*+B4(2)        ; |Algoritmos.c:42| (E) <1,9>  ^ 
||         CMPLT   .L1     A9,A5,A1          ; |Algoritmos.c:48| (E) <1,9> 
||         LDBU    .D1T1   *A6++(8),A9       ; |Algoritmos.c:48| (E) <2,2> 

           ADD     .L2     B9,B16,B18        ; |Algoritmos.c:49| (E) <1,10> 
||         ADD     .S2     B9,B16,B6         ; |Algoritmos.c:49| (E) <1,10> 
|| [!A0]   STB     .D2T1   A8,*+B6(3)        ; |Algoritmos.c:52| (E) <1,10>  ^ 
||         CMPLT   .L1X    B7,A5,A16         ; |Algoritmos.c:48| (E) <1,10> 
||         LDBU    .D1T2   *-A6(4),B7        ; |Algoritmos.c:48| (E) <2,3> 

           ADD     .L2     B8,B18,B6         ; |Algoritmos.c:49| (E) <1,11> 
||         CMPLT   .L1     A7,A5,A1          ; |Algoritmos.c:51| (E) <1,11> 
||         STH     .D1T2   B5,*+A3(4)        ; |Algoritmos.c:42| (E) <1,11>  ^ 
|| [!A1]   STB     .D2T1   A9,*+B6[B8]       ; |Algoritmos.c:49| (E) <1,11>  ^ 

           ROTL    .M1     A16,0,A0          ; |Algoritmos.c:48| (E) <1,12> Post-sched spill
||         STH     .D2T2   B5,*+B4(10)       ; |Algoritmos.c:43| (E) <1,12>  ^ 
||         CMPLT   .L1     A8,A5,A6          ; |Algoritmos.c:51| (E) <2,5> 
||         LDBU    .D1T1   *-A6(2),A7        ; |Algoritmos.c:46| (E) <2,5> 

           STH     .D1T2   B5,*+A3(2)        ; |Algoritmos.c:41| (E) <1,13>  ^ 
|| [!A1]   STB     .D2T1   A7,*+B17(9)       ; |Algoritmos.c:52| (E) <1,13>  ^ 
||         MVD     .M1     A6,A0             ; |Algoritmos.c:51| (E) <2,6> Post-sched spill

           CMPLT   .L1     A9,A5,A1          ; |Algoritmos.c:48| (E) <2,9> 
||         ADD     .L2     12,B16,B18        ; |Algoritmos.c:39| (E) <1,14> 
|| [!A0]   STB     .D2T2   B7,*+B6(6)        ; |Algoritmos.c:49| (E) <1,14>  ^ 

;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 8

           ADD     .L2     B18,B9,B6         ; |Algoritmos.c:52| (E) <2,8> 
||         ADD     .S2     B18,B9,B17        ; |Algoritmos.c:52| (E) <2,8> 

           ADD     .L2     B8,B17,B6         ; |Algoritmos.c:52| (E) <2,9> 
||         ADD     .S2     B8,B6,B17         ; |Algoritmos.c:52| (E) <2,9> 
||         STH     .D1T2   B5,*++A3(12)      ; |Algoritmos.c:43| (E) <2,8> 
||         STH     .D2T1   A4,*++B4(12)      ; |Algoritmos.c:41| (E) <2,8>  ^ 

$C$DW$50	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$50, DW_AT_low_pc(0x00)
	.dwattr $C$DW$50, DW_AT_TI_return

           RET     .S2     B3                ; |Algoritmos.c:55| 
||         STH     .D2T2   B5,*+B4(2)        ; |Algoritmos.c:42| (E) <2,9>  ^ 

           ADD     .L2     B9,B18,B6         ; |Algoritmos.c:49| (E) <2,10> 
|| [!A0]   STB     .D2T1   A8,*+B6(3)        ; |Algoritmos.c:52| (E) <2,10>  ^ 

           STH     .D1T2   B5,*+A3(4)        ; |Algoritmos.c:42| (E) <2,11>  ^ 
|| [!A1]   STB     .D2T1   A9,*+B6[B8]       ; |Algoritmos.c:49| (E) <2,11>  ^ 

           STH     .D2T2   B5,*+B4(10)       ; |Algoritmos.c:43| (E) <2,12>  ^ 
||         CMPLT   .L1     A7,A5,A1          ; |Algoritmos.c:51| (E) <2,11> 
||         ADD     .L2     B9,B18,B16        ; |Algoritmos.c:49| (E) <2,10> 

           STH     .D1T2   B5,*+A3(2)        ; |Algoritmos.c:41| (E) <2,13>  ^ 
|| [!A1]   STB     .D2T1   A7,*+B17(9)       ; |Algoritmos.c:52| (E) <2,13>  ^ 
||         ADD     .L2     B8,B16,B6         ; |Algoritmos.c:49| (E) <2,11> 
||         CMPLT   .L1X    B7,A5,A0          ; |Algoritmos.c:48| (E) <2,10> 

	.dwpsn	file "Algoritmos.c",line 55,column 1,is_stmt,isa 0

   [!A0]   STB     .D2T2   B7,*+B6(6)        ; |Algoritmos.c:49| (E) <2,14>  ^ 
||         RINT                              ; interrupts on

           ; BRANCH OCCURS {B3}              ; |Algoritmos.c:55| 

$C$DW$51	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$51, DW_AT_name("/home/fernandofernandes/NetBeansProjects/C.03/DSP/CSequencial_DSP.03/Algoritmos.asm:$C$L17:1:1424287661")
	.dwattr $C$DW$51, DW_AT_TI_begin_file("Algoritmos.c")
	.dwattr $C$DW$51, DW_AT_TI_begin_line(0x27)
	.dwattr $C$DW$51, DW_AT_TI_end_line(0x36)
$C$DW$52	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$52, DW_AT_low_pc($C$DW$L$_ImageThreshold$3$B)
	.dwattr $C$DW$52, DW_AT_high_pc($C$DW$L$_ImageThreshold$3$E)
	.dwendtag $C$DW$51

	.dwattr $C$DW$46, DW_AT_TI_end_file("Algoritmos.c")
	.dwattr $C$DW$46, DW_AT_TI_end_line(0x37)
	.dwattr $C$DW$46, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$46

	.sect	".text"
	.clink
	.global	_ImageThresholdPlusZoom

$C$DW$53	.dwtag  DW_TAG_subprogram, DW_AT_name("ImageThresholdPlusZoom")
	.dwattr $C$DW$53, DW_AT_low_pc(_ImageThresholdPlusZoom)
	.dwattr $C$DW$53, DW_AT_high_pc(0x00)
	.dwattr $C$DW$53, DW_AT_TI_symbol_name("_ImageThresholdPlusZoom")
	.dwattr $C$DW$53, DW_AT_external
	.dwattr $C$DW$53, DW_AT_TI_begin_file("Algoritmos.c")
	.dwattr $C$DW$53, DW_AT_TI_begin_line(0x85)
	.dwattr $C$DW$53, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$53, DW_AT_TI_max_frame_size(0x00)
	.dwattr $C$DW$53, DW_AT_frame_base[DW_OP_breg31 0]
	.dwattr $C$DW$53, DW_AT_TI_skeletal
	.dwpsn	file "Algoritmos.c",line 134,column 88,is_stmt,address _ImageThresholdPlusZoom,isa 0
$C$DW$54	.dwtag  DW_TAG_formal_parameter, DW_AT_name("subimage")
	.dwattr $C$DW$54, DW_AT_TI_symbol_name("_subimage")
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$54, DW_AT_location[DW_OP_reg4]
$C$DW$55	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dest")
	.dwattr $C$DW$55, DW_AT_TI_symbol_name("_dest")
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$55, DW_AT_location[DW_OP_reg20]
$C$DW$56	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cor")
	.dwattr $C$DW$56, DW_AT_TI_symbol_name("_cor")
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$56, DW_AT_location[DW_OP_reg6]
$C$DW$57	.dwtag  DW_TAG_formal_parameter, DW_AT_name("scale")
	.dwattr $C$DW$57, DW_AT_TI_symbol_name("_scale")
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$57, DW_AT_location[DW_OP_reg22]

;******************************************************************************
;* FUNCTION NAME: ImageThresholdPlusZoom                                      *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,A16,A17,A18,A19,A20,A21,A22,B16,B17,B18,*
;*                           B29,B30,B31                                      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,DP,SP,A16,A17,A18,A19,A20,A21,A22,B16,  *
;*                           B17,B18,B29,B30,B31                              *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_ImageThresholdPlusZoom:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 8

           MV      .L2X    A6,B8             ; |Algoritmos.c:134| 
||         MV      .L1     A4,A6             ; |Algoritmos.c:134| 

           LDBU    .D1T1   *+A6(2),A8        ; |Algoritmos.c:46| (P) <0,0> 
           MV      .L1X    B6,A17            ; |Algoritmos.c:134| 
           MVK     .S1     0x80,A5
           MV      .L1X    B3,A22            ; |Algoritmos.c:134| 

           LDBU    .D1T1   *A6++(8),A9       ; |Algoritmos.c:48| (P) <0,2> 
||         MVKL    .S1     0x38400,A2
||         MV      .L1X    B4,A16            ; |Algoritmos.c:134| 

           CMPLT   .L1     A8,A5,A3          ; |Algoritmos.c:51| (P) <0,5> 
||         LDBU    .D1T2   *-A6(4),B7        ; |Algoritmos.c:48| (P) <0,3> 
||         MV      .S1     A4,A18            ; |Algoritmos.c:134| 

           MVD     .M1     A3,A0             ; |Algoritmos.c:51| (P) <0,6> Post-sched spill
||         ADD     .L1X    -8,B4,A3
||         LDBU    .D1T1   *-A6(2),A7        ; |Algoritmos.c:46| (P) <0,5> 
||         MVKH    .S1     0x38400,A2
||         DINT                              ; interrupts off
||         ZERO    .L2     B5                ; |Algoritmos.c:35| 

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop found in file               : Algoritmos.c
;*      Loop source line                 : 39
;*      Loop opening brace source line   : 39
;*      Loop closing brace source line   : 54
;*      Loop Unroll Multiple             : 2x
;*      Known Minimum Trip Count         : 230400                    
;*      Known Maximum Trip Count         : 230400                    
;*      Known Max Trip Count Factor      : 230400
;*      Loop Carried Dependency Bound(^) : 4
;*      Unpartitioned Resource Bound     : 7
;*      Partitioned Resource Bound(*)    : 7
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     4        0     
;*      .S units                     1        0     
;*      .D units                     7*       7*    
;*      .M units                     0        0     
;*      .X cross paths               1        0     
;*      .T address paths             7*       7*    
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          0        8     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             3        0     
;*      Bound(.L .S .D .LS .LSD)     4        5     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 7  Schedule found with 3 iterations in parallel
;*
;*      Register Usage Table:
;*          +-----------------------------------------------------------------+
;*          |AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA|BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB|
;*          |00000000001111111111222222222233|00000000001111111111222222222233|
;*          |01234567890123456789012345678901|01234567890123456789012345678901|
;*          |--------------------------------+--------------------------------|
;*       0: |  ***** **                      |    ** ***      *               |
;*       1: |  ***** **                      |    ******      **              |
;*       2: |**********                      |    ******      **              |
;*       3: |******** *                      |    ******      ***             |
;*       4: |*********                       |    ******      **              |
;*       5: |*********                       |    ******      **              |
;*       6: |* ***** **                      |    ******      *               |
;*          +-----------------------------------------------------------------+
;*
;*      Done
;*
;*      Epilog not removed
;*      Collapsed epilog stages       : 0
;*
;*      Prolog not removed
;*      Collapsed prolog stages       : 0
;*
;*      Minimum required memory pad   : 0 bytes
;*
;*      For further improvement on this loop, try option -mh16
;*
;*      Minimum safe trip count       : 3 (after unrolling)
;*
;*
;*      Mem bank conflicts/iter(est.) : { min 0.000, est 0.750, max 6.000 }
;*      Mem bank perf. penalty (est.) : 9.7%
;*
;*      Effective ii                : { min 7.00, est 7.75, max 13.00 }
;*
;*
;*      Total cycles (est.)         : 8 + min_trip_cnt * 7 = 1612808        
;*----------------------------------------------------------------------------*
;*       SETUP CODE
;*
;*                  SUB             A2,1,A2
;*                  MV              A4,B5
;*                  MV              A3,B4
;*                  ADD             4,A3,A3
;*
;*        SINGLE SCHEDULED ITERATION
;*
;*        $C$C423:
;*   0              LDBU    .D1T1   *+A6(2),A8        ; |Algoritmos.c:46| 
;*   1              NOP             1
;*   2              LDBU    .D1T1   *A6++(8),A9       ; |Algoritmos.c:48| 
;*   3              LDBU    .D1T2   *-A6(4),B7        ; |Algoritmos.c:48| 
;*   4              NOP             1
;*   5              CMPLT   .L1     A8,A5,A0          ; |Algoritmos.c:51| 
;*     ||           LDBU    .D1T1   *-A6(2),A7        ; |Algoritmos.c:46| 
;*   6              NOP             2
;*   8              STH     .D2T1   A4,*++B4(12)      ; |Algoritmos.c:41|  ^ 
;*     ||           STH     .D1T2   B5,*++A3(12)      ; |Algoritmos.c:43| 
;*     ||           ADD     .S2     B9,B8,B17         ; |Algoritmos.c:52| 
;*     ||           ADD     .L2     B9,B8,B6          ; |Algoritmos.c:52| 
;*   9              STH     .D2T2   B5,*+B4(2)        ; |Algoritmos.c:42|  ^ 
;*     ||           CMPLT   .L1     A9,A5,A1          ; |Algoritmos.c:48| 
;*     ||           ADD     .S2     B16,B17,B6        ; |Algoritmos.c:52| 
;*     ||           ADD     .L2     B16,B6,B17        ; |Algoritmos.c:52| 
;*     ||   [ A2]   BDEC    .S1     $C$C423,A2        ; |Algoritmos.c:39| 
;*  10              ADD     .S2     B8,B9,B6          ; |Algoritmos.c:49| 
;*     ||   [!A0]   STB     .D2T1   A8,*+B6(3)        ; |Algoritmos.c:52|  ^ 
;*     ||           CMPLT   .L1X    B7,A5,A0          ; |Algoritmos.c:48| 
;*     ||           ADD     .L2     B8,B9,B18         ; |Algoritmos.c:49| 
;*  11      [!A1]   STB     .D2T1   A9,*+B6[B16]      ; |Algoritmos.c:49|  ^ 
;*     ||           STH     .D1T2   B5,*+A3(4)        ; |Algoritmos.c:42|  ^ 
;*     ||           ADD     .L2     B16,B18,B6        ; |Algoritmos.c:49| 
;*     ||           CMPLT   .L1     A7,A5,A1          ; |Algoritmos.c:51| 
;*  12              STH     .D2T2   B5,*+B4(10)       ; |Algoritmos.c:43|  ^ 
;*  13              STH     .D1T2   B5,*+A3(2)        ; |Algoritmos.c:41|  ^ 
;*     ||   [!A1]   STB     .D2T1   A7,*+B17(9)       ; |Algoritmos.c:52|  ^ 
;*  14      [!A0]   STB     .D2T2   B7,*+B6(6)        ; |Algoritmos.c:49|  ^ 
;*     ||           ADD     .L2     12,B9,B9          ; |Algoritmos.c:39| 
;*  15              ; BRANCHCC OCCURS {$C$C423}       ; |Algoritmos.c:39| 
;*----------------------------------------------------------------------------*
$C$L19:    ; PIPED LOOP PROLOG
;          EXCLUSIVE CPU CYCLES: 1
	.dwpsn	file "Algoritmos.c",line 39,column 0,is_stmt,isa 0

           MV      .L2     B4,B16
||         ZERO    .S2     B9                ; |Algoritmos.c:35| 
||         SUB     .D2     B4,12,B4
||         SUB     .L1     A2,3,A2
||         ZERO    .S1     A4                ; |Algoritmos.c:35| 
||         LDBU    .D1T1   *+A6(2),A8        ; |Algoritmos.c:46| (P) <1,0> 

;** --------------------------------------------------------------------------*
$C$L20:    ; PIPED LOOP KERNEL
$C$DW$L$_ImageThresholdPlusZoom$3$B:
;          EXCLUSIVE CPU CYCLES: 7

           ADD     .L2     B9,B8,B6          ; |Algoritmos.c:52| <0,8> 
||         ADD     .S2     B9,B8,B17         ; |Algoritmos.c:52| <0,8> 
||         STH     .D1T2   B5,*++A3(12)      ; |Algoritmos.c:43| <0,8> 
||         STH     .D2T1   A4,*++B4(12)      ; |Algoritmos.c:41| <0,8>  ^ 

   [ A2]   BDEC    .S1     $C$L20,A2         ; |Algoritmos.c:39| <0,9> 
||         ADD     .L2     B16,B6,B17        ; |Algoritmos.c:52| <0,9> 
||         ADD     .S2     B16,B17,B6        ; |Algoritmos.c:52| <0,9> 
||         STH     .D2T2   B5,*+B4(2)        ; |Algoritmos.c:42| <0,9>  ^ 
||         CMPLT   .L1     A9,A5,A1          ; |Algoritmos.c:48| <0,9> 
||         LDBU    .D1T1   *A6++(8),A9       ; |Algoritmos.c:48| <1,2> 

           ADD     .L2     B8,B9,B18         ; |Algoritmos.c:49| <0,10> 
||         ADD     .S2     B8,B9,B6          ; |Algoritmos.c:49| <0,10> 
|| [!A0]   STB     .D2T1   A8,*+B6(3)        ; |Algoritmos.c:52| <0,10>  ^ 
||         CMPLT   .L1X    B7,A5,A0          ; |Algoritmos.c:48| <0,10> 
||         LDBU    .D1T2   *-A6(4),B7        ; |Algoritmos.c:48| <1,3> 

           ADD     .L2     B16,B18,B6        ; |Algoritmos.c:49| <0,11> 
||         CMPLT   .L1     A7,A5,A1          ; |Algoritmos.c:51| <0,11> 
||         STH     .D1T2   B5,*+A3(4)        ; |Algoritmos.c:42| <0,11>  ^ 
|| [!A1]   STB     .D2T1   A9,*+B6[B16]      ; |Algoritmos.c:49| <0,11>  ^ 

           ROTL    .M1     A0,0,A0           ; |Algoritmos.c:48| <0,12> Post-sched spill
||         STH     .D2T2   B5,*+B4(10)       ; |Algoritmos.c:43| <0,12>  ^ 
||         CMPLT   .L1     A8,A5,A0          ; |Algoritmos.c:51| <1,5> 
||         LDBU    .D1T1   *-A6(2),A7        ; |Algoritmos.c:46| <1,5> 

           STH     .D1T2   B5,*+A3(2)        ; |Algoritmos.c:41| <0,13>  ^ 
|| [!A1]   STB     .D2T1   A7,*+B17(9)       ; |Algoritmos.c:52| <0,13>  ^ 
||         MVD     .M1     A0,A0             ; |Algoritmos.c:51| <1,6> Post-sched spill

	.dwpsn	file "Algoritmos.c",line 54,column 0,is_stmt,isa 0

           ADD     .L2     12,B9,B9          ; |Algoritmos.c:39| <0,14> 
|| [!A0]   STB     .D2T2   B7,*+B6(6)        ; |Algoritmos.c:49| <0,14>  ^ 
||         LDBU    .D1T1   *+A6(2),A8        ; |Algoritmos.c:46| <2,0> 

$C$DW$L$_ImageThresholdPlusZoom$3$E:
;** --------------------------------------------------------------------------*
$C$L21:    ; PIPED LOOP EPILOG
;          EXCLUSIVE CPU CYCLES: 7

           ADD     .L2     B9,B8,B17         ; |Algoritmos.c:52| (E) <1,8> 
||         ADD     .S2     B9,B8,B6          ; |Algoritmos.c:52| (E) <1,8> 
||         STH     .D1T2   B5,*++A3(12)      ; |Algoritmos.c:43| (E) <1,8> 
||         STH     .D2T1   A4,*++B4(12)      ; |Algoritmos.c:41| (E) <1,8>  ^ 

           ADD     .L2     B16,B17,B17       ; |Algoritmos.c:52| (E) <1,9> 
||         ADD     .S2     B16,B6,B6         ; |Algoritmos.c:52| (E) <1,9> 
||         STH     .D2T2   B5,*+B4(2)        ; |Algoritmos.c:42| (E) <1,9>  ^ 
||         CMPLT   .L1     A9,A5,A1          ; |Algoritmos.c:48| (E) <1,9> 
||         LDBU    .D1T1   *A6++(8),A9       ; |Algoritmos.c:48| (E) <2,2> 

           ADD     .L2     B8,B9,B18         ; |Algoritmos.c:49| (E) <1,10> 
||         ADD     .S2     B8,B9,B6          ; |Algoritmos.c:49| (E) <1,10> 
|| [!A0]   STB     .D2T1   A8,*+B6(3)        ; |Algoritmos.c:52| (E) <1,10>  ^ 
||         CMPLT   .L1X    B7,A5,A19         ; |Algoritmos.c:48| (E) <1,10> 
||         LDBU    .D1T2   *-A6(4),B7        ; |Algoritmos.c:48| (E) <2,3> 

           MVKL    .S2     0x2a300,B29
||         ADD     .L2     B16,B18,B6        ; |Algoritmos.c:49| (E) <1,11> 
||         CMPLT   .L1     A7,A5,A1          ; |Algoritmos.c:51| (E) <1,11> 
||         STH     .D1T2   B5,*+A3(4)        ; |Algoritmos.c:42| (E) <1,11>  ^ 
|| [!A1]   STB     .D2T1   A9,*+B6[B16]      ; |Algoritmos.c:49| (E) <1,11>  ^ 

           MVKH    .S2     0x2a300,B29
||         ROTL    .M1     A19,0,A0          ; |Algoritmos.c:48| (E) <1,12> Post-sched spill
||         STH     .D2T2   B5,*+B4(10)       ; |Algoritmos.c:43| (E) <1,12>  ^ 
||         CMPLT   .L1     A8,A5,A6          ; |Algoritmos.c:51| (E) <2,5> 
||         LDBU    .D1T1   *-A6(2),A7        ; |Algoritmos.c:46| (E) <2,5> 

           STH     .D1T2   B5,*+A3(2)        ; |Algoritmos.c:41| (E) <1,13>  ^ 
|| [!A1]   STB     .D2T1   A7,*+B17(9)       ; |Algoritmos.c:52| (E) <1,13>  ^ 
||         MVD     .M1     A6,A0             ; |Algoritmos.c:51| (E) <2,6> Post-sched spill

           CMPLT   .L1     A9,A5,A1          ; |Algoritmos.c:48| (E) <2,9> 
||         ADD     .L2     12,B9,B17         ; |Algoritmos.c:39| (E) <1,14> 
|| [!A0]   STB     .D2T2   B7,*+B6(6)        ; |Algoritmos.c:49| (E) <1,14>  ^ 

;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 6

           STH     .D2T1   A4,*++B4(12)      ; |Algoritmos.c:41| (E) <2,8>  ^ 
||         STH     .D1T2   B5,*++A3(12)      ; |Algoritmos.c:43| (E) <2,8> 
||         ADD     .L2     B17,B8,B6         ; |Algoritmos.c:52| (E) <2,8> 

           STH     .D2T2   B5,*+B4(2)        ; |Algoritmos.c:42| (E) <2,9>  ^ 
||         ADD     .L2     B16,B6,B6         ; |Algoritmos.c:52| (E) <2,9> 

   [!A0]   STB     .D2T1   A8,*+B6(3)        ; |Algoritmos.c:52| (E) <2,10>  ^ 
||         ADD     .L2     B8,B17,B31        ; |Algoritmos.c:49| (E) <2,10> 

           STH     .D1T2   B5,*+A3(4)        ; |Algoritmos.c:42| (E) <2,11>  ^ 
|| [!A1]   STB     .D2T1   A9,*+B31[B16]     ; |Algoritmos.c:49| (E) <2,11>  ^ 
||         RINT                              ; interrupts on
||         ADD     .L2     B17,B8,B9         ; |Algoritmos.c:52| (E) <2,8> 

           STH     .D2T2   B5,*+B4(10)       ; |Algoritmos.c:43| (E) <2,12>  ^ 
||         ADD     .L2     B16,B9,B17        ; |Algoritmos.c:52| (E) <2,9> 
||         ADD     .S2     B8,B17,B6         ; |Algoritmos.c:49| (E) <2,10> 
||         CMPLT   .L1     A7,A5,A0          ; |Algoritmos.c:51| (E) <2,11> 

   [!A0]   STB     .D2T1   A7,*+B17(9)       ; |Algoritmos.c:52| (E) <2,13>  ^ 
||         STH     .D1T2   B5,*+A3(2)        ; |Algoritmos.c:41| (E) <2,13>  ^ 
||         SUB     .L2     B29,2,B4
||         ADD     .S2     B16,B6,B30        ; |Algoritmos.c:49| (E) <2,11> 
||         CMPLT   .L1X    B7,A5,A2          ; |Algoritmos.c:48| (E) <2,10> 

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop found in file               : Algoritmos.c
;*      Loop source line                 : 129
;*      Loop opening brace source line   : 130
;*      Loop closing brace source line   : 130
;*      Loop Unroll Multiple             : 2x
;*      Known Minimum Trip Count         : 172800                    
;*      Known Maximum Trip Count         : 172800                    
;*      Known Max Trip Count Factor      : 172800
;*      Loop Carried Dependency Bound(^) : 0
;*      Unpartitioned Resource Bound     : 2
;*      Partitioned Resource Bound(*)    : 2
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     0        0     
;*      .D units                     2*       2*    
;*      .M units                     0        0     
;*      .X cross paths               0        0     
;*      .T address paths             2*       2*    
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          0        0     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             0        0     
;*      Bound(.L .S .D .LS .LSD)     1        1     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 2  Schedule found with 3 iterations in parallel
;*
;*      Register Usage Table:
;*          +-----------------------------------------------------------------+
;*          |AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA|BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB|
;*          |00000000001111111111222222222233|00000000001111111111222222222233|
;*          |01234567890123456789012345678901|01234567890123456789012345678901|
;*          |--------------------------------+--------------------------------|
;*       0: |   **                           |    **                          |
;*       1: |   ** **                        |    ****                        |
;*          +-----------------------------------------------------------------+
;*
;*      Done
;*
;*      Loop will be splooped
;*      Collapsed epilog stages       : 0
;*      Collapsed prolog stages       : 0
;*      Minimum required memory pad   : 0 bytes
;*
;*      For further improvement on this loop, try option -mh32
;*
;*      Minimum safe trip count       : 1 (after unrolling)
;*      Min. prof. trip count  (est.) : 2 (after unrolling)
;*
;*      Mem bank conflicts/iter(est.) : { min 0.000, est 0.000, max 0.000 }
;*      Mem bank perf. penalty (est.) : 0.0%
;*
;*
;*      Total cycles (est.)         : 4 + min_trip_cnt * 2 = 345604        
;*----------------------------------------------------------------------------*
;*       SETUP CODE
;*
;*                  MV              B5,A4
;*                  ADD             8,A4,A4
;*                  MV              B4,A3
;*                  ADD             8,A3,A3
;*
;*        SINGLE SCHEDULED ITERATION
;*
;*        $C$C354:
;*   0              LDDW    .D2T2   *B5++(16),B7:B6   ; |Algoritmos.c:130| 
;*     ||           LDDW    .D1T1   *A4++(16),A7:A6   ; |Algoritmos.c:130| 
;*   1              NOP             4
;*   5              STDW    .D2T2   B7:B6,*B4++(16)   ; |Algoritmos.c:130| 
;*     ||           STDW    .D1T1   A7:A6,*A3++(16)   ; |Algoritmos.c:130| 
;*     ||           SPBR            $C$C354
;*   6              ; BRANCHCC OCCURS {$C$C354}       ; |Algoritmos.c:129| 
;*----------------------------------------------------------------------------*
$C$L22:    ; PIPED LOOP PROLOG
;          EXCLUSIVE CPU CYCLES: 5
	.dwpsn	file "Algoritmos.c",line 129,column 0,is_stmt,isa 0

           SPLOOPD 2       ;6                ; (P) 
||         ADD     .L1     8,A16,A4
||         MVC     .S2     B4,ILC
||         MV      .L2X    A16,B5            ; |Algoritmos.c:136| 
|| [!A2]   STB     .D2T2   B7,*+B30(6)       ; |Algoritmos.c:49| (E) <2,14>  ^ 

;** --------------------------------------------------------------------------*
$C$L23:    ; PIPED LOOP KERNEL
$C$DW$L$_ImageThresholdPlusZoom$7$B:
	.dwpsn	file "Algoritmos.c",line 130,column 0,is_stmt,isa 0
;          EXCLUSIVE CPU CYCLES: 2

           LDDW    .D2T2   *B5++(16),B7:B6   ; |Algoritmos.c:130| (P) <0,0> 
||         LDDW    .D1T1   *A4++(16),A7:A6   ; |Algoritmos.c:130| (P) <0,0> 

           NOP             2

           SPMASK          L1,L2
||         MV      .L2X    A18,B4            ; |Algoritmos.c:136| 
||         ADD     .L1     8,A18,A3

           NOP             1

           SPKERNEL 0,0
||         STDW    .D2T2   B7:B6,*B4++(16)   ; |Algoritmos.c:130| <0,5> 
||         STDW    .D1T1   A7:A6,*A3++(16)   ; |Algoritmos.c:130| <0,5> 

$C$DW$L$_ImageThresholdPlusZoom$7$E:
;** --------------------------------------------------------------------------*
$C$L24:    ; PIPED LOOP EPILOG
;          EXCLUSIVE CPU CYCLES: 6
$C$DW$58	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$58, DW_AT_low_pc(0x04)
	.dwattr $C$DW$58, DW_AT_name("_NearestNeighbour")
	.dwattr $C$DW$58, DW_AT_TI_call

           MV      .L1     A18,A4            ; |Algoritmos.c:137| 
||         CALL    .S2     _NearestNeighbour ; |Algoritmos.c:137| 

           ADDKPC  .S2     $C$RL5,B3,1       ; |Algoritmos.c:137| 
           MV      .L1     A17,A6            ; |Algoritmos.c:137| 
           MV      .L2X    A16,B4            ; |Algoritmos.c:137| 
           NOP             1
$C$RL5:    ; CALL OCCURS {_NearestNeighbour} {0}  ; |Algoritmos.c:137| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 6
	.dwpsn	file "Algoritmos.c",line 138,column 1,is_stmt,isa 0
$C$DW$59	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$59, DW_AT_low_pc(0x00)
	.dwattr $C$DW$59, DW_AT_TI_return
           RETNOP  .S2X    A22,5             ; |Algoritmos.c:138| 
           ; BRANCH OCCURS {A22}             ; |Algoritmos.c:138| 

$C$DW$60	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$60, DW_AT_name("/home/fernandofernandes/NetBeansProjects/C.03/DSP/CSequencial_DSP.03/Algoritmos.asm:$C$L23:1:1424287661")
	.dwattr $C$DW$60, DW_AT_TI_begin_file("Algoritmos.c")
	.dwattr $C$DW$60, DW_AT_TI_begin_line(0x81)
	.dwattr $C$DW$60, DW_AT_TI_end_line(0x82)
$C$DW$61	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$61, DW_AT_low_pc($C$DW$L$_ImageThresholdPlusZoom$7$B)
	.dwattr $C$DW$61, DW_AT_high_pc($C$DW$L$_ImageThresholdPlusZoom$7$E)
	.dwendtag $C$DW$60


$C$DW$62	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$62, DW_AT_name("/home/fernandofernandes/NetBeansProjects/C.03/DSP/CSequencial_DSP.03/Algoritmos.asm:$C$L20:1:1424287661")
	.dwattr $C$DW$62, DW_AT_TI_begin_file("Algoritmos.c")
	.dwattr $C$DW$62, DW_AT_TI_begin_line(0x27)
	.dwattr $C$DW$62, DW_AT_TI_end_line(0x36)
$C$DW$63	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$63, DW_AT_low_pc($C$DW$L$_ImageThresholdPlusZoom$3$B)
	.dwattr $C$DW$63, DW_AT_high_pc($C$DW$L$_ImageThresholdPlusZoom$3$E)
	.dwendtag $C$DW$62

	.dwattr $C$DW$53, DW_AT_TI_end_file("Algoritmos.c")
	.dwattr $C$DW$53, DW_AT_TI_end_line(0x8a)
	.dwattr $C$DW$53, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$53

	.sect	".text"
	.clink
	.global	_Grayscale

$C$DW$64	.dwtag  DW_TAG_subprogram, DW_AT_name("Grayscale")
	.dwattr $C$DW$64, DW_AT_low_pc(_Grayscale)
	.dwattr $C$DW$64, DW_AT_high_pc(0x00)
	.dwattr $C$DW$64, DW_AT_TI_symbol_name("_Grayscale")
	.dwattr $C$DW$64, DW_AT_external
	.dwattr $C$DW$64, DW_AT_TI_begin_file("Algoritmos.c")
	.dwattr $C$DW$64, DW_AT_TI_begin_line(0x05)
	.dwattr $C$DW$64, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$64, DW_AT_TI_max_frame_size(0x10)
	.dwattr $C$DW$64, DW_AT_frame_base[DW_OP_breg31 16]
	.dwattr $C$DW$64, DW_AT_TI_skeletal
	.dwpsn	file "Algoritmos.c",line 5,column 95,is_stmt,address _Grayscale,isa 0
$C$DW$65	.dwtag  DW_TAG_formal_parameter, DW_AT_name("subimage")
	.dwattr $C$DW$65, DW_AT_TI_symbol_name("_subimage")
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$65, DW_AT_location[DW_OP_reg4]
$C$DW$66	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dest")
	.dwattr $C$DW$66, DW_AT_TI_symbol_name("_dest")
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$66, DW_AT_location[DW_OP_reg20]

;******************************************************************************
;* FUNCTION NAME: Grayscale                                                   *
;*                                                                            *
;*   Regs Modified     : A3,A4,A5,A6,A7,A8,B4,B5,B6,SP                        *
;*   Regs Used         : A3,A4,A5,A6,A7,A8,B3,B4,B5,B6,SP                     *
;*   Local Frame Size  : 0 Args + 12 Auto + 0 Save = 12 byte                  *
;******************************************************************************
_Grayscale:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 3
           MVKL    .S2     0x70800,B5
           MVKH    .S2     0x70800,B5
           SUB     .L2     B5,1,B6
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop found in file               : Algoritmos.c
;*      Loop source line                 : 14
;*      Loop opening brace source line   : 14
;*      Loop closing brace source line   : 29
;*      Known Minimum Trip Count         : 460800                    
;*      Known Maximum Trip Count         : 460800                    
;*      Known Max Trip Count Factor      : 460800
;*      Loop Carried Dependency Bound(^) : 1
;*      Unpartitioned Resource Bound     : 8
;*      Partitioned Resource Bound(*)    : 12
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     0        0     
;*      .D units                     4       12*    
;*      .M units                     0        0     
;*      .X cross paths               0        0     
;*      .T address paths             8        8     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          0        0     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             0        0     
;*      Bound(.L .S .D .LS .LSD)     2        4     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 12 Schedule found with 3 iterations in parallel
;*
;*      Register Usage Table:
;*          +-----------------------------------------------------------------+
;*          |AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA|BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB|
;*          |00000000001111111111222222222233|00000000001111111111222222222233|
;*          |01234567890123456789012345678901|01234567890123456789012345678901|
;*          |--------------------------------+--------------------------------|
;*       0: |    *****                       |     *         *                |
;*       1: |    *****                       |    **         *                |
;*       2: |    *****                       |     *         *                |
;*       3: |    *****                       |     *         *                |
;*       4: |    *****                       |     *         *                |
;*       5: |   ******                       |    **         *                |
;*       6: |   ******                       |    *          *                |
;*       7: |   ******                       |               *                |
;*       8: |    *****                       |               *                |
;*       9: |    *****                       |               *                |
;*      10: |    *****                       |               *                |
;*      11: |    *****                       |               *                |
;*          +-----------------------------------------------------------------+
;*
;*      Done
;*
;*      Loop will be splooped
;*      Collapsed epilog stages       : 0
;*      Collapsed prolog stages       : 0
;*      Minimum required memory pad   : 0 bytes
;*
;*      For further improvement on this loop, try option -mh8
;*
;*      Minimum safe trip count       : 1
;*      Min. prof. trip count  (est.) : 3
;*
;*      Mem bank conflicts/iter(est.) : { min 0.000, est 0.500, max 4.000 }
;*      Mem bank perf. penalty (est.) : 4.0%
;*
;*      Effective ii                : { min 12.00, est 12.50, max 16.00 }
;*
;*
;*      Total cycles (est.)         : 24 + min_trip_cnt * 12 = 5529624        
;*----------------------------------------------------------------------------*
;*       SETUP CODE
;*
;*                  MV              A8,A5
;*                  ADD             10,A5,A5
;*                  MV              A8,A6
;*                  ADD             8,A6,A6
;*                  ADD             6,A8,A8
;*
;*        SINGLE SCHEDULED ITERATION
;*
;*        $C$C467:
;*   0              LDW     .D1T1   *A7++,A3          ; |Algoritmos.c:15| 
;*   1              NOP             5
;*   6              STW     .D2T1   A3,*+SP(4)        ; |Algoritmos.c:15|  ^ 
;*   7              LDBU    .D2T2   *+SP(4),B5        ; |Algoritmos.c:17|  ^ 
;*   8              NOP             1
;*   9              LDBU    .D2T1   *+SP(6),A4        ; |Algoritmos.c:21|  ^ 
;*  10              NOP             5
;*  15              STB     .D2T2   B5,*+SP(10)       ; |Algoritmos.c:20|  ^ 
;*  16              STB     .D2T2   B5,*+SP(8)        ; |Algoritmos.c:17|  ^ 
;*  17              STB     .D2T2   B5,*+SP(9)        ; |Algoritmos.c:18|  ^ 
;*  18              NOP             2
;*  20              LDHU    .D2T2   *+SP(8),B4        ; |Algoritmos.c:26|  ^ 
;*  21              NOP             1
;*  22              STB     .D2T1   A4,*+SP(12)       ; |Algoritmos.c:23|  ^ 
;*  23              STB     .D2T1   A4,*+SP(13)       ; |Algoritmos.c:24|  ^ 
;*  24              LDHU    .D2T2   *+SP(12),B4       ; |Algoritmos.c:28|  ^ 
;*  25              STB     .D2T1   A4,*+SP(11)       ; |Algoritmos.c:21|  ^ 
;*     ||           STH     .D1T2   B4,*A8++(6)       ; |Algoritmos.c:26| 
;*  26              LDHU    .D2T1   *+SP(10),A3       ; |Algoritmos.c:27|  ^ 
;*  27              NOP             3
;*  30              STH     .D1T2   B4,*A5++(6)       ; |Algoritmos.c:28| 
;*  31              STH     .D1T1   A3,*A6++(6)       ; |Algoritmos.c:27| 
;*     ||           SPBR            $C$C467
;*  32              NOP             4
;*  36              ; BRANCHCC OCCURS {$C$C467}       ; |Algoritmos.c:14| 
;*----------------------------------------------------------------------------*
$C$L25:    ; PIPED LOOP PROLOG
;          EXCLUSIVE CPU CYCLES: 25
	.dwpsn	file "Algoritmos.c",line 14,column 0,is_stmt,isa 0

           SPLOOPD 12      ;36               ; (P) 
||         MV      .L1     A4,A7
||         MVC     .S2     B6,ILC

;** --------------------------------------------------------------------------*
$C$L26:    ; PIPED LOOP KERNEL
$C$DW$L$_Grayscale$3$B:
;          EXCLUSIVE CPU CYCLES: 12
           LDW     .D1T1   *A7++,A3          ; |Algoritmos.c:15| (P) <0,0> 
           NOP             4

           SPMASK          D2
||         SUB     .D2     SP,16,SP          ; |Algoritmos.c:5| 

           STW     .D2T1   A3,*+SP(4)        ; |Algoritmos.c:15| (P) <0,6>  ^ 
           LDBU    .D2T2   *+SP(4),B5        ; |Algoritmos.c:17| (P) <0,7>  ^ 
           NOP             1
           LDBU    .D2T1   *+SP(6),A4        ; |Algoritmos.c:21| (P) <0,9>  ^ 
           NOP             5
           STB     .D2T2   B5,*+SP(10)       ; |Algoritmos.c:20| (P) <0,15>  ^ 
           STB     .D2T2   B5,*+SP(8)        ; |Algoritmos.c:17| (P) <0,16>  ^ 
           STB     .D2T2   B5,*+SP(9)        ; |Algoritmos.c:18| (P) <0,17>  ^ 

           SPMASK          L1
||         MV      .L1X    B4,A8

           SPMASK          L1
||         ADD     .L1X    4,B4,A5

           SPMASK          L1
||         ADD     .L1X    2,B4,A6
||         LDHU    .D2T2   *+SP(8),B4        ; |Algoritmos.c:26| (P) <0,20>  ^ 

           NOP             1
           STB     .D2T1   A4,*+SP(12)       ; |Algoritmos.c:23| (P) <0,22>  ^ 
           STB     .D2T1   A4,*+SP(13)       ; |Algoritmos.c:24| (P) <0,23>  ^ 
           LDHU    .D2T2   *+SP(12),B4       ; |Algoritmos.c:28| <0,24>  ^ 

           STH     .D1T2   B4,*A8++(6)       ; |Algoritmos.c:26| <0,25> 
||         STB     .D2T1   A4,*+SP(11)       ; |Algoritmos.c:21| <0,25>  ^ 

           LDHU    .D2T1   *+SP(10),A3       ; |Algoritmos.c:27| <0,26>  ^ 
           NOP             3
           STH     .D1T2   B4,*A5++(6)       ; |Algoritmos.c:28| <0,30> 
	.dwpsn	file "Algoritmos.c",line 29,column 0,is_stmt,isa 0

           SPKERNEL 1,0
||         STH     .D1T1   A3,*A6++(6)       ; |Algoritmos.c:27| <0,31> 

$C$DW$L$_Grayscale$3$E:
;** --------------------------------------------------------------------------*
$C$L27:    ; PIPED LOOP EPILOG
;          EXCLUSIVE CPU CYCLES: 20
           NOP             2
$C$DW$67	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$67, DW_AT_low_pc(0x00)
	.dwattr $C$DW$67, DW_AT_TI_return
           RET     .S2     B3                ; |Algoritmos.c:30| 
           ADDK    .S2     16,SP             ; |Algoritmos.c:30| 
	.dwpsn	file "Algoritmos.c",line 30,column 1,is_stmt,isa 0
           NOP             4
           ; BRANCH OCCURS {B3}              ; |Algoritmos.c:30| 

$C$DW$68	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$68, DW_AT_name("/home/fernandofernandes/NetBeansProjects/C.03/DSP/CSequencial_DSP.03/Algoritmos.asm:$C$L26:1:1424287661")
	.dwattr $C$DW$68, DW_AT_TI_begin_file("Algoritmos.c")
	.dwattr $C$DW$68, DW_AT_TI_begin_line(0x0e)
	.dwattr $C$DW$68, DW_AT_TI_end_line(0x1d)
$C$DW$69	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$69, DW_AT_low_pc($C$DW$L$_Grayscale$3$B)
	.dwattr $C$DW$69, DW_AT_high_pc($C$DW$L$_Grayscale$3$E)
	.dwendtag $C$DW$68

	.dwattr $C$DW$64, DW_AT_TI_end_file("Algoritmos.c")
	.dwattr $C$DW$64, DW_AT_TI_end_line(0x1e)
	.dwattr $C$DW$64, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$64

;*****************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                             *
;*****************************************************************************
	.global	__divu

;******************************************************************************
;* BUILD ATTRIBUTES                                                           *
;******************************************************************************
	.battr "TI", Tag_File, 1, Tag_ABI_stack_align_needed(0)
	.battr "TI", Tag_File, 1, Tag_ABI_stack_align_preserved(0)
	.battr "TI", Tag_File, 1, Tag_Tramps_Use_SOC(1)

;******************************************************************************
;* TYPE INFORMATION                                                           *
;******************************************************************************
$C$DW$T$2	.dwtag  DW_TAG_unspecified_type
	.dwattr $C$DW$T$2, DW_AT_name("void")
$C$DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$3, DW_AT_type(*$C$DW$T$2)
	.dwattr $C$DW$T$3, DW_AT_address_class(0x20)
$C$DW$T$19	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$2)
$C$DW$T$20	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$20, DW_AT_address_class(0x20)
$C$DW$T$4	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$4, DW_AT_encoding(DW_ATE_boolean)
	.dwattr $C$DW$T$4, DW_AT_name("bool")
	.dwattr $C$DW$T$4, DW_AT_byte_size(0x01)
$C$DW$T$5	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$5, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$5, DW_AT_name("signed char")
	.dwattr $C$DW$T$5, DW_AT_byte_size(0x01)
$C$DW$T$6	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$6, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$6, DW_AT_byte_size(0x01)
$C$DW$T$21	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$6)
$C$DW$T$22	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$22, DW_AT_address_class(0x20)
$C$DW$T$23	.dwtag  DW_TAG_restrict_type
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$22)
$C$DW$T$24	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$24, DW_AT_address_class(0x20)
$C$DW$T$25	.dwtag  DW_TAG_restrict_type
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$24)
$C$DW$T$7	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$7, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$7, DW_AT_name("wchar_t")
	.dwattr $C$DW$T$7, DW_AT_byte_size(0x02)
$C$DW$T$8	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$8, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$8, DW_AT_name("short")
	.dwattr $C$DW$T$8, DW_AT_byte_size(0x02)
$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x02)
$C$DW$T$35	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$35, DW_AT_address_class(0x20)
$C$DW$T$10	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$10, DW_AT_name("int")
	.dwattr $C$DW$T$10, DW_AT_byte_size(0x04)
$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x04)
$C$DW$T$38	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$38, DW_AT_type(*$C$DW$T$11)
$C$DW$T$39	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$39, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$T$39, DW_AT_address_class(0x20)
$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x08)
	.dwattr $C$DW$T$12, DW_AT_bit_size(0x28)
	.dwattr $C$DW$T$12, DW_AT_bit_offset(0x18)
$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x08)
	.dwattr $C$DW$T$13, DW_AT_bit_size(0x28)
	.dwattr $C$DW$T$13, DW_AT_bit_offset(0x18)
$C$DW$T$14	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$14, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$14, DW_AT_name("long long")
	.dwattr $C$DW$T$14, DW_AT_byte_size(0x08)
$C$DW$T$41	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$41, DW_AT_type(*$C$DW$T$14)
	.dwattr $C$DW$T$41, DW_AT_address_class(0x20)
$C$DW$T$43	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$43, DW_AT_type(*$C$DW$T$14)
$C$DW$T$44	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$44, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$T$44, DW_AT_address_class(0x20)
$C$DW$T$15	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$15, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$15, DW_AT_name("unsigned long long")
	.dwattr $C$DW$T$15, DW_AT_byte_size(0x08)
$C$DW$T$16	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$16, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$16, DW_AT_name("float")
	.dwattr $C$DW$T$16, DW_AT_byte_size(0x04)
$C$DW$T$17	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$17, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$17, DW_AT_name("double")
	.dwattr $C$DW$T$17, DW_AT_byte_size(0x08)
$C$DW$T$18	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$18, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$18, DW_AT_name("long double")
	.dwattr $C$DW$T$18, DW_AT_byte_size(0x08)
	.dwattr $C$DW$CU, DW_AT_language(DW_LANG_C)
	.dwendtag $C$DW$CU

