;******************************************************************************
;* TMS320C6x C/C++ Codegen                                        Unix v7.6.0 *
;* Date/Time created: Tue Jan 13 18:34:06 2015                                *
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

$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("_amem4_const")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("__amem4_const")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$20)
	.dwendtag $C$DW$1


$C$DW$3	.dwtag  DW_TAG_subprogram, DW_AT_name("_amem2")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("__amem2")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$3, DW_AT_declaration
	.dwattr $C$DW$3, DW_AT_external
$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$3)
	.dwendtag $C$DW$3

;	/opt/c6000_7.6.0/bin/opt6x /tmp/14743hyUVKV /tmp/14743UYQ3wj 
	.sect	".text"
	.clink
	.global	_YUYVtoRGB

$C$DW$5	.dwtag  DW_TAG_subprogram, DW_AT_name("YUYVtoRGB")
	.dwattr $C$DW$5, DW_AT_low_pc(_YUYVtoRGB)
	.dwattr $C$DW$5, DW_AT_high_pc(0x00)
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("_YUYVtoRGB")
	.dwattr $C$DW$5, DW_AT_external
	.dwattr $C$DW$5, DW_AT_TI_begin_file("Algoritmos.c")
	.dwattr $C$DW$5, DW_AT_TI_begin_line(0x35)
	.dwattr $C$DW$5, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$5, DW_AT_TI_max_frame_size(0x10)
	.dwattr $C$DW$5, DW_AT_frame_base[DW_OP_breg31 16]
	.dwattr $C$DW$5, DW_AT_TI_skeletal
	.dwpsn	file "Algoritmos.c",line 53,column 95,is_stmt,address _YUYVtoRGB,isa 0
$C$DW$6	.dwtag  DW_TAG_formal_parameter, DW_AT_name("subimage")
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("_subimage")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$6, DW_AT_location[DW_OP_reg4]
$C$DW$7	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dest")
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("_dest")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$7, DW_AT_location[DW_OP_reg20]

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

           SUB     .D2     SP,16,SP          ; |Algoritmos.c:53| 
||         ZERO    .L2     B5                ; |Algoritmos.c:61| 

           STH     .D2T2   B5,*+SP(8)        ; |Algoritmos.c:61| 
           LDHU    .D2T2   *+SP(8),B5        ; |Algoritmos.c:62| 
           MV      .L1     A4,A19
           MVK     .S1     0xffffff80,A21
           MVK     .S2     0xfffffd00,B20
           MVK     .S2     0xff,B9
           STH     .D2T2   B5,*+SP(10)       ; |Algoritmos.c:62| 
           LDHU    .D2T2   *+SP(10),B5       ; |Algoritmos.c:63| 
           DINT                              ; interrupts off
           SUB     .L1X    B4,6,A23
           NOP             2
           STH     .D2T2   B5,*+SP(12)       ; |Algoritmos.c:63| 
           LDW     .D1T1   *A19++,A3         ; |Algoritmos.c:66| (P) <0,0> 
           NOP             4
           STW     .D2T1   A3,*+SP(4)        ; |Algoritmos.c:66| (P) <0,10> 
           LDBU    .D2T1   *+SP(7),A4        ; |Algoritmos.c:78| (P) <0,18> 
           LDBU    .D2T2   *+SP(5),B5        ; |Algoritmos.c:79| (P) <0,11> 
           LDW     .D1T1   *A19++,A17        ; |Algoritmos.c:66| (P) <1,0> 
           LDBU    .D2T1   *+SP(6),A18       ; |Algoritmos.c:81| (P) <0,15> 
           LDBU    .D2T2   *+SP(4),B21       ; |Algoritmos.c:78| (P) <0,21> 
           ADD     .L1     A21,A4,A3         ; |Algoritmos.c:78| (P) <0,23> 

           MPYSU   .M1     6,A4,A5           ; |Algoritmos.c:79| (P) <0,23> 
||         ADD     .L2X    A21,B5,B4         ; |Algoritmos.c:79| (P) <0,22> 

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop found in file               : Algoritmos.c
;*      Loop source line                 : 65
;*      Loop opening brace source line   : 65
;*      Loop closing brace source line   : 87
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
;*        $C$C96:
;*   0              LDW     .D1T1   *A19++,A17        ; |Algoritmos.c:66| 
;*   1              NOP             5
;*  10              STW     .D2T1   A17,*+SP(4)       ; |Algoritmos.c:66| 
;*  11              LDBU    .D2T2   *+SP(5),B5        ; |Algoritmos.c:79| 
;*  12              NOP             3
;*  15              LDBU    .D2T1   *+SP(6),A18       ; |Algoritmos.c:81| 
;*  16              NOP             2
;*  18              LDBU    .D2T1   *+SP(7),A4        ; |Algoritmos.c:78| 
;*  19              NOP             2
;*  21              LDBU    .D2T2   *+SP(4),B21       ; |Algoritmos.c:78| 
;*  22              ADD     .S2X    A21,B5,B4         ; |Algoritmos.c:79| 
;*  23              ADD     .L1     A21,A4,A3         ; |Algoritmos.c:78| 
;*     ||           MPY     .M2     B4,3,B5           ; |Algoritmos.c:79| 
;*     ||           MPYSU   .M1     6,A4,A6           ; |Algoritmos.c:79| 
;*  24              MPY     .M1     A3,3,A3           ; |Algoritmos.c:78| 
;*  25              MPY     .M1     6,A3,A6           ; |Algoritmos.c:79| 
;*  26              EXT     .S1     A3,15,16,A5       ; |Algoritmos.c:78| 
;*     ||           ADD     .L2X    B5,A6,B6          ; |Algoritmos.c:79| 
;*     ||           MPY     .M1X    B4,A22,A24        ; |Algoritmos.c:80| 
;*  27              SHR     .S1     A3,1,A6           ; |Algoritmos.c:78| 
;*     ||           ADD     .L2     B20,B6,B4         ; |Algoritmos.c:79| 
;*     ||           ADD     .D1X    B5,A6,A7          ; |Algoritmos.c:79| 
;*     ||           ADD     .L1     A5,A18,A3         ; |Algoritmos.c:81| 
;*  28              ADD     .L2X    A5,B21,B16        ; |Algoritmos.c:78| 
;*     ||           SHR     .S2     B4,3,B8           ; |Algoritmos.c:79| 
;*     ||           EXT     .S1     A7,13,16,A5       ; |Algoritmos.c:79| 
;*  29              CMPLT   .L2     B16,0,B4          ; |Algoritmos.c:78| 
;*     ||           EXT     .S1     A24,10,16,A8      ; |Algoritmos.c:80| 
;*     ||           SUB     .L1     A18,A5,A9         ; |Algoritmos.c:82| 
;*  30              ADD     .D1X    A6,B21,A4         ; |Algoritmos.c:78| 
;*     ||           XOR     .S2     1,B4,B4           ; |Algoritmos.c:78| 
;*     ||           ADD     .S1     A6,A18,A16        ; |Algoritmos.c:81| 
;*     ||           CMPLT   .L2X    A3,0,B6           ; |Algoritmos.c:81| 
;*     ||           CMPLT   .L1     A9,0,A6           ; |Algoritmos.c:82| 
;*  31              SUB     .L2X    B21,A5,B7         ; |Algoritmos.c:79| 
;*     ||           XOR     .S2     1,B6,B6           ; |Algoritmos.c:81| 
;*     ||           SUB     .L1X    A18,B8,A6         ; |Algoritmos.c:82| 
;*     ||           XOR     .D1     1,A6,A17          ; |Algoritmos.c:82| 
;*     ||           ADD     .S1     A8,A18,A7         ; |Algoritmos.c:83| 
;*  32              MPY     .M2X    B4,A4,B6          ; |Algoritmos.c:78| 
;*     ||           SUB     .S2     B21,B8,B4         ; |Algoritmos.c:79| 
;*     ||           CMPLT   .L2     B7,0,B8           ; |Algoritmos.c:79| 
;*     ||           SHR     .S1     A24,6,A6          ; |Algoritmos.c:80| 
;*     ||           MPY     .M1     A17,A6,A9         ; |Algoritmos.c:82| 
;*     ||           CMPLT   .L1     A7,0,A4           ; |Algoritmos.c:83| 
;*  33              CMPGT   .L2     B16,B9,B0         ; |Algoritmos.c:78| 
;*     ||           XOR     .S2     1,B8,B8           ; |Algoritmos.c:79| 
;*     ||           MPY     .M2X    B6,A16,B16        ; |Algoritmos.c:81| 
;*     ||           CMPGT   .L1     A9,A20,A1         ; |Algoritmos.c:82| 
;*     ||           ADD     .S1     A6,A18,A4         ; |Algoritmos.c:83| 
;*     ||           XOR     .D1     1,A4,A16          ; |Algoritmos.c:83| 
;*  34      [ B0]   EXTU    .S2     B9,24,24,B4       ; |Algoritmos.c:78| 
;*     ||           MPY     .M2     B8,B4,B17         ; |Algoritmos.c:79| 
;*     ||           ADD     .L2X    A8,B21,B8         ; |Algoritmos.c:80| 
;*     ||           CMPGT   .L1     A3,A20,A2         ; |Algoritmos.c:81| 
;*     ||   [ A1]   EXTU    .S1     A20,24,24,A3      ; |Algoritmos.c:82| 
;*     ||           MPY     .M1     A16,A4,A5         ; |Algoritmos.c:83| 
;*  35      [!B0]   EXTU    .S2     B6,24,24,B4       ; |Algoritmos.c:78| 
;*     ||           CMPLT   .L2     B8,0,B6           ; |Algoritmos.c:80| 
;*     ||           CMPGT   .L1     A7,A20,A0         ; |Algoritmos.c:83| 
;*  36              STB     .D2T2   B4,*+SP(8)        ; |Algoritmos.c:78| 
;*     ||           CMPGT   .L1X    B8,A20,A1         ; |Algoritmos.c:80| 
;*     ||           XOR     .L2     1,B6,B8           ; |Algoritmos.c:80| 
;*     ||   [!A1]   EXTU    .S1     A9,24,24,A3       ; |Algoritmos.c:82| 
;*  37              CMPGT   .L2     B7,B9,B0          ; |Algoritmos.c:79| 
;*     ||   [ A1]   EXTU    .S2     B9,24,24,B19      ; |Algoritmos.c:80| 
;*     ||           STB     .D2T1   A3,*+SP(12)       ; |Algoritmos.c:82| 
;*     ||   [ A0]   EXTU    .S1     A20,24,24,A4      ; |Algoritmos.c:83| 
;*  38      [ B0]   EXTU    .S2     B9,24,24,B6       ; |Algoritmos.c:79| 
;*     ||           ADD     .L2X    A6,B21,B7         ; |Algoritmos.c:80| 
;*     ||   [!A0]   EXTU    .S1     A5,24,24,A4       ; |Algoritmos.c:83| 
;*  39      [!B0]   EXTU    .S2     B17,24,24,B6      ; |Algoritmos.c:79| 
;*     ||           MPY     .M2     B8,B7,B4          ; |Algoritmos.c:80| 
;*     ||   [ B1]   SUB     .L2     B1,1,B1           ; |Algoritmos.c:65| 
;*  40              STB     .D2T2   B6,*+SP(9)        ; |Algoritmos.c:79| 
;*     ||   [!A2]   EXTU    .S2     B16,24,24,B18     ; |Algoritmos.c:81| 
;*  41      [!A1]   EXTU    .S2     B4,24,24,B19      ; |Algoritmos.c:80| 
;*     ||           LDHU    .D2T1   *+SP(8),A5        ; |Algoritmos.c:84| 
;*  42              STB     .D2T2   B19,*+SP(10)      ; |Algoritmos.c:80| 
;*  43      [ A2]   EXTU    .S2     B9,24,24,B18      ; |Algoritmos.c:81| 
;*  44              STB     .D2T1   A4,*+SP(13)       ; |Algoritmos.c:83| 
;*  45              STB     .D2T2   B18,*+SP(11)      ; |Algoritmos.c:81| 
;*  46              NOP             1
;*  47              LDHU    .D2T2   *+SP(10),B5       ; |Algoritmos.c:85| 
;*  48              LDHU    .D2T1   *+SP(12),A5       ; |Algoritmos.c:86| 
;*  49              STH     .D1T1   A5,*++A23(6)      ; |Algoritmos.c:84| 
;*     ||   [ B1]   B       .S1     $C$C96            ; |Algoritmos.c:65| 
;*  50              NOP             2
;*  52              STH     .D1T2   B5,*+A23(2)       ; |Algoritmos.c:85| 
;*  53              STH     .D1T1   A5,*+A23(4)       ; |Algoritmos.c:86| 
;*  54              NOP             1
;*  55              ; BRANCHCC OCCURS {$C$C96}        ; |Algoritmos.c:65| 
;*----------------------------------------------------------------------------*
$C$L1:    ; PIPED LOOP PROLOG
;          EXCLUSIVE CPU CYCLES: 3

           MVKL    .S2     0x70800,B1
||         MPY     .M2     B4,3,B5           ; |Algoritmos.c:79| (P) <0,23> 
||         MPY     .M1     A3,3,A3           ; |Algoritmos.c:78| (P) <0,24> 
||         STW     .D2T1   A17,*+SP(4)       ; |Algoritmos.c:66| (P) <1,10> 

           ZERO    .L2     B2
||         MVK     .S1     0x81,A22
||         MVKH    .S2     0x70800,B1
||         MV      .L1X    B9,A20
||         MPY     .M1     6,A3,A6           ; |Algoritmos.c:79| (P) <0,25> 
||         LDBU    .D2T2   *+SP(5),B5        ; |Algoritmos.c:79| (P) <1,11> 

	.dwpsn	file "Algoritmos.c",line 65,column 0,is_stmt,isa 0

           MVKH    .S2     0x10000,B2        ; init prolog collapse predicate
||         SUB     .L2     B1,3,B1
||         MPY     .M1X    B4,A22,A24        ; |Algoritmos.c:80| (P) <0,26> 
||         ADD     .D2X    B5,A5,B6          ; |Algoritmos.c:79| (P) <0,26> 
||         EXT     .S1     A3,15,16,A5       ; |Algoritmos.c:78| (P) <0,26> 

;** --------------------------------------------------------------------------*
$C$L2:    ; PIPED LOOP KERNEL
$C$DW$L$_YUYVtoRGB$3$B:
;          EXCLUSIVE CPU CYCLES: 14

   [!A1]   EXTU    .S2     B4,24,24,B19      ; |Algoritmos.c:80| <0,41> 
||         LDHU    .D2T1   *+SP(8),A5        ; |Algoritmos.c:84| <0,41> 
||         ADD     .L2     B20,B6,B4         ; |Algoritmos.c:79| <1,27> 
||         SHR     .S1     A3,1,A6           ; |Algoritmos.c:78| <1,27> 
||         ADD     .L1     A5,A18,A3         ; |Algoritmos.c:81| <1,27> 
||         ADD     .D1X    B5,A6,A7          ; |Algoritmos.c:79| <1,27> 

   [!B2]   STB     .D2T2   B19,*+SP(10)      ; |Algoritmos.c:80| <0,42> 
||         ADD     .L2X    A5,B21,B16        ; |Algoritmos.c:78| <1,28> 
||         SHR     .S2     B4,3,B8           ; |Algoritmos.c:79| <1,28> 
||         EXT     .S1     A7,13,16,A5       ; |Algoritmos.c:79| <1,28> 
||         LDW     .D1T1   *A19++,A17        ; |Algoritmos.c:66| <3,0> 

   [ A2]   EXTU    .S2     B9,24,24,B18      ; |Algoritmos.c:81| <0,43> 
||         SUB     .L1     A18,A5,A9         ; |Algoritmos.c:82| <1,29> 
||         EXT     .S1     A24,10,16,A8      ; |Algoritmos.c:80| <1,29> 
||         CMPLT   .L2     B16,0,B4          ; |Algoritmos.c:78| <1,29> 
||         LDBU    .D2T1   *+SP(6),A18       ; |Algoritmos.c:81| <2,15> 

   [!B2]   STB     .D2T1   A4,*+SP(13)       ; |Algoritmos.c:83| <0,44> 
||         ADD     .S1     A6,A18,A16        ; |Algoritmos.c:81| <1,30> 
||         CMPLT   .L1     A9,0,A6           ; |Algoritmos.c:82| <1,30> 
||         ADD     .D1X    A6,B21,A4         ; |Algoritmos.c:78| <1,30> 
||         XOR     .S2     1,B4,B4           ; |Algoritmos.c:78| <1,30> 
||         CMPLT   .L2X    A3,0,B6           ; |Algoritmos.c:81| <1,30> 

   [!B2]   STB     .D2T2   B18,*+SP(11)      ; |Algoritmos.c:81| <0,45> 
||         ADD     .S1     A8,A18,A7         ; |Algoritmos.c:83| <1,31> 
||         XOR     .D1     1,A6,A17          ; |Algoritmos.c:82| <1,31> 
||         SUB     .L1X    A18,B8,A6         ; |Algoritmos.c:82| <1,31> 
||         XOR     .S2     1,B6,B6           ; |Algoritmos.c:81| <1,31> 
||         SUB     .L2X    B21,A5,B7         ; |Algoritmos.c:79| <1,31> 

           SUB     .S2     B21,B8,B4         ; |Algoritmos.c:79| <1,32> 
||         SHR     .S1     A24,6,A6          ; |Algoritmos.c:80| <1,32> 
||         CMPLT   .L1     A7,0,A4           ; |Algoritmos.c:83| <1,32> 
||         MPY     .M2X    B4,A4,B6          ; |Algoritmos.c:78| <1,32> 
||         CMPLT   .L2     B7,0,B8           ; |Algoritmos.c:79| <1,32> 
||         MPY     .M1     A17,A6,A9         ; |Algoritmos.c:82| <1,32> 
||         LDBU    .D2T1   *+SP(7),A4        ; |Algoritmos.c:78| <2,18> 

           LDHU    .D2T2   *+SP(10),B5       ; |Algoritmos.c:85| <0,47> 
||         ADD     .S1     A6,A18,A4         ; |Algoritmos.c:83| <1,33> 
||         CMPGT   .L1     A9,A20,A1         ; |Algoritmos.c:82| <1,33> 
||         XOR     .D1     1,A4,A16          ; |Algoritmos.c:83| <1,33> 
||         CMPGT   .L2     B16,B9,B0         ; |Algoritmos.c:78| <1,33> 
||         MPY     .M2X    B6,A16,B16        ; |Algoritmos.c:81| <1,33> 
||         XOR     .S2     1,B8,B8           ; |Algoritmos.c:79| <1,33> 

           LDHU    .D2T1   *+SP(12),A5       ; |Algoritmos.c:86| <0,48> 
|| [ A1]   EXTU    .S1     A20,24,24,A3      ; |Algoritmos.c:82| <1,34> 
|| [ B0]   EXTU    .S2     B9,24,24,B4       ; |Algoritmos.c:78| <1,34> 
||         ADD     .L2X    A8,B21,B8         ; |Algoritmos.c:80| <1,34> 
||         MPY     .M1     A16,A4,A5         ; |Algoritmos.c:83| <1,34> 
||         MPY     .M2     B8,B4,B17         ; |Algoritmos.c:79| <1,34> 
||         CMPGT   .L1     A3,A20,A2         ; |Algoritmos.c:81| <1,34> 

   [ B1]   B       .S1     $C$L2             ; |Algoritmos.c:65| <0,49> 
|| [!B2]   STH     .D1T1   A5,*++A23(6)      ; |Algoritmos.c:84| <0,49> 
||         CMPLT   .L2     B8,0,B6           ; |Algoritmos.c:80| <1,35> 
|| [!B0]   EXTU    .S2     B6,24,24,B4       ; |Algoritmos.c:78| <1,35> 
||         CMPGT   .L1     A7,A20,A0         ; |Algoritmos.c:83| <1,35> 
||         LDBU    .D2T2   *+SP(4),B21       ; |Algoritmos.c:78| <2,21> 

   [!A1]   EXTU    .S1     A9,24,24,A3       ; |Algoritmos.c:82| <1,36> 
||         STB     .D2T2   B4,*+SP(8)        ; |Algoritmos.c:78| <1,36> 
||         XOR     .L2     1,B6,B8           ; |Algoritmos.c:80| <1,36> 
||         CMPGT   .L1X    B8,A20,A1         ; |Algoritmos.c:80| <1,36> 
||         ADD     .S2X    A21,B5,B4         ; |Algoritmos.c:79| <2,22> 

           STB     .D2T1   A3,*+SP(12)       ; |Algoritmos.c:82| <1,37> 
|| [ A1]   EXTU    .S2     B9,24,24,B19      ; |Algoritmos.c:80| <1,37> 
||         CMPGT   .L2     B7,B9,B0          ; |Algoritmos.c:79| <1,37> 
|| [ A0]   EXTU    .S1     A20,24,24,A4      ; |Algoritmos.c:83| <1,37> 
||         MPYSU   .M1     6,A4,A6           ; |Algoritmos.c:79| <2,23> 
||         ADD     .L1     A21,A4,A3         ; |Algoritmos.c:78| <2,23> 
||         MPY     .M2     B4,3,B5           ; |Algoritmos.c:79| <2,23> 

   [!B2]   STH     .D1T2   B5,*+A23(2)       ; |Algoritmos.c:85| <0,52> 
|| [!A0]   EXTU    .S1     A5,24,24,A4       ; |Algoritmos.c:83| <1,38> 
||         ADD     .L2X    A6,B21,B7         ; |Algoritmos.c:80| <1,38> 
|| [ B0]   EXTU    .S2     B9,24,24,B6       ; |Algoritmos.c:79| <1,38> 
||         MPY     .M1     A3,3,A3           ; |Algoritmos.c:78| <2,24> 
||         STW     .D2T1   A17,*+SP(4)       ; |Algoritmos.c:66| <3,10> 

   [!B2]   STH     .D1T1   A5,*+A23(4)       ; |Algoritmos.c:86| <0,53> 
|| [ B1]   SUB     .L2     B1,1,B1           ; |Algoritmos.c:65| <1,39> 
||         MPY     .M2     B8,B7,B4          ; |Algoritmos.c:80| <1,39> 
|| [!B0]   EXTU    .S2     B17,24,24,B6      ; |Algoritmos.c:79| <1,39> 
||         MPY     .M1     6,A3,A6           ; |Algoritmos.c:79| <2,25> 
||         LDBU    .D2T2   *+SP(5),B5        ; |Algoritmos.c:79| <3,11> 

	.dwpsn	file "Algoritmos.c",line 87,column 0,is_stmt,isa 0

   [ B2]   MPYSU   .M2     2,B2,B2           ; <0,54> 
|| [!A2]   EXTU    .S2     B16,24,24,B18     ; |Algoritmos.c:81| <1,40> 
||         STB     .D2T2   B6,*+SP(9)        ; |Algoritmos.c:79| <1,40> 
||         MPY     .M1X    B4,A22,A24        ; |Algoritmos.c:80| <2,26> 
||         ADD     .L2X    B5,A6,B6          ; |Algoritmos.c:79| <2,26> 
||         EXT     .S1     A3,15,16,A5       ; |Algoritmos.c:78| <2,26> 

$C$DW$L$_YUYVtoRGB$3$E:
;** --------------------------------------------------------------------------*
$C$L3:    ; PIPED LOOP EPILOG
;          EXCLUSIVE CPU CYCLES: 41

   [!A1]   EXTU    .S2     B4,24,24,B19      ; |Algoritmos.c:80| (E) <1,41> 
||         LDHU    .D2T1   *+SP(8),A7        ; |Algoritmos.c:84| (E) <1,41> 
||         ADD     .L2     B20,B6,B4         ; |Algoritmos.c:79| (E) <2,27> 
||         SHR     .S1     A3,1,A6           ; |Algoritmos.c:78| (E) <2,27> 
||         ADD     .L1     A5,A18,A3         ; |Algoritmos.c:81| (E) <2,27> 
||         ADD     .D1X    B5,A6,A7          ; |Algoritmos.c:79| (E) <2,27> 

           STB     .D2T2   B19,*+SP(10)      ; |Algoritmos.c:80| (E) <1,42> 
||         ADD     .L2X    A5,B21,B6         ; |Algoritmos.c:78| (E) <2,28> 
||         SHR     .S2     B4,3,B4           ; |Algoritmos.c:79| (E) <2,28> 
||         EXT     .S1     A7,13,16,A5       ; |Algoritmos.c:79| (E) <2,28> 

   [ A2]   EXTU    .S2     B9,24,24,B18      ; |Algoritmos.c:81| (E) <1,43> 
||         SUB     .L1     A18,A5,A9         ; |Algoritmos.c:82| (E) <2,29> 
||         EXT     .S1     A24,10,16,A16     ; |Algoritmos.c:80| (E) <2,29> 
||         CMPLT   .L2     B6,0,B7           ; |Algoritmos.c:78| (E) <2,29> 
||         LDBU    .D2T1   *+SP(6),A18       ; |Algoritmos.c:81| (E) <3,15> 

           STB     .D2T1   A4,*+SP(13)       ; |Algoritmos.c:83| (E) <1,44> 
||         ADD     .S1     A6,A18,A8         ; |Algoritmos.c:81| (E) <2,30> 
||         CMPLT   .L1     A9,0,A6           ; |Algoritmos.c:82| (E) <2,30> 
||         ADD     .D1X    A6,B21,A4         ; |Algoritmos.c:78| (E) <2,30> 
||         XOR     .S2     1,B7,B7           ; |Algoritmos.c:78| (E) <2,30> 
||         CMPLT   .L2X    A3,0,B8           ; |Algoritmos.c:81| (E) <2,30> 

           STB     .D2T2   B18,*+SP(11)      ; |Algoritmos.c:81| (E) <1,45> 
||         ADD     .S1     A16,A18,A6        ; |Algoritmos.c:83| (E) <2,31> 
||         XOR     .D1     1,A6,A5           ; |Algoritmos.c:82| (E) <2,31> 
||         SUB     .L1X    A18,B4,A17        ; |Algoritmos.c:82| (E) <2,31> 
||         XOR     .S2     1,B8,B16          ; |Algoritmos.c:81| (E) <2,31> 
||         SUB     .L2X    B21,A5,B8         ; |Algoritmos.c:79| (E) <2,31> 

           SUB     .S2     B21,B4,B4         ; |Algoritmos.c:79| (E) <2,32> 
||         SHR     .S1     A24,6,A17         ; |Algoritmos.c:80| (E) <2,32> 
||         CMPLT   .L1     A6,0,A4           ; |Algoritmos.c:83| (E) <2,32> 
||         MPY     .M2X    B7,A4,B6          ; |Algoritmos.c:78| (E) <2,32> 
||         CMPLT   .L2     B8,0,B7           ; |Algoritmos.c:79| (E) <2,32> 
||         MPY     .M1     A5,A17,A9         ; |Algoritmos.c:82| (E) <2,32> 
||         LDBU    .D2T1   *+SP(7),A4        ; |Algoritmos.c:78| (E) <3,18> 

           LDHU    .D2T2   *+SP(10),B4       ; |Algoritmos.c:85| (E) <1,47> 
||         ADD     .S1     A17,A18,A4        ; |Algoritmos.c:83| (E) <2,33> 
||         CMPGT   .L1     A9,A20,A1         ; |Algoritmos.c:82| (E) <2,33> 
||         XOR     .D1     1,A4,A5           ; |Algoritmos.c:83| (E) <2,33> 
||         CMPGT   .L2     B6,B9,B0          ; |Algoritmos.c:78| (E) <2,33> 
||         MPY     .M2X    B16,A8,B16        ; |Algoritmos.c:81| (E) <2,33> 
||         XOR     .S2     1,B7,B7           ; |Algoritmos.c:79| (E) <2,33> 

           LDHU    .D2T1   *+SP(12),A6       ; |Algoritmos.c:86| (E) <1,48> 
|| [ A1]   EXTU    .S1     A20,24,24,A3      ; |Algoritmos.c:82| (E) <2,34> 
|| [ B0]   EXTU    .S2     B9,24,24,B4       ; |Algoritmos.c:78| (E) <2,34> 
||         ADD     .L2X    A16,B21,B7        ; |Algoritmos.c:80| (E) <2,34> 
||         MPY     .M1     A5,A4,A5          ; |Algoritmos.c:83| (E) <2,34> 
||         MPY     .M2     B7,B4,B17         ; |Algoritmos.c:79| (E) <2,34> 
||         CMPGT   .L1     A3,A20,A2         ; |Algoritmos.c:81| (E) <2,34> 

           STH     .D1T1   A7,*++A23(6)      ; |Algoritmos.c:84| (E) <1,49> 
||         CMPLT   .L2     B7,0,B6           ; |Algoritmos.c:80| (E) <2,35> 
|| [!B0]   EXTU    .S2     B6,24,24,B4       ; |Algoritmos.c:78| (E) <2,35> 
||         CMPGT   .L1     A6,A20,A0         ; |Algoritmos.c:83| (E) <2,35> 
||         LDBU    .D2T2   *+SP(4),B21       ; |Algoritmos.c:78| (E) <3,21> 

   [!A1]   EXTU    .S1     A9,24,24,A3       ; |Algoritmos.c:82| (E) <2,36> 
||         STB     .D2T2   B4,*+SP(8)        ; |Algoritmos.c:78| (E) <2,36> 
||         XOR     .L2     1,B6,B5           ; |Algoritmos.c:80| (E) <2,36> 
||         CMPGT   .L1X    B7,A20,A1         ; |Algoritmos.c:80| (E) <2,36> 
||         ADD     .S2X    A21,B5,B7         ; |Algoritmos.c:79| (E) <3,22> 

           STB     .D2T1   A3,*+SP(12)       ; |Algoritmos.c:82| (E) <2,37> 
|| [ A1]   EXTU    .S2     B9,24,24,B19      ; |Algoritmos.c:80| (E) <2,37> 
||         CMPGT   .L2     B8,B9,B0          ; |Algoritmos.c:79| (E) <2,37> 
|| [ A0]   EXTU    .S1     A20,24,24,A4      ; |Algoritmos.c:83| (E) <2,37> 
||         MPYSU   .M1     6,A4,A5           ; |Algoritmos.c:79| (E) <3,23> 
||         ADD     .L1     A21,A4,A3         ; |Algoritmos.c:78| (E) <3,23> 
||         MPY     .M2     B7,3,B8           ; |Algoritmos.c:79| (E) <3,23> 

           STH     .D1T2   B4,*+A23(2)       ; |Algoritmos.c:85| (E) <1,52> 
|| [!A0]   EXTU    .S1     A5,24,24,A4       ; |Algoritmos.c:83| (E) <2,38> 
||         ADD     .L2X    A17,B21,B4        ; |Algoritmos.c:80| (E) <2,38> 
|| [ B0]   EXTU    .S2     B9,24,24,B6       ; |Algoritmos.c:79| (E) <2,38> 
||         MPY     .M1     A3,3,A3           ; |Algoritmos.c:78| (E) <3,24> 

           STH     .D1T1   A6,*+A23(4)       ; |Algoritmos.c:86| (E) <1,53> 
||         MPY     .M2     B5,B4,B4          ; |Algoritmos.c:80| (E) <2,39> 
|| [!B0]   EXTU    .S2     B17,24,24,B6      ; |Algoritmos.c:79| (E) <2,39> 
||         MPY     .M1     6,A3,A6           ; |Algoritmos.c:79| (E) <3,25> 

   [!A2]   EXTU    .S2     B16,24,24,B18     ; |Algoritmos.c:81| (E) <2,40> 
||         STB     .D2T2   B6,*+SP(9)        ; |Algoritmos.c:79| (E) <2,40> 
||         MPY     .M1X    B7,A22,A9         ; |Algoritmos.c:80| (E) <3,26> 
||         ADD     .L2X    B8,A5,B5          ; |Algoritmos.c:79| (E) <3,26> 
||         EXT     .S1     A3,15,16,A5       ; |Algoritmos.c:78| (E) <3,26> 

   [!A1]   EXTU    .S2     B4,24,24,B19      ; |Algoritmos.c:80| (E) <2,41> 
||         LDHU    .D2T1   *+SP(8),A5        ; |Algoritmos.c:84| (E) <2,41> 
||         ADD     .L2     B20,B5,B4         ; |Algoritmos.c:79| (E) <3,27> 
||         SHR     .S1     A3,1,A6           ; |Algoritmos.c:78| (E) <3,27> 
||         ADD     .L1     A5,A18,A3         ; |Algoritmos.c:81| (E) <3,27> 
||         ADD     .D1X    B8,A6,A7          ; |Algoritmos.c:79| (E) <3,27> 

           STB     .D2T2   B19,*+SP(10)      ; |Algoritmos.c:80| (E) <2,42> 
||         ADD     .L2X    A5,B21,B5         ; |Algoritmos.c:78| (E) <3,28> 
||         SHR     .S2     B4,3,B4           ; |Algoritmos.c:79| (E) <3,28> 
||         EXT     .S1     A7,13,16,A5       ; |Algoritmos.c:79| (E) <3,28> 

   [ A2]   EXTU    .S2     B9,24,24,B18      ; |Algoritmos.c:81| (E) <2,43> 
||         SUB     .L1     A18,A5,A17        ; |Algoritmos.c:82| (E) <3,29> 
||         EXT     .S1     A9,10,16,A16      ; |Algoritmos.c:80| (E) <3,29> 
||         CMPLT   .L2     B5,0,B6           ; |Algoritmos.c:78| (E) <3,29> 

           STB     .D2T1   A4,*+SP(13)       ; |Algoritmos.c:83| (E) <2,44> 
||         ADD     .S1     A6,A18,A6         ; |Algoritmos.c:81| (E) <3,30> 
||         CMPLT   .L1     A17,0,A7          ; |Algoritmos.c:82| (E) <3,30> 
||         ADD     .D1X    A6,B21,A4         ; |Algoritmos.c:78| (E) <3,30> 
||         XOR     .S2     1,B6,B8           ; |Algoritmos.c:78| (E) <3,30> 
||         CMPLT   .L2X    A3,0,B6           ; |Algoritmos.c:81| (E) <3,30> 

           STB     .D2T2   B18,*+SP(11)      ; |Algoritmos.c:81| (E) <2,45> 
||         ADD     .S1     A16,A18,A8        ; |Algoritmos.c:83| (E) <3,31> 
||         XOR     .D1     1,A7,A19          ; |Algoritmos.c:82| (E) <3,31> 
||         SUB     .L1X    A18,B4,A7         ; |Algoritmos.c:82| (E) <3,31> 
||         XOR     .S2     1,B6,B6           ; |Algoritmos.c:81| (E) <3,31> 
||         SUB     .L2X    B21,A5,B7         ; |Algoritmos.c:79| (E) <3,31> 

           SUB     .S2     B21,B4,B4         ; |Algoritmos.c:79| (E) <3,32> 
||         SHR     .S1     A9,6,A7           ; |Algoritmos.c:80| (E) <3,32> 
||         CMPLT   .L1     A8,0,A4           ; |Algoritmos.c:83| (E) <3,32> 
||         MPY     .M2X    B8,A4,B6          ; |Algoritmos.c:78| (E) <3,32> 
||         CMPLT   .L2     B7,0,B8           ; |Algoritmos.c:79| (E) <3,32> 
||         MPY     .M1     A19,A7,A9         ; |Algoritmos.c:82| (E) <3,32> 

           LDHU    .D2T2   *+SP(10),B5       ; |Algoritmos.c:85| (E) <2,47> 
||         ADD     .S1     A7,A18,A4         ; |Algoritmos.c:83| (E) <3,33> 
||         CMPGT   .L1     A17,A20,A1        ; |Algoritmos.c:82| (E) <3,33> 
||         XOR     .D1     1,A4,A6           ; |Algoritmos.c:83| (E) <3,33> 
||         CMPGT   .L2     B5,B9,B0          ; |Algoritmos.c:78| (E) <3,33> 
||         MPY     .M2X    B6,A6,B16         ; |Algoritmos.c:81| (E) <3,33> 
||         XOR     .S2     1,B8,B5           ; |Algoritmos.c:79| (E) <3,33> 

           LDHU    .D2T1   *+SP(12),A3       ; |Algoritmos.c:86| (E) <2,48> 
|| [ A1]   EXTU    .S1     A20,24,24,A3      ; |Algoritmos.c:82| (E) <3,34> 
|| [ B0]   EXTU    .S2     B9,24,24,B4       ; |Algoritmos.c:78| (E) <3,34> 
||         ADD     .L2X    A16,B21,B5        ; |Algoritmos.c:80| (E) <3,34> 
||         MPY     .M1     A6,A4,A5          ; |Algoritmos.c:83| (E) <3,34> 
||         MPY     .M2     B5,B4,B17         ; |Algoritmos.c:79| (E) <3,34> 
||         CMPGT   .L1     A3,A20,A2         ; |Algoritmos.c:81| (E) <3,34> 

           STH     .D1T1   A5,*++A23(6)      ; |Algoritmos.c:84| (E) <2,49> 
||         CMPLT   .L2     B5,0,B6           ; |Algoritmos.c:80| (E) <3,35> 
|| [!B0]   EXTU    .S2     B6,24,24,B4       ; |Algoritmos.c:78| (E) <3,35> 
||         CMPGT   .L1     A8,A20,A0         ; |Algoritmos.c:83| (E) <3,35> 

   [!A1]   EXTU    .S1     A9,24,24,A3       ; |Algoritmos.c:82| (E) <3,36> 
||         STB     .D2T2   B4,*+SP(8)        ; |Algoritmos.c:78| (E) <3,36> 
||         XOR     .L2     1,B6,B4           ; |Algoritmos.c:80| (E) <3,36> 
||         CMPGT   .L1X    B5,A20,A1         ; |Algoritmos.c:80| (E) <3,36> 

           STB     .D2T1   A3,*+SP(12)       ; |Algoritmos.c:82| (E) <3,37> 
|| [ A1]   EXTU    .S2     B9,24,24,B19      ; |Algoritmos.c:80| (E) <3,37> 
||         CMPGT   .L2     B7,B9,B0          ; |Algoritmos.c:79| (E) <3,37> 
|| [ A0]   EXTU    .S1     A20,24,24,A4      ; |Algoritmos.c:83| (E) <3,37> 

           STH     .D1T2   B5,*+A23(2)       ; |Algoritmos.c:85| (E) <2,52> 
|| [!A0]   EXTU    .S1     A5,24,24,A4       ; |Algoritmos.c:83| (E) <3,38> 
||         ADD     .L2X    A7,B21,B5         ; |Algoritmos.c:80| (E) <3,38> 
|| [ B0]   EXTU    .S2     B9,24,24,B6       ; |Algoritmos.c:79| (E) <3,38> 

           STH     .D1T1   A3,*+A23(4)       ; |Algoritmos.c:86| (E) <2,53> 
||         MPY     .M2     B4,B5,B4          ; |Algoritmos.c:80| (E) <3,39> 
|| [!B0]   EXTU    .S2     B17,24,24,B6      ; |Algoritmos.c:79| (E) <3,39> 

   [!A2]   EXTU    .S2     B16,24,24,B18     ; |Algoritmos.c:81| (E) <3,40> 
||         STB     .D2T2   B6,*+SP(9)        ; |Algoritmos.c:79| (E) <3,40> 

   [!A1]   EXTU    .S2     B4,24,24,B19      ; |Algoritmos.c:80| (E) <3,41> 
||         LDHU    .D2T1   *+SP(8),A3        ; |Algoritmos.c:84| (E) <3,41> 

           STB     .D2T2   B19,*+SP(10)      ; |Algoritmos.c:80| (E) <3,42> 
   [ A2]   EXTU    .S2     B9,24,24,B18      ; |Algoritmos.c:81| (E) <3,43> 
           STB     .D2T1   A4,*+SP(13)       ; |Algoritmos.c:83| (E) <3,44> 
           STB     .D2T2   B18,*+SP(11)      ; |Algoritmos.c:81| (E) <3,45> 
           NOP             1
           LDHU    .D2T2   *+SP(10),B4       ; |Algoritmos.c:85| (E) <3,47> 
$C$DW$8	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$8, DW_AT_low_pc(0x00)
	.dwattr $C$DW$8, DW_AT_TI_return

           RET     .S2     B3                ; |Algoritmos.c:88| 
||         LDHU    .D2T1   *+SP(12),A3       ; |Algoritmos.c:86| (E) <3,48> 

           STH     .D1T1   A3,*++A23(6)      ; |Algoritmos.c:84| (E) <3,49> 
           NOP             2

           STH     .D1T2   B4,*+A23(2)       ; |Algoritmos.c:85| (E) <3,52> 
||         RINT                              ; interrupts on

	.dwpsn	file "Algoritmos.c",line 88,column 1,is_stmt,isa 0

           ADDK    .S2     16,SP             ; |Algoritmos.c:88| 
||         STH     .D1T1   A3,*+A23(4)       ; |Algoritmos.c:86| (E) <3,53> 

           ; BRANCH OCCURS {B3}              ; |Algoritmos.c:88| 

$C$DW$9	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$9, DW_AT_name("/home/fernandofernandes/NetBeansProjects/C.03/DSP/CSequencial_DSP.03/Algoritmos.asm:$C$L2:1:1421181247")
	.dwattr $C$DW$9, DW_AT_TI_begin_file("Algoritmos.c")
	.dwattr $C$DW$9, DW_AT_TI_begin_line(0x41)
	.dwattr $C$DW$9, DW_AT_TI_end_line(0x57)
$C$DW$10	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$10, DW_AT_low_pc($C$DW$L$_YUYVtoRGB$3$B)
	.dwattr $C$DW$10, DW_AT_high_pc($C$DW$L$_YUYVtoRGB$3$E)
	.dwendtag $C$DW$9

	.dwattr $C$DW$5, DW_AT_TI_end_file("Algoritmos.c")
	.dwattr $C$DW$5, DW_AT_TI_end_line(0x58)
	.dwattr $C$DW$5, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$5

	.sect	".text"
	.clink
	.global	_NearestNeighbour

$C$DW$11	.dwtag  DW_TAG_subprogram, DW_AT_name("NearestNeighbour")
	.dwattr $C$DW$11, DW_AT_low_pc(_NearestNeighbour)
	.dwattr $C$DW$11, DW_AT_high_pc(0x00)
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("_NearestNeighbour")
	.dwattr $C$DW$11, DW_AT_external
	.dwattr $C$DW$11, DW_AT_TI_begin_file("Algoritmos.c")
	.dwattr $C$DW$11, DW_AT_TI_begin_line(0x5a)
	.dwattr $C$DW$11, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$11, DW_AT_TI_max_frame_size(0x00)
	.dwattr $C$DW$11, DW_AT_frame_base[DW_OP_breg31 0]
	.dwattr $C$DW$11, DW_AT_TI_skeletal
	.dwpsn	file "Algoritmos.c",line 90,column 95,is_stmt,address _NearestNeighbour,isa 0
$C$DW$12	.dwtag  DW_TAG_formal_parameter, DW_AT_name("subimage")
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("_subimage")
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$12, DW_AT_location[DW_OP_reg4]
$C$DW$13	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dest")
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("_dest")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$13, DW_AT_location[DW_OP_reg20]
$C$DW$14	.dwtag  DW_TAG_formal_parameter, DW_AT_name("scale")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_scale")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$14, DW_AT_location[DW_OP_reg6]

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
           MV      .L1X    B4,A16            ; |Algoritmos.c:90| 

           MV      .L1X    B3,A21            ; |Algoritmos.c:90| 
||         MV      .S1     A4,A9             ; |Algoritmos.c:90| 

$C$DW$15	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$15, DW_AT_low_pc(0x00)
	.dwattr $C$DW$15, DW_AT_name("__divu")
	.dwattr $C$DW$15, DW_AT_TI_call

           CALLP   .S2     __divu,B3
||         MVK     .S1     0x2d0,A4          ; |Algoritmos.c:96| 
||         MV      .L2X    A6,B4             ; |Algoritmos.c:96| 
||         MV      .L1     A6,A3             ; |Algoritmos.c:96| 
||         MV      .D1     A6,A8             ; |Algoritmos.c:90| 

$C$RL0:    ; CALL OCCURS {__divu} {0}        ; |Algoritmos.c:96| 
$C$DW$16	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$16, DW_AT_low_pc(0x00)
	.dwattr $C$DW$16, DW_AT_name("__divu")
	.dwattr $C$DW$16, DW_AT_TI_call

           CALLP   .S2     __divu,B3
||         MV      .L2X    A3,B4             ; |Algoritmos.c:96| 
||         MV      .L1     A4,A5             ; |Algoritmos.c:96| 
||         MVK     .S1     0x500,A4          ; |Algoritmos.c:96| 

$C$RL1:    ; CALL OCCURS {__divu} {0}        ; |Algoritmos.c:96| 
$C$DW$17	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$17, DW_AT_low_pc(0x00)
	.dwattr $C$DW$17, DW_AT_name("__divu")
	.dwattr $C$DW$17, DW_AT_TI_call

           CALLP   .S2     __divu,B3
||         MV      .L2X    A3,B4             ; |Algoritmos.c:99| 
||         MV      .L1     A4,A7             ; |Algoritmos.c:96| 
||         MVK     .S1     0x500,A4          ; |Algoritmos.c:99| 

$C$RL2:    ; CALL OCCURS {__divu} {0}        ; |Algoritmos.c:99| 
           SHRU    .S1     A5,1,A3           ; |Algoritmos.c:96| 
           MVK     .S2     360,B4            ; |Algoritmos.c:96| 

           SUB     .L2X    B4,A3,B4          ; |Algoritmos.c:96| 
||         MVK     .S2     1280,B5           ; |Algoritmos.c:96| 

           MPY     .M2     B4,B5,B4          ; |Algoritmos.c:96| 
||         MVK     .S2     640,B5            ; |Algoritmos.c:96| 
||         SHRU    .S1     A7,1,A3           ; |Algoritmos.c:96| 

           MV      .L1     A8,A0

           MV      .L1X    B5,A5             ; |Algoritmos.c:96| 
||         SUB     .L2X    B5,A3,B5          ; |Algoritmos.c:96| 
||         SHRU    .S1     A4,1,A3           ; |Algoritmos.c:99| 

           SUB     .L1     A5,A3,A4          ; |Algoritmos.c:99| 

           ADD     .L2     B4,B5,B5          ; |Algoritmos.c:96| 
||         MVK     .L1     3,A3              ; |Algoritmos.c:96| 

           ADD     .L2X    B4,A4,B4          ; |Algoritmos.c:99| 

           MPYLI   .M1X    A3,B5,A5:A4       ; |Algoritmos.c:96| 
||         MV      .L2X    A3,B5             ; |Algoritmos.c:96| 

           MPYLI   .M2     B5,B4,B5:B4       ; |Algoritmos.c:99| 
           MVK     .S2     0x500,B9          ; |Algoritmos.c:99| 
           ZERO    .L1     A18               ; |Algoritmos.c:101| 
           MV      .L1     A4,A7             ; |Algoritmos.c:96| 
	.dwpsn	file "Algoritmos.c",line 101,column 0,is_stmt,isa 0

   [ A0]   ADD     .L1     A7,A9,A3
||         MV      .L2     B4,B7             ; |Algoritmos.c:99| 
||         ZERO    .D1     A17               ; |Algoritmos.c:101| 
||         MVK     .S2     0x1,B8            ; |Algoritmos.c:98| 
||         MVK     .S1     0xf00,A19
||         ZERO    .D2     B6                ; |Algoritmos.c:102| 

;** --------------------------------------------------------------------------*
;**   BEGIN LOOP $C$L4
;** --------------------------------------------------------------------------*
$C$L4:    
$C$DW$L$_NearestNeighbour$2$B:
;          EXCLUSIVE CPU CYCLES: 5
	.dwpsn	file "Algoritmos.c",line 102,column 0,is_stmt,isa 0
   [!A0]   BNOP    .S1     $C$L9,4           ; |Algoritmos.c:103| 
$C$DW$L$_NearestNeighbour$2$E:
;** --------------------------------------------------------------------------*
;**   BEGIN LOOP $C$L5
;** --------------------------------------------------------------------------*
$C$L5:    
$C$DW$L$_NearestNeighbour$3$B:
;          EXCLUSIVE CPU CYCLES: 1

   [ A0]   MVK     .L1     3,A4              ; |Algoritmos.c:107| 
|| [ A0]   LDBU    .D1T1   *+A3(2),A6

           ; BRANCHCC OCCURS {$C$L9}         ; |Algoritmos.c:103| 
$C$DW$L$_NearestNeighbour$3$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop found in file               : Algoritmos.c
;*      Loop source line                 : 103
;*      Loop opening brace source line   : 103
;*      Loop closing brace source line   : 108
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
;*        $C$C149:
;*   0              STB     .D1T1   A5,*A4++(3)       ; |Algoritmos.c:104| 
;*   1              STB     .D2T2   B5,*B4++(3)       ; |Algoritmos.c:105| 
;*     ||           STB     .D1T1   A6,*A3++(3)       ; |Algoritmos.c:106| 
;*     ||           SPBR            $C$C149
;*   2              NOP             2
;*   4              ; BRANCHCC OCCURS {$C$C149}       ; |Algoritmos.c:103| 
;*----------------------------------------------------------------------------*
$C$L6:    ; PIPED LOOP PROLOG
;          EXCLUSIVE CPU CYCLES: 7

           MVC     .S2X    A8,ILC
||         MPYLI   .M1     A4,A8,A5:A4       ; |Algoritmos.c:107| 
||         LDBU    .D1T1   *+A7[A9],A5

           LDBU    .D1T2   *+A3(1),B5
           NOP             1
           ADD     .L1     A17,A16,A20
	.dwpsn	file "Algoritmos.c",line 103,column 0,is_stmt,isa 0

           SPLOOP  2       ;4                ; (P) 
||         ADD     .L1     A4,A17,A17        ; |Algoritmos.c:107| 
||         MV      .S1     A20,A4

;** --------------------------------------------------------------------------*
$C$L7:    ; PIPED LOOP KERNEL
$C$DW$L$_NearestNeighbour$5$B:
;          EXCLUSIVE CPU CYCLES: 2

           SPMASK          L1,L2
||         ADD     .L1     2,A20,A3
||         ADD     .L2X    1,A20,B4
||         STB     .D1T1   A5,*A4++(3)       ; |Algoritmos.c:104| (P) <0,0> 

           SPMASK          L2
||         ADD     .L2X    A8,B6,B6          ; |Algoritmos.c:103| 
||         STB     .D2T2   B5,*B4++(3)       ; |Algoritmos.c:105| (P) <0,1> 
||         STB     .D1T1   A6,*A3++(3)       ; |Algoritmos.c:106| (P) <0,1> 

	.dwpsn	file "Algoritmos.c",line 108,column 0,is_stmt,isa 0
           SPKERNEL 0,0
$C$DW$L$_NearestNeighbour$5$E:
;** --------------------------------------------------------------------------*
$C$L8:    ; PIPED LOOP EPILOG
;          EXCLUSIVE CPU CYCLES: 1
           NOP             1
;** --------------------------------------------------------------------------*
$C$L9:    
$C$DW$L$_NearestNeighbour$7$B:
;          EXCLUSIVE CPU CYCLES: 7

           CMPLT   .L2     B6,B9,B0          ; |Algoritmos.c:102| 
||         ADD     .L1     3,A7,A7           ; |Algoritmos.c:109| 

   [!B0]   MVK     .L1     0x1,A0            ; nullify predicate
|| [ B0]   B       .S1     $C$L5             ; |Algoritmos.c:102| 

	.dwpsn	file "Algoritmos.c",line 110,column 0,is_stmt,isa 0

   [!A0]   BNOP    .S1     $C$L9,4           ; |Algoritmos.c:103| 
|| [ A0]   ADD     .L1     A7,A9,A3

           ; BRANCHCC OCCURS {$C$L5}         ; |Algoritmos.c:102| 
$C$DW$L$_NearestNeighbour$7$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_NearestNeighbour$8$B:
;          EXCLUSIVE CPU CYCLES: 8

           MPY     .M1     A18,A19,A17       ; |Algoritmos.c:111| 
||         ADD     .L1     1,A18,A18         ; |Algoritmos.c:101| 
||         MVK     .S1     720,A3            ; |Algoritmos.c:101| 
||         MV      .D1X    B7,A7             ; |Algoritmos.c:112| 
||         CMPEQ   .L2X    B8,A8,B0          ; |Algoritmos.c:113| 
||         ZERO    .S2     B6                ; |Algoritmos.c:102| 

           CMPLT   .L1     A18,A3,A0         ; |Algoritmos.c:101| 
|| [ B0]   ADD     .S1X    A19,B7,A7         ; |Algoritmos.c:114| 
|| [ B0]   ADDK    .S2     3840,B7           ; |Algoritmos.c:115| 
|| [!B0]   ADD     .L2     1,B8,B8           ; |Algoritmos.c:113| 
|| [ B0]   MVK     .D2     0x1,B8            ; |Algoritmos.c:116| 

   [ A0]   BNOP    .S1     $C$L4,4           ; |Algoritmos.c:101| 
||         MV      .L1     A8,A0

	.dwpsn	file "Algoritmos.c",line 118,column 0,is_stmt,isa 0
   [ A0]   ADD     .L1     A7,A9,A3
           ; BRANCHCC OCCURS {$C$L4}         ; |Algoritmos.c:101| 
$C$DW$L$_NearestNeighbour$8$E:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 6
	.dwpsn	file "Algoritmos.c",line 119,column 1,is_stmt,isa 0
$C$DW$18	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$18, DW_AT_low_pc(0x00)
	.dwattr $C$DW$18, DW_AT_TI_return
           RETNOP  .S2X    A21,5             ; |Algoritmos.c:119| 
           ; BRANCH OCCURS {A21}             ; |Algoritmos.c:119| 

$C$DW$19	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$19, DW_AT_name("/home/fernandofernandes/NetBeansProjects/C.03/DSP/CSequencial_DSP.03/Algoritmos.asm:$C$L4:1:1421181247")
	.dwattr $C$DW$19, DW_AT_TI_begin_file("Algoritmos.c")
	.dwattr $C$DW$19, DW_AT_TI_begin_line(0x65)
	.dwattr $C$DW$19, DW_AT_TI_end_line(0x76)
$C$DW$20	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$20, DW_AT_low_pc($C$DW$L$_NearestNeighbour$2$B)
	.dwattr $C$DW$20, DW_AT_high_pc($C$DW$L$_NearestNeighbour$2$E)
$C$DW$21	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$21, DW_AT_low_pc($C$DW$L$_NearestNeighbour$8$B)
	.dwattr $C$DW$21, DW_AT_high_pc($C$DW$L$_NearestNeighbour$8$E)

$C$DW$22	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$22, DW_AT_name("/home/fernandofernandes/NetBeansProjects/C.03/DSP/CSequencial_DSP.03/Algoritmos.asm:$C$L5:2:1421181247")
	.dwattr $C$DW$22, DW_AT_TI_begin_file("Algoritmos.c")
	.dwattr $C$DW$22, DW_AT_TI_begin_line(0x66)
	.dwattr $C$DW$22, DW_AT_TI_end_line(0x6e)
$C$DW$23	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$23, DW_AT_low_pc($C$DW$L$_NearestNeighbour$3$B)
	.dwattr $C$DW$23, DW_AT_high_pc($C$DW$L$_NearestNeighbour$3$E)
$C$DW$24	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$24, DW_AT_low_pc($C$DW$L$_NearestNeighbour$7$B)
	.dwattr $C$DW$24, DW_AT_high_pc($C$DW$L$_NearestNeighbour$7$E)

$C$DW$25	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$25, DW_AT_name("/home/fernandofernandes/NetBeansProjects/C.03/DSP/CSequencial_DSP.03/Algoritmos.asm:$C$L7:3:1421181247")
	.dwattr $C$DW$25, DW_AT_TI_begin_file("Algoritmos.c")
	.dwattr $C$DW$25, DW_AT_TI_begin_line(0x67)
	.dwattr $C$DW$25, DW_AT_TI_end_line(0x6c)
$C$DW$26	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$26, DW_AT_low_pc($C$DW$L$_NearestNeighbour$5$B)
	.dwattr $C$DW$26, DW_AT_high_pc($C$DW$L$_NearestNeighbour$5$E)
	.dwendtag $C$DW$25

	.dwendtag $C$DW$22

	.dwendtag $C$DW$19

	.dwattr $C$DW$11, DW_AT_TI_end_file("Algoritmos.c")
	.dwattr $C$DW$11, DW_AT_TI_end_line(0x77)
	.dwattr $C$DW$11, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$11

	.sect	".text"
	.clink
	.global	_YUYVtoRGBPlusZoom

$C$DW$27	.dwtag  DW_TAG_subprogram, DW_AT_name("YUYVtoRGBPlusZoom")
	.dwattr $C$DW$27, DW_AT_low_pc(_YUYVtoRGBPlusZoom)
	.dwattr $C$DW$27, DW_AT_high_pc(0x00)
	.dwattr $C$DW$27, DW_AT_TI_symbol_name("_YUYVtoRGBPlusZoom")
	.dwattr $C$DW$27, DW_AT_external
	.dwattr $C$DW$27, DW_AT_TI_begin_file("Algoritmos.c")
	.dwattr $C$DW$27, DW_AT_TI_begin_line(0x7f)
	.dwattr $C$DW$27, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$27, DW_AT_TI_max_frame_size(0x00)
	.dwattr $C$DW$27, DW_AT_frame_base[DW_OP_breg31 0]
	.dwattr $C$DW$27, DW_AT_TI_skeletal
	.dwpsn	file "Algoritmos.c",line 128,column 71,is_stmt,address _YUYVtoRGBPlusZoom,isa 0
$C$DW$28	.dwtag  DW_TAG_formal_parameter, DW_AT_name("subimage")
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("_subimage")
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$28, DW_AT_location[DW_OP_reg4]
$C$DW$29	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dest")
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("_dest")
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$29, DW_AT_location[DW_OP_reg20]
$C$DW$30	.dwtag  DW_TAG_formal_parameter, DW_AT_name("aux")
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("_aux")
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$30, DW_AT_location[DW_OP_reg6]
$C$DW$31	.dwtag  DW_TAG_formal_parameter, DW_AT_name("scale")
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("_scale")
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$31, DW_AT_location[DW_OP_reg22]

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
;          EXCLUSIVE CPU CYCLES: 20
           MV      .L1X    B3,A28            ; |Algoritmos.c:128| 
           MV      .L1X    B4,A26            ; |Algoritmos.c:128| 
$C$DW$32	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$32, DW_AT_low_pc(0x00)
	.dwattr $C$DW$32, DW_AT_name("_YUYVtoRGB")
	.dwattr $C$DW$32, DW_AT_TI_call

           CALLP   .S2     _YUYVtoRGB,B3
||         MV      .L2X    A6,B4             ; |Algoritmos.c:128| 
||         MV      .L1     A6,A25            ; |Algoritmos.c:128| 
||         MV      .S1X    B6,A27            ; |Algoritmos.c:128| 

$C$RL3:    ; CALL OCCURS {_YUYVtoRGB} {0}    ; |Algoritmos.c:129| 
$C$DW$33	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$33, DW_AT_low_pc(0x00)
	.dwattr $C$DW$33, DW_AT_name("_NearestNeighbour")
	.dwattr $C$DW$33, DW_AT_TI_call

           CALLP   .S2     _NearestNeighbour,B3
||         MV      .L2X    A26,B4            ; |Algoritmos.c:128| 
||         MV      .L1     A27,A6            ; |Algoritmos.c:128| 
||         MV      .S1     A25,A4            ; |Algoritmos.c:130| 

$C$RL4:    ; CALL OCCURS {_NearestNeighbour} {0}  ; |Algoritmos.c:130| 
	.dwpsn	file "Algoritmos.c",line 131,column 1,is_stmt,isa 0
$C$DW$34	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$34, DW_AT_low_pc(0x00)
	.dwattr $C$DW$34, DW_AT_TI_return
           RETNOP  .S2X    A28,5             ; |Algoritmos.c:131| 
           ; BRANCH OCCURS {A28}             ; |Algoritmos.c:131| 
	.dwattr $C$DW$27, DW_AT_TI_end_file("Algoritmos.c")
	.dwattr $C$DW$27, DW_AT_TI_end_line(0x83)
	.dwattr $C$DW$27, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$27

	.sect	".text"
	.clink
	.global	_ImageThreshold

$C$DW$35	.dwtag  DW_TAG_subprogram, DW_AT_name("ImageThreshold")
	.dwattr $C$DW$35, DW_AT_low_pc(_ImageThreshold)
	.dwattr $C$DW$35, DW_AT_high_pc(0x00)
	.dwattr $C$DW$35, DW_AT_TI_symbol_name("_ImageThreshold")
	.dwattr $C$DW$35, DW_AT_external
	.dwattr $C$DW$35, DW_AT_TI_begin_file("Algoritmos.c")
	.dwattr $C$DW$35, DW_AT_TI_begin_line(0x1d)
	.dwattr $C$DW$35, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$35, DW_AT_TI_max_frame_size(0x00)
	.dwattr $C$DW$35, DW_AT_frame_base[DW_OP_breg31 0]
	.dwattr $C$DW$35, DW_AT_TI_skeletal
	.dwpsn	file "Algoritmos.c",line 30,column 34,is_stmt,address _ImageThreshold,isa 0
$C$DW$36	.dwtag  DW_TAG_formal_parameter, DW_AT_name("subimage")
	.dwattr $C$DW$36, DW_AT_TI_symbol_name("_subimage")
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$36, DW_AT_location[DW_OP_reg4]
$C$DW$37	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dest")
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("_dest")
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$37, DW_AT_location[DW_OP_reg20]
$C$DW$38	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cor")
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("_cor")
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$38, DW_AT_location[DW_OP_reg6]

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

           MV      .L2X    A6,B9             ; |Algoritmos.c:30| 
||         MV      .L1     A4,A6             ; |Algoritmos.c:30| 

           LDBU    .D1T1   *+A6(2),A8        ; |Algoritmos.c:42| (P) <0,0> 
           LDBU    .D1T1   *A6++(8),A9       ; |Algoritmos.c:44| (P) <0,2> 
           MVK     .S1     0x80,A5
           LDBU    .D1T2   *-A6(4),B7        ; |Algoritmos.c:44| (P) <0,3> 
           MVKL    .S1     0x38400,A2
           CMPLT   .L1     A8,A5,A0          ; |Algoritmos.c:47| (P) <0,5> 

           MVD     .M1     A0,A0             ; |Algoritmos.c:47| (P) <0,6> Post-sched spill
||         LDBU    .D1T1   *-A6(2),A7        ; |Algoritmos.c:42| (P) <0,5> 
||         MVKH    .S1     0x38400,A2
||         DINT                              ; interrupts off
||         MV      .L2     B4,B8
||         ADD     .L1X    -8,B4,A3

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop found in file               : Algoritmos.c
;*      Loop source line                 : 35
;*      Loop opening brace source line   : 35
;*      Loop closing brace source line   : 50
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
;*        $C$C243:
;*   0              LDBU    .D1T1   *+A6(2),A8        ; |Algoritmos.c:42| 
;*   1              NOP             1
;*   2              LDBU    .D1T1   *A6++(8),A9       ; |Algoritmos.c:44| 
;*   3              LDBU    .D1T2   *-A6(4),B7        ; |Algoritmos.c:44| 
;*   4              NOP             1
;*   5              CMPLT   .L1     A8,A5,A0          ; |Algoritmos.c:47| 
;*     ||           LDBU    .D1T1   *-A6(2),A7        ; |Algoritmos.c:42| 
;*   6              NOP             2
;*   8              STH     .D2T1   A4,*++B4(12)      ; |Algoritmos.c:37|  ^ 
;*     ||           STH     .D1T2   B5,*++A3(12)      ; |Algoritmos.c:39| 
;*     ||           ADD     .S2     B16,B9,B17        ; |Algoritmos.c:48| 
;*     ||           ADD     .L2     B16,B9,B6         ; |Algoritmos.c:48| 
;*   9              STH     .D2T2   B5,*+B4(2)        ; |Algoritmos.c:38|  ^ 
;*     ||           CMPLT   .L1     A9,A5,A1          ; |Algoritmos.c:44| 
;*     ||           ADD     .S2     B8,B17,B6         ; |Algoritmos.c:48| 
;*     ||           ADD     .L2     B8,B6,B17         ; |Algoritmos.c:48| 
;*     ||   [ A2]   BDEC    .S1     $C$C243,A2        ; |Algoritmos.c:35| 
;*  10              ADD     .S2     B9,B16,B6         ; |Algoritmos.c:45| 
;*     ||   [!A0]   STB     .D2T1   A8,*+B6(3)        ; |Algoritmos.c:48|  ^ 
;*     ||           CMPLT   .L1X    B7,A5,A0          ; |Algoritmos.c:44| 
;*     ||           ADD     .L2     B9,B16,B18        ; |Algoritmos.c:45| 
;*  11      [!A1]   STB     .D2T1   A9,*+B6[B8]       ; |Algoritmos.c:45|  ^ 
;*     ||           STH     .D1T2   B5,*+A3(4)        ; |Algoritmos.c:38|  ^ 
;*     ||           ADD     .L2     B8,B18,B6         ; |Algoritmos.c:45| 
;*     ||           CMPLT   .L1     A7,A5,A1          ; |Algoritmos.c:47| 
;*  12              STH     .D2T2   B5,*+B4(10)       ; |Algoritmos.c:39|  ^ 
;*  13              STH     .D1T2   B5,*+A3(2)        ; |Algoritmos.c:37|  ^ 
;*     ||   [!A1]   STB     .D2T1   A7,*+B17(9)       ; |Algoritmos.c:48|  ^ 
;*  14      [!A0]   STB     .D2T2   B7,*+B6(6)        ; |Algoritmos.c:45|  ^ 
;*     ||           ADD     .L2     12,B16,B16        ; |Algoritmos.c:35| 
;*  15              ; BRANCHCC OCCURS {$C$C243}       ; |Algoritmos.c:35| 
;*----------------------------------------------------------------------------*
$C$L10:    ; PIPED LOOP PROLOG
;          EXCLUSIVE CPU CYCLES: 1
	.dwpsn	file "Algoritmos.c",line 35,column 0,is_stmt,isa 0

           ZERO    .L2     B16               ; |Algoritmos.c:32| 
||         ZERO    .S2     B5                ; |Algoritmos.c:32| 
||         SUB     .D2     B4,12,B4
||         SUB     .L1     A2,3,A2
||         ZERO    .S1     A4                ; |Algoritmos.c:32| 
||         LDBU    .D1T1   *+A6(2),A8        ; |Algoritmos.c:42| (P) <1,0> 

;** --------------------------------------------------------------------------*
$C$L11:    ; PIPED LOOP KERNEL
$C$DW$L$_ImageThreshold$3$B:
;          EXCLUSIVE CPU CYCLES: 7

           ADD     .L2     B16,B9,B6         ; |Algoritmos.c:48| <0,8> 
||         ADD     .S2     B16,B9,B17        ; |Algoritmos.c:48| <0,8> 
||         STH     .D1T2   B5,*++A3(12)      ; |Algoritmos.c:39| <0,8> 
||         STH     .D2T1   A4,*++B4(12)      ; |Algoritmos.c:37| <0,8>  ^ 

   [ A2]   BDEC    .S1     $C$L11,A2         ; |Algoritmos.c:35| <0,9> 
||         ADD     .L2     B8,B6,B17         ; |Algoritmos.c:48| <0,9> 
||         ADD     .S2     B8,B17,B6         ; |Algoritmos.c:48| <0,9> 
||         STH     .D2T2   B5,*+B4(2)        ; |Algoritmos.c:38| <0,9>  ^ 
||         CMPLT   .L1     A9,A5,A1          ; |Algoritmos.c:44| <0,9> 
||         LDBU    .D1T1   *A6++(8),A9       ; |Algoritmos.c:44| <1,2> 

           ADD     .L2     B9,B16,B18        ; |Algoritmos.c:45| <0,10> 
||         ADD     .S2     B9,B16,B6         ; |Algoritmos.c:45| <0,10> 
|| [!A0]   STB     .D2T1   A8,*+B6(3)        ; |Algoritmos.c:48| <0,10>  ^ 
||         CMPLT   .L1X    B7,A5,A0          ; |Algoritmos.c:44| <0,10> 
||         LDBU    .D1T2   *-A6(4),B7        ; |Algoritmos.c:44| <1,3> 

           ADD     .L2     B8,B18,B6         ; |Algoritmos.c:45| <0,11> 
||         CMPLT   .L1     A7,A5,A1          ; |Algoritmos.c:47| <0,11> 
||         STH     .D1T2   B5,*+A3(4)        ; |Algoritmos.c:38| <0,11>  ^ 
|| [!A1]   STB     .D2T1   A9,*+B6[B8]       ; |Algoritmos.c:45| <0,11>  ^ 

           ROTL    .M1     A0,0,A0           ; |Algoritmos.c:44| <0,12> Post-sched spill
||         STH     .D2T2   B5,*+B4(10)       ; |Algoritmos.c:39| <0,12>  ^ 
||         CMPLT   .L1     A8,A5,A0          ; |Algoritmos.c:47| <1,5> 
||         LDBU    .D1T1   *-A6(2),A7        ; |Algoritmos.c:42| <1,5> 

           STH     .D1T2   B5,*+A3(2)        ; |Algoritmos.c:37| <0,13>  ^ 
|| [!A1]   STB     .D2T1   A7,*+B17(9)       ; |Algoritmos.c:48| <0,13>  ^ 
||         MVD     .M1     A0,A0             ; |Algoritmos.c:47| <1,6> Post-sched spill

	.dwpsn	file "Algoritmos.c",line 50,column 0,is_stmt,isa 0

           ADD     .L2     12,B16,B16        ; |Algoritmos.c:35| <0,14> 
|| [!A0]   STB     .D2T2   B7,*+B6(6)        ; |Algoritmos.c:45| <0,14>  ^ 
||         LDBU    .D1T1   *+A6(2),A8        ; |Algoritmos.c:42| <2,0> 

$C$DW$L$_ImageThreshold$3$E:
;** --------------------------------------------------------------------------*
$C$L12:    ; PIPED LOOP EPILOG
;          EXCLUSIVE CPU CYCLES: 7

           ADD     .L2     B16,B9,B17        ; |Algoritmos.c:48| (E) <1,8> 
||         ADD     .S2     B16,B9,B6         ; |Algoritmos.c:48| (E) <1,8> 
||         STH     .D1T2   B5,*++A3(12)      ; |Algoritmos.c:39| (E) <1,8> 
||         STH     .D2T1   A4,*++B4(12)      ; |Algoritmos.c:37| (E) <1,8>  ^ 

           ADD     .L2     B8,B17,B17        ; |Algoritmos.c:48| (E) <1,9> 
||         ADD     .S2     B8,B6,B6          ; |Algoritmos.c:48| (E) <1,9> 
||         STH     .D2T2   B5,*+B4(2)        ; |Algoritmos.c:38| (E) <1,9>  ^ 
||         CMPLT   .L1     A9,A5,A1          ; |Algoritmos.c:44| (E) <1,9> 
||         LDBU    .D1T1   *A6++(8),A9       ; |Algoritmos.c:44| (E) <2,2> 

           ADD     .L2     B9,B16,B18        ; |Algoritmos.c:45| (E) <1,10> 
||         ADD     .S2     B9,B16,B6         ; |Algoritmos.c:45| (E) <1,10> 
|| [!A0]   STB     .D2T1   A8,*+B6(3)        ; |Algoritmos.c:48| (E) <1,10>  ^ 
||         CMPLT   .L1X    B7,A5,A16         ; |Algoritmos.c:44| (E) <1,10> 
||         LDBU    .D1T2   *-A6(4),B7        ; |Algoritmos.c:44| (E) <2,3> 

           ADD     .L2     B8,B18,B6         ; |Algoritmos.c:45| (E) <1,11> 
||         CMPLT   .L1     A7,A5,A1          ; |Algoritmos.c:47| (E) <1,11> 
||         STH     .D1T2   B5,*+A3(4)        ; |Algoritmos.c:38| (E) <1,11>  ^ 
|| [!A1]   STB     .D2T1   A9,*+B6[B8]       ; |Algoritmos.c:45| (E) <1,11>  ^ 

           ROTL    .M1     A16,0,A0          ; |Algoritmos.c:44| (E) <1,12> Post-sched spill
||         STH     .D2T2   B5,*+B4(10)       ; |Algoritmos.c:39| (E) <1,12>  ^ 
||         CMPLT   .L1     A8,A5,A6          ; |Algoritmos.c:47| (E) <2,5> 
||         LDBU    .D1T1   *-A6(2),A7        ; |Algoritmos.c:42| (E) <2,5> 

           STH     .D1T2   B5,*+A3(2)        ; |Algoritmos.c:37| (E) <1,13>  ^ 
|| [!A1]   STB     .D2T1   A7,*+B17(9)       ; |Algoritmos.c:48| (E) <1,13>  ^ 
||         MVD     .M1     A6,A0             ; |Algoritmos.c:47| (E) <2,6> Post-sched spill

           CMPLT   .L1     A9,A5,A1          ; |Algoritmos.c:44| (E) <2,9> 
||         ADD     .L2     12,B16,B18        ; |Algoritmos.c:35| (E) <1,14> 
|| [!A0]   STB     .D2T2   B7,*+B6(6)        ; |Algoritmos.c:45| (E) <1,14>  ^ 

;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 8

           ADD     .L2     B18,B9,B6         ; |Algoritmos.c:48| (E) <2,8> 
||         ADD     .S2     B18,B9,B17        ; |Algoritmos.c:48| (E) <2,8> 

           ADD     .L2     B8,B17,B6         ; |Algoritmos.c:48| (E) <2,9> 
||         ADD     .S2     B8,B6,B17         ; |Algoritmos.c:48| (E) <2,9> 
||         STH     .D1T2   B5,*++A3(12)      ; |Algoritmos.c:39| (E) <2,8> 
||         STH     .D2T1   A4,*++B4(12)      ; |Algoritmos.c:37| (E) <2,8>  ^ 

$C$DW$39	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$39, DW_AT_low_pc(0x00)
	.dwattr $C$DW$39, DW_AT_TI_return

           RET     .S2     B3                ; |Algoritmos.c:51| 
||         STH     .D2T2   B5,*+B4(2)        ; |Algoritmos.c:38| (E) <2,9>  ^ 

           ADD     .L2     B9,B18,B6         ; |Algoritmos.c:45| (E) <2,10> 
|| [!A0]   STB     .D2T1   A8,*+B6(3)        ; |Algoritmos.c:48| (E) <2,10>  ^ 

           STH     .D1T2   B5,*+A3(4)        ; |Algoritmos.c:38| (E) <2,11>  ^ 
|| [!A1]   STB     .D2T1   A9,*+B6[B8]       ; |Algoritmos.c:45| (E) <2,11>  ^ 

           STH     .D2T2   B5,*+B4(10)       ; |Algoritmos.c:39| (E) <2,12>  ^ 
||         CMPLT   .L1     A7,A5,A1          ; |Algoritmos.c:47| (E) <2,11> 
||         ADD     .L2     B9,B18,B16        ; |Algoritmos.c:45| (E) <2,10> 

           STH     .D1T2   B5,*+A3(2)        ; |Algoritmos.c:37| (E) <2,13>  ^ 
|| [!A1]   STB     .D2T1   A7,*+B17(9)       ; |Algoritmos.c:48| (E) <2,13>  ^ 
||         ADD     .L2     B8,B16,B6         ; |Algoritmos.c:45| (E) <2,11> 
||         CMPLT   .L1X    B7,A5,A0          ; |Algoritmos.c:44| (E) <2,10> 

	.dwpsn	file "Algoritmos.c",line 51,column 1,is_stmt,isa 0

   [!A0]   STB     .D2T2   B7,*+B6(6)        ; |Algoritmos.c:45| (E) <2,14>  ^ 
||         RINT                              ; interrupts on

           ; BRANCH OCCURS {B3}              ; |Algoritmos.c:51| 

$C$DW$40	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$40, DW_AT_name("/home/fernandofernandes/NetBeansProjects/C.03/DSP/CSequencial_DSP.03/Algoritmos.asm:$C$L11:1:1421181247")
	.dwattr $C$DW$40, DW_AT_TI_begin_file("Algoritmos.c")
	.dwattr $C$DW$40, DW_AT_TI_begin_line(0x23)
	.dwattr $C$DW$40, DW_AT_TI_end_line(0x32)
$C$DW$41	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$41, DW_AT_low_pc($C$DW$L$_ImageThreshold$3$B)
	.dwattr $C$DW$41, DW_AT_high_pc($C$DW$L$_ImageThreshold$3$E)
	.dwendtag $C$DW$40

	.dwattr $C$DW$35, DW_AT_TI_end_file("Algoritmos.c")
	.dwattr $C$DW$35, DW_AT_TI_end_line(0x33)
	.dwattr $C$DW$35, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$35

	.sect	".text"
	.clink
	.global	_ImageThresholdPlusZoom

$C$DW$42	.dwtag  DW_TAG_subprogram, DW_AT_name("ImageThresholdPlusZoom")
	.dwattr $C$DW$42, DW_AT_low_pc(_ImageThresholdPlusZoom)
	.dwattr $C$DW$42, DW_AT_high_pc(0x00)
	.dwattr $C$DW$42, DW_AT_TI_symbol_name("_ImageThresholdPlusZoom")
	.dwattr $C$DW$42, DW_AT_external
	.dwattr $C$DW$42, DW_AT_TI_begin_file("Algoritmos.c")
	.dwattr $C$DW$42, DW_AT_TI_begin_line(0x79)
	.dwattr $C$DW$42, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$42, DW_AT_TI_max_frame_size(0x00)
	.dwattr $C$DW$42, DW_AT_frame_base[DW_OP_breg31 0]
	.dwattr $C$DW$42, DW_AT_TI_skeletal
	.dwpsn	file "Algoritmos.c",line 122,column 97,is_stmt,address _ImageThresholdPlusZoom,isa 0
$C$DW$43	.dwtag  DW_TAG_formal_parameter, DW_AT_name("subimage")
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("_subimage")
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$43, DW_AT_location[DW_OP_reg4]
$C$DW$44	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dest")
	.dwattr $C$DW$44, DW_AT_TI_symbol_name("_dest")
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$44, DW_AT_location[DW_OP_reg20]
$C$DW$45	.dwtag  DW_TAG_formal_parameter, DW_AT_name("aux")
	.dwattr $C$DW$45, DW_AT_TI_symbol_name("_aux")
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$45, DW_AT_location[DW_OP_reg6]
$C$DW$46	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cor")
	.dwattr $C$DW$46, DW_AT_TI_symbol_name("_cor")
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$46, DW_AT_location[DW_OP_reg22]
$C$DW$47	.dwtag  DW_TAG_formal_parameter, DW_AT_name("scale")
	.dwattr $C$DW$47, DW_AT_TI_symbol_name("_scale")
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$47, DW_AT_location[DW_OP_reg8]

;******************************************************************************
;* FUNCTION NAME: ImageThresholdPlusZoom                                      *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,A16,A17,A18,A19,A20,A21,A22,B16,B17,B18,*
;*                           B30,B31                                          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,DP,SP,A16,A17,A18,A19,A20,A21,A22,B16,  *
;*                           B17,B18,B30,B31                                  *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_ImageThresholdPlusZoom:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 8

           MV      .L2X    A6,B16            ; |Algoritmos.c:122| 
||         MV      .L1     A6,A18            ; |Algoritmos.c:122| 
||         SUB     .S1     A6,12,A4
||         MV      .D1     A4,A6             ; |Algoritmos.c:122| 

           MV      .L1     A8,A16            ; |Algoritmos.c:122| 
||         LDBU    .D1T1   *+A6(2),A8        ; |Algoritmos.c:42| (P) <0,0> 

           MVK     .S1     0x80,A5
           LDBU    .D1T1   *A6++(8),A9       ; |Algoritmos.c:44| (P) <0,2> 
           MVKL    .S1     0x38400,A2
           MV      .L1X    B3,A22            ; |Algoritmos.c:122| 

           CMPLT   .L1     A8,A5,A0          ; |Algoritmos.c:47| (P) <0,5> 
||         LDBU    .D1T2   *-A6(4),B7        ; |Algoritmos.c:44| (P) <0,3> 
||         MV      .S1X    B4,A17            ; |Algoritmos.c:122| 

           MVD     .M1     A0,A0             ; |Algoritmos.c:47| (P) <0,6> Post-sched spill
||         LDBU    .D1T1   *-A6(2),A7        ; |Algoritmos.c:42| (P) <0,5> 
||         ADD     .L1     4,A4,A3
||         MVKH    .S1     0x38400,A2
||         DINT                              ; interrupts off
||         ZERO    .L2     B5                ; |Algoritmos.c:32| 

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop found in file               : Algoritmos.c
;*      Loop source line                 : 35
;*      Loop opening brace source line   : 35
;*      Loop closing brace source line   : 50
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
;*        $C$C324:
;*   0              LDBU    .D1T1   *+A6(2),A8        ; |Algoritmos.c:42| 
;*   1              NOP             1
;*   2              LDBU    .D1T1   *A6++(8),A9       ; |Algoritmos.c:44| 
;*   3              LDBU    .D1T2   *-A6(4),B7        ; |Algoritmos.c:44| 
;*   4              NOP             1
;*   5              CMPLT   .L1     A8,A5,A0          ; |Algoritmos.c:47| 
;*     ||           LDBU    .D1T1   *-A6(2),A7        ; |Algoritmos.c:42| 
;*   6              NOP             2
;*   8              STH     .D2T1   A4,*++B4(12)      ; |Algoritmos.c:37|  ^ 
;*     ||           STH     .D1T2   B5,*++A3(12)      ; |Algoritmos.c:39| 
;*     ||           ADD     .S2     B9,B8,B17         ; |Algoritmos.c:48| 
;*     ||           ADD     .L2     B9,B8,B6          ; |Algoritmos.c:48| 
;*   9              STH     .D2T2   B5,*+B4(2)        ; |Algoritmos.c:38|  ^ 
;*     ||           CMPLT   .L1     A9,A5,A1          ; |Algoritmos.c:44| 
;*     ||           ADD     .S2     B16,B17,B6        ; |Algoritmos.c:48| 
;*     ||           ADD     .L2     B16,B6,B17        ; |Algoritmos.c:48| 
;*     ||   [ A2]   BDEC    .S1     $C$C324,A2        ; |Algoritmos.c:35| 
;*  10              ADD     .S2     B8,B9,B6          ; |Algoritmos.c:45| 
;*     ||   [!A0]   STB     .D2T1   A8,*+B6(3)        ; |Algoritmos.c:48|  ^ 
;*     ||           CMPLT   .L1X    B7,A5,A0          ; |Algoritmos.c:44| 
;*     ||           ADD     .L2     B8,B9,B18         ; |Algoritmos.c:45| 
;*  11      [!A1]   STB     .D2T1   A9,*+B6[B16]      ; |Algoritmos.c:45|  ^ 
;*     ||           STH     .D1T2   B5,*+A3(4)        ; |Algoritmos.c:38|  ^ 
;*     ||           ADD     .L2     B16,B18,B6        ; |Algoritmos.c:45| 
;*     ||           CMPLT   .L1     A7,A5,A1          ; |Algoritmos.c:47| 
;*  12              STH     .D2T2   B5,*+B4(10)       ; |Algoritmos.c:39|  ^ 
;*  13              STH     .D1T2   B5,*+A3(2)        ; |Algoritmos.c:37|  ^ 
;*     ||   [!A1]   STB     .D2T1   A7,*+B17(9)       ; |Algoritmos.c:48|  ^ 
;*  14      [!A0]   STB     .D2T2   B7,*+B6(6)        ; |Algoritmos.c:45|  ^ 
;*     ||           ADD     .L2     12,B9,B9          ; |Algoritmos.c:35| 
;*  15              ; BRANCHCC OCCURS {$C$C324}       ; |Algoritmos.c:35| 
;*----------------------------------------------------------------------------*
$C$L13:    ; PIPED LOOP PROLOG
;          EXCLUSIVE CPU CYCLES: 1
	.dwpsn	file "Algoritmos.c",line 35,column 0,is_stmt,isa 0

           MV      .L2     B6,B8
||         ZERO    .S2     B9                ; |Algoritmos.c:32| 
||         SUB     .L1     A2,3,A2
||         MV      .D2X    A4,B4
||         ZERO    .S1     A4                ; |Algoritmos.c:32| 
||         LDBU    .D1T1   *+A6(2),A8        ; |Algoritmos.c:42| (P) <1,0> 

;** --------------------------------------------------------------------------*
$C$L14:    ; PIPED LOOP KERNEL
$C$DW$L$_ImageThresholdPlusZoom$3$B:
;          EXCLUSIVE CPU CYCLES: 7

           ADD     .L2     B9,B8,B6          ; |Algoritmos.c:48| <0,8> 
||         ADD     .S2     B9,B8,B17         ; |Algoritmos.c:48| <0,8> 
||         STH     .D1T2   B5,*++A3(12)      ; |Algoritmos.c:39| <0,8> 
||         STH     .D2T1   A4,*++B4(12)      ; |Algoritmos.c:37| <0,8>  ^ 

   [ A2]   BDEC    .S1     $C$L14,A2         ; |Algoritmos.c:35| <0,9> 
||         ADD     .L2     B16,B6,B17        ; |Algoritmos.c:48| <0,9> 
||         ADD     .S2     B16,B17,B6        ; |Algoritmos.c:48| <0,9> 
||         STH     .D2T2   B5,*+B4(2)        ; |Algoritmos.c:38| <0,9>  ^ 
||         CMPLT   .L1     A9,A5,A1          ; |Algoritmos.c:44| <0,9> 
||         LDBU    .D1T1   *A6++(8),A9       ; |Algoritmos.c:44| <1,2> 

           ADD     .L2     B8,B9,B18         ; |Algoritmos.c:45| <0,10> 
||         ADD     .S2     B8,B9,B6          ; |Algoritmos.c:45| <0,10> 
|| [!A0]   STB     .D2T1   A8,*+B6(3)        ; |Algoritmos.c:48| <0,10>  ^ 
||         CMPLT   .L1X    B7,A5,A0          ; |Algoritmos.c:44| <0,10> 
||         LDBU    .D1T2   *-A6(4),B7        ; |Algoritmos.c:44| <1,3> 

           ADD     .L2     B16,B18,B6        ; |Algoritmos.c:45| <0,11> 
||         CMPLT   .L1     A7,A5,A1          ; |Algoritmos.c:47| <0,11> 
||         STH     .D1T2   B5,*+A3(4)        ; |Algoritmos.c:38| <0,11>  ^ 
|| [!A1]   STB     .D2T1   A9,*+B6[B16]      ; |Algoritmos.c:45| <0,11>  ^ 

           ROTL    .M1     A0,0,A0           ; |Algoritmos.c:44| <0,12> Post-sched spill
||         STH     .D2T2   B5,*+B4(10)       ; |Algoritmos.c:39| <0,12>  ^ 
||         CMPLT   .L1     A8,A5,A0          ; |Algoritmos.c:47| <1,5> 
||         LDBU    .D1T1   *-A6(2),A7        ; |Algoritmos.c:42| <1,5> 

           STH     .D1T2   B5,*+A3(2)        ; |Algoritmos.c:37| <0,13>  ^ 
|| [!A1]   STB     .D2T1   A7,*+B17(9)       ; |Algoritmos.c:48| <0,13>  ^ 
||         MVD     .M1     A0,A0             ; |Algoritmos.c:47| <1,6> Post-sched spill

	.dwpsn	file "Algoritmos.c",line 50,column 0,is_stmt,isa 0

           ADD     .L2     12,B9,B9          ; |Algoritmos.c:35| <0,14> 
|| [!A0]   STB     .D2T2   B7,*+B6(6)        ; |Algoritmos.c:45| <0,14>  ^ 
||         LDBU    .D1T1   *+A6(2),A8        ; |Algoritmos.c:42| <2,0> 

$C$DW$L$_ImageThresholdPlusZoom$3$E:
;** --------------------------------------------------------------------------*
$C$L15:    ; PIPED LOOP EPILOG
;          EXCLUSIVE CPU CYCLES: 7

           ADD     .L2     B9,B8,B6          ; |Algoritmos.c:48| (E) <1,8> 
||         ADD     .S2     B9,B8,B17         ; |Algoritmos.c:48| (E) <1,8> 
||         STH     .D1T2   B5,*++A3(12)      ; |Algoritmos.c:39| (E) <1,8> 
||         STH     .D2T1   A4,*++B4(12)      ; |Algoritmos.c:37| (E) <1,8>  ^ 

           ADD     .L2     B16,B6,B17        ; |Algoritmos.c:48| (E) <1,9> 
||         ADD     .S2     B16,B17,B6        ; |Algoritmos.c:48| (E) <1,9> 
||         STH     .D2T2   B5,*+B4(2)        ; |Algoritmos.c:38| (E) <1,9>  ^ 
||         CMPLT   .L1     A9,A5,A1          ; |Algoritmos.c:44| (E) <1,9> 
||         LDBU    .D1T1   *A6++(8),A9       ; |Algoritmos.c:44| (E) <2,2> 

           ADD     .L2     B8,B9,B18         ; |Algoritmos.c:45| (E) <1,10> 
||         ADD     .S2     B8,B9,B6          ; |Algoritmos.c:45| (E) <1,10> 
|| [!A0]   STB     .D2T1   A8,*+B6(3)        ; |Algoritmos.c:48| (E) <1,10>  ^ 
||         CMPLT   .L1X    B7,A5,A0          ; |Algoritmos.c:44| (E) <1,10> 
||         LDBU    .D1T2   *-A6(4),B7        ; |Algoritmos.c:44| (E) <2,3> 

           ADD     .L2     B16,B18,B6        ; |Algoritmos.c:45| (E) <1,11> 
||         CMPLT   .L1     A7,A5,A1          ; |Algoritmos.c:47| (E) <1,11> 
||         STH     .D1T2   B5,*+A3(4)        ; |Algoritmos.c:38| (E) <1,11>  ^ 
|| [!A1]   STB     .D2T1   A9,*+B6[B16]      ; |Algoritmos.c:45| (E) <1,11>  ^ 

           MV      .S1     A16,A6            ; |Algoritmos.c:124| 
||         ROTL    .M1     A0,0,A0           ; |Algoritmos.c:44| (E) <1,12> Post-sched spill
||         STH     .D2T2   B5,*+B4(10)       ; |Algoritmos.c:39| (E) <1,12>  ^ 
||         CMPLT   .L1     A8,A5,A0          ; |Algoritmos.c:47| (E) <2,5> 
||         LDBU    .D1T1   *-A6(2),A7        ; |Algoritmos.c:42| (E) <2,5> 

           STH     .D1T2   B5,*+A3(2)        ; |Algoritmos.c:37| (E) <1,13>  ^ 
|| [!A1]   STB     .D2T1   A7,*+B17(9)       ; |Algoritmos.c:48| (E) <1,13>  ^ 
||         MVD     .M1     A0,A0             ; |Algoritmos.c:47| (E) <2,6> Post-sched spill

           CMPLT   .L1     A9,A5,A1          ; |Algoritmos.c:44| (E) <2,9> 
||         ADD     .L2     12,B9,B9          ; |Algoritmos.c:35| (E) <1,14> 
|| [!A0]   STB     .D2T2   B7,*+B6(6)        ; |Algoritmos.c:45| (E) <1,14>  ^ 

;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 18

           STH     .D1T2   B5,*++A3(12)      ; |Algoritmos.c:39| (E) <2,8> 
||         STH     .D2T1   A4,*++B4(12)      ; |Algoritmos.c:37| (E) <2,8>  ^ 
||         ADD     .L2     B9,B8,B6          ; |Algoritmos.c:48| (E) <2,8> 
||         ADD     .S2     B9,B8,B17         ; |Algoritmos.c:48| (E) <2,8> 

           STH     .D2T2   B5,*+B4(2)        ; |Algoritmos.c:38| (E) <2,9>  ^ 
||         ADD     .L2     B16,B6,B17        ; |Algoritmos.c:48| (E) <2,9> 
||         ADD     .S2     B16,B17,B6        ; |Algoritmos.c:48| (E) <2,9> 

   [!A0]   STB     .D2T1   A8,*+B6(3)        ; |Algoritmos.c:48| (E) <2,10>  ^ 
||         ADD     .L2     B8,B9,B6          ; |Algoritmos.c:45| (E) <2,10> 

           STH     .D1T2   B5,*+A3(4)        ; |Algoritmos.c:38| (E) <2,11>  ^ 
|| [!A1]   STB     .D2T1   A9,*+B6[B16]      ; |Algoritmos.c:45| (E) <2,11>  ^ 

           STH     .D2T2   B5,*+B4(10)       ; |Algoritmos.c:39| (E) <2,12>  ^ 
||         CMPLT   .L1     A7,A5,A1          ; |Algoritmos.c:47| (E) <2,11> 
||         ADD     .L2     B8,B9,B18         ; |Algoritmos.c:45| (E) <2,10> 

           STH     .D1T2   B5,*+A3(2)        ; |Algoritmos.c:37| (E) <2,13>  ^ 
|| [!A1]   STB     .D2T1   A7,*+B17(9)       ; |Algoritmos.c:48| (E) <2,13>  ^ 
||         ADD     .L2     B16,B18,B6        ; |Algoritmos.c:45| (E) <2,11> 
||         CMPLT   .L1X    B7,A5,A0          ; |Algoritmos.c:44| (E) <2,10> 
||         RINT                              ; interrupts on

$C$DW$48	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$48, DW_AT_low_pc(0x00)
	.dwattr $C$DW$48, DW_AT_name("_NearestNeighbour")
	.dwattr $C$DW$48, DW_AT_TI_call

           CALLP   .S2     _NearestNeighbour,B3
|| [!A0]   STB     .D2T2   B7,*+B6(6)        ; |Algoritmos.c:45| (E) <2,14>  ^ 
||         MV      .L2X    A17,B4            ; |Algoritmos.c:124| 
||         MV      .L1     A18,A4            ; |Algoritmos.c:124| 

$C$RL5:    ; CALL OCCURS {_NearestNeighbour} {0}  ; |Algoritmos.c:124| 
	.dwpsn	file "Algoritmos.c",line 125,column 1,is_stmt,isa 0
$C$DW$49	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$49, DW_AT_low_pc(0x00)
	.dwattr $C$DW$49, DW_AT_TI_return
           RETNOP  .S2X    A22,5             ; |Algoritmos.c:125| 
           ; BRANCH OCCURS {A22}             ; |Algoritmos.c:125| 

$C$DW$50	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$50, DW_AT_name("/home/fernandofernandes/NetBeansProjects/C.03/DSP/CSequencial_DSP.03/Algoritmos.asm:$C$L14:1:1421181247")
	.dwattr $C$DW$50, DW_AT_TI_begin_file("Algoritmos.c")
	.dwattr $C$DW$50, DW_AT_TI_begin_line(0x23)
	.dwattr $C$DW$50, DW_AT_TI_end_line(0x32)
$C$DW$51	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$51, DW_AT_low_pc($C$DW$L$_ImageThresholdPlusZoom$3$B)
	.dwattr $C$DW$51, DW_AT_high_pc($C$DW$L$_ImageThresholdPlusZoom$3$E)
	.dwendtag $C$DW$50

	.dwattr $C$DW$42, DW_AT_TI_end_file("Algoritmos.c")
	.dwattr $C$DW$42, DW_AT_TI_end_line(0x7d)
	.dwattr $C$DW$42, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$42

	.sect	".text"
	.clink
	.global	_Grayscale

$C$DW$52	.dwtag  DW_TAG_subprogram, DW_AT_name("Grayscale")
	.dwattr $C$DW$52, DW_AT_low_pc(_Grayscale)
	.dwattr $C$DW$52, DW_AT_high_pc(0x00)
	.dwattr $C$DW$52, DW_AT_TI_symbol_name("_Grayscale")
	.dwattr $C$DW$52, DW_AT_external
	.dwattr $C$DW$52, DW_AT_TI_begin_file("Algoritmos.c")
	.dwattr $C$DW$52, DW_AT_TI_begin_line(0x03)
	.dwattr $C$DW$52, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$52, DW_AT_TI_max_frame_size(0x10)
	.dwattr $C$DW$52, DW_AT_frame_base[DW_OP_breg31 16]
	.dwattr $C$DW$52, DW_AT_TI_skeletal
	.dwpsn	file "Algoritmos.c",line 3,column 95,is_stmt,address _Grayscale,isa 0
$C$DW$53	.dwtag  DW_TAG_formal_parameter, DW_AT_name("subimage")
	.dwattr $C$DW$53, DW_AT_TI_symbol_name("_subimage")
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$53, DW_AT_location[DW_OP_reg4]
$C$DW$54	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dest")
	.dwattr $C$DW$54, DW_AT_TI_symbol_name("_dest")
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$54, DW_AT_location[DW_OP_reg20]

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
;*      Loop source line                 : 11
;*      Loop opening brace source line   : 11
;*      Loop closing brace source line   : 26
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
;*        $C$C360:
;*   0              LDW     .D1T1   *A7++,A3          ; |Algoritmos.c:12| 
;*   1              NOP             5
;*   6              STW     .D2T1   A3,*+SP(4)        ; |Algoritmos.c:12|  ^ 
;*   7              LDBU    .D2T2   *+SP(4),B5        ; |Algoritmos.c:14|  ^ 
;*   8              NOP             1
;*   9              LDBU    .D2T1   *+SP(6),A4        ; |Algoritmos.c:18|  ^ 
;*  10              NOP             5
;*  15              STB     .D2T2   B5,*+SP(10)       ; |Algoritmos.c:17|  ^ 
;*  16              STB     .D2T2   B5,*+SP(8)        ; |Algoritmos.c:14|  ^ 
;*  17              STB     .D2T2   B5,*+SP(9)        ; |Algoritmos.c:15|  ^ 
;*  18              NOP             2
;*  20              LDHU    .D2T2   *+SP(8),B4        ; |Algoritmos.c:23|  ^ 
;*  21              NOP             1
;*  22              STB     .D2T1   A4,*+SP(12)       ; |Algoritmos.c:20|  ^ 
;*  23              STB     .D2T1   A4,*+SP(13)       ; |Algoritmos.c:21|  ^ 
;*  24              LDHU    .D2T2   *+SP(12),B4       ; |Algoritmos.c:25|  ^ 
;*  25              STB     .D2T1   A4,*+SP(11)       ; |Algoritmos.c:18|  ^ 
;*     ||           STH     .D1T2   B4,*A8++(6)       ; |Algoritmos.c:23| 
;*  26              LDHU    .D2T1   *+SP(10),A3       ; |Algoritmos.c:24|  ^ 
;*  27              NOP             3
;*  30              STH     .D1T2   B4,*A5++(6)       ; |Algoritmos.c:25| 
;*  31              STH     .D1T1   A3,*A6++(6)       ; |Algoritmos.c:24| 
;*     ||           SPBR            $C$C360
;*  32              NOP             4
;*  36              ; BRANCHCC OCCURS {$C$C360}       ; |Algoritmos.c:11| 
;*----------------------------------------------------------------------------*
$C$L16:    ; PIPED LOOP PROLOG
;          EXCLUSIVE CPU CYCLES: 25
	.dwpsn	file "Algoritmos.c",line 11,column 0,is_stmt,isa 0

           SPLOOPD 12      ;36               ; (P) 
||         MV      .L1     A4,A7
||         MVC     .S2     B6,ILC

;** --------------------------------------------------------------------------*
$C$L17:    ; PIPED LOOP KERNEL
$C$DW$L$_Grayscale$3$B:
;          EXCLUSIVE CPU CYCLES: 12
           LDW     .D1T1   *A7++,A3          ; |Algoritmos.c:12| (P) <0,0> 
           NOP             4

           SPMASK          D2
||         SUB     .D2     SP,16,SP          ; |Algoritmos.c:3| 

           STW     .D2T1   A3,*+SP(4)        ; |Algoritmos.c:12| (P) <0,6>  ^ 
           LDBU    .D2T2   *+SP(4),B5        ; |Algoritmos.c:14| (P) <0,7>  ^ 
           NOP             1
           LDBU    .D2T1   *+SP(6),A4        ; |Algoritmos.c:18| (P) <0,9>  ^ 
           NOP             5
           STB     .D2T2   B5,*+SP(10)       ; |Algoritmos.c:17| (P) <0,15>  ^ 
           STB     .D2T2   B5,*+SP(8)        ; |Algoritmos.c:14| (P) <0,16>  ^ 
           STB     .D2T2   B5,*+SP(9)        ; |Algoritmos.c:15| (P) <0,17>  ^ 

           SPMASK          L1
||         MV      .L1X    B4,A8

           SPMASK          L1
||         ADD     .L1X    4,B4,A5

           SPMASK          L1
||         ADD     .L1X    2,B4,A6
||         LDHU    .D2T2   *+SP(8),B4        ; |Algoritmos.c:23| (P) <0,20>  ^ 

           NOP             1
           STB     .D2T1   A4,*+SP(12)       ; |Algoritmos.c:20| (P) <0,22>  ^ 
           STB     .D2T1   A4,*+SP(13)       ; |Algoritmos.c:21| (P) <0,23>  ^ 
           LDHU    .D2T2   *+SP(12),B4       ; |Algoritmos.c:25| <0,24>  ^ 

           STH     .D1T2   B4,*A8++(6)       ; |Algoritmos.c:23| <0,25> 
||         STB     .D2T1   A4,*+SP(11)       ; |Algoritmos.c:18| <0,25>  ^ 

           LDHU    .D2T1   *+SP(10),A3       ; |Algoritmos.c:24| <0,26>  ^ 
           NOP             3
           STH     .D1T2   B4,*A5++(6)       ; |Algoritmos.c:25| <0,30> 
	.dwpsn	file "Algoritmos.c",line 26,column 0,is_stmt,isa 0

           SPKERNEL 1,0
||         STH     .D1T1   A3,*A6++(6)       ; |Algoritmos.c:24| <0,31> 

$C$DW$L$_Grayscale$3$E:
;** --------------------------------------------------------------------------*
$C$L18:    ; PIPED LOOP EPILOG
;          EXCLUSIVE CPU CYCLES: 20
           NOP             2
$C$DW$55	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$55, DW_AT_low_pc(0x00)
	.dwattr $C$DW$55, DW_AT_TI_return
           RET     .S2     B3                ; |Algoritmos.c:27| 
           ADDK    .S2     16,SP             ; |Algoritmos.c:27| 
	.dwpsn	file "Algoritmos.c",line 27,column 1,is_stmt,isa 0
           NOP             4
           ; BRANCH OCCURS {B3}              ; |Algoritmos.c:27| 

$C$DW$56	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$56, DW_AT_name("/home/fernandofernandes/NetBeansProjects/C.03/DSP/CSequencial_DSP.03/Algoritmos.asm:$C$L17:1:1421181247")
	.dwattr $C$DW$56, DW_AT_TI_begin_file("Algoritmos.c")
	.dwattr $C$DW$56, DW_AT_TI_begin_line(0x0b)
	.dwattr $C$DW$56, DW_AT_TI_end_line(0x1a)
$C$DW$57	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$57, DW_AT_low_pc($C$DW$L$_Grayscale$3$B)
	.dwattr $C$DW$57, DW_AT_high_pc($C$DW$L$_Grayscale$3$E)
	.dwendtag $C$DW$56

	.dwattr $C$DW$52, DW_AT_TI_end_file("Algoritmos.c")
	.dwattr $C$DW$52, DW_AT_TI_end_line(0x1b)
	.dwattr $C$DW$52, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$52

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
$C$DW$T$37	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$37, DW_AT_address_class(0x20)
$C$DW$T$10	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$10, DW_AT_name("int")
	.dwattr $C$DW$T$10, DW_AT_byte_size(0x04)
$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x04)
$C$DW$T$40	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$40, DW_AT_type(*$C$DW$T$11)
$C$DW$T$41	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$41, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$T$41, DW_AT_address_class(0x20)
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

