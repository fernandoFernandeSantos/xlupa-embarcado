;******************************************************************************
;* TMS320C6x C/C++ Codegen                                        Unix v7.6.0 *
;* Date/Time created: Fri Dec 19 16:29:31 2014                                *
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
	.dwattr $C$DW$CU, DW_AT_comp_dir("/home/fernandofernandes/tcc/DSP/Usando YUYV - RGB/CSequencial_DSP.03")

$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("_amem4_const")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("__amem4_const")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$20)
	.dwendtag $C$DW$1


$C$DW$3	.dwtag  DW_TAG_subprogram, DW_AT_name("_amem2")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("__amem2")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$3, DW_AT_declaration
	.dwattr $C$DW$3, DW_AT_external
$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$3)
	.dwendtag $C$DW$3

;	/opt/c6000_7.6.0/bin/opt6x /tmp/08402C4j8W2 /tmp/08402EeUEIR 
	.sect	".text"
	.clink
	.global	_sem_modificacao

$C$DW$5	.dwtag  DW_TAG_subprogram, DW_AT_name("sem_modificacao")
	.dwattr $C$DW$5, DW_AT_low_pc(_sem_modificacao)
	.dwattr $C$DW$5, DW_AT_high_pc(0x00)
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("_sem_modificacao")
	.dwattr $C$DW$5, DW_AT_external
	.dwattr $C$DW$5, DW_AT_TI_begin_file("Algoritmos.c")
	.dwattr $C$DW$5, DW_AT_TI_begin_line(0x37)
	.dwattr $C$DW$5, DW_AT_TI_begin_column(0x07)
	.dwattr $C$DW$5, DW_AT_TI_max_frame_size(0x10)
	.dwattr $C$DW$5, DW_AT_frame_base[DW_OP_breg31 16]
	.dwattr $C$DW$5, DW_AT_TI_skeletal
	.dwpsn	file "Algoritmos.c",line 55,column 96,is_stmt,address _sem_modificacao,isa 0
$C$DW$6	.dwtag  DW_TAG_formal_parameter, DW_AT_name("subimage")
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("_subimage")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$6, DW_AT_location[DW_OP_reg4]
$C$DW$7	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dest")
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("_dest")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$7, DW_AT_location[DW_OP_reg20]

;******************************************************************************
;* FUNCTION NAME: sem_modificacao                                             *
;*                                                                            *
;*   Regs Modified     : A0,A1,A3,A4,A5,A6,A7,A8,A9,B0,B4,B5,B6,B7,B8,B9,SP,  *
;*                           A16,A17,A18,A19,A20,A21,A22,A23,B16,B17,B18      *
;*   Regs Used         : A0,A1,A3,A4,A5,A6,A7,A8,A9,B0,B3,B4,B5,B6,B7,B8,B9,  *
;*                           SP,A16,A17,A18,A19,A20,A21,A22,A23,B16,B17,B18   *
;*   Local Frame Size  : 0 Args + 12 Auto + 0 Save = 12 byte                  *
;******************************************************************************
_sem_modificacao:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 13

           SUB     .D2     SP,16,SP          ; |Algoritmos.c:55| 
||         ZERO    .L2     B5                ; |Algoritmos.c:63| 

           STH     .D2T2   B5,*+SP(8)        ; |Algoritmos.c:63| 
           LDHU    .D2T2   *+SP(8),B5        ; |Algoritmos.c:64| 
           NOP             4
           STH     .D2T2   B5,*+SP(10)       ; |Algoritmos.c:64| 
           LDHU    .D2T2   *+SP(10),B6       ; |Algoritmos.c:65| 
           MVKL    .S2     0x70800,B5
           MVKH    .S2     0x70800,B5
           SUB     .L2     B5,1,B7
           NOP             1
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop found in file               : Algoritmos.c
;*      Loop source line                 : 67
;*      Loop opening brace source line   : 67
;*      Loop closing brace source line   : 89
;*      Known Minimum Trip Count         : 460800                    
;*      Known Maximum Trip Count         : 460800                    
;*      Known Max Trip Count Factor      : 460800
;*      Loop Carried Dependency Bound(^) : 5
;*      Unpartitioned Resource Bound     : 11
;*      Partitioned Resource Bound(*)    : 13
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     6        4     
;*      .S units                     9        7     
;*      .D units                     4       13*    
;*      .M units                     6        4     
;*      .X cross paths               4        3     
;*      .T address paths             9        8     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           1        1     (.L or .S unit)
;*      Addition ops (.LSD)         10        8     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             8        6     
;*      Bound(.L .S .D .LS .LSD)    10       11     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 13 no sploop: Dynlen of 50 > 48
;*         ii = 13 Schedule found with 3 iterations in parallel
;*
;*      Register Usage Table:
;*          +-----------------------------------------------------------------+
;*          |AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA|BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB|
;*          |00000000001111111111222222222233|00000000001111111111222222222233|
;*          |01234567890123456789012345678901|01234567890123456789012345678901|
;*          |--------------------------------+--------------------------------|
;*       0: |*  ***           *******        |    ******     * *              |
;*       1: |*  *****         *******        |*   ****       *                |
;*       2: |   *  **         *******        |*   ******     **               |
;*       3: |   ****          *******        |    * ****     **               |
;*       4: |   ****          *******        |    * ** *     **               |
;*       5: |*  *****         *******        |    ******     **               |
;*       6: |*  *** * *      ********        |    ******     **               |
;*       7: |*  *******      ********        |    *****      ***              |
;*       8: |** *******       *******        |*   *****      ***              |
;*       9: |** *******       *******        |*   ******     ***              |
;*      10: |** *******      *******         |*   ******     ***              |
;*      11: | * *******       ******         |*   * ****     * *              |
;*      12: |   ** * *        ******         |*   ******     ****             |
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
;*      Mem bank conflicts/iter(est.) : { min 0.000, est 0.500, max 4.000 }
;*      Mem bank perf. penalty (est.) : 3.7%
;*
;*      Effective ii                : { min 13.00, est 13.50, max 17.00 }
;*
;*
;*      Total cycles (est.)         : 26 + min_trip_cnt * 13 = 5990426        
;*----------------------------------------------------------------------------*
;*       SETUP CODE
;*
;*                  MV              A22,A17
;*                  ADD             10,A17,A17
;*                  MV              A22,A19
;*                  ADD             8,A19,A19
;*                  ADD             6,A22,A22
;*                  MV              A18,B4
;*
;*        SINGLE SCHEDULED ITERATION
;*
;*        $C$C54:
;*   0              LDW     .D1T1   *A20++,A4         ; |Algoritmos.c:68| 
;*   1              NOP             4
;*   5              STW     .D2T1   A4,*+SP(4)        ; |Algoritmos.c:68| 
;*   6              LDBU    .D2T1   *+SP(7),A4        ; |Algoritmos.c:80| 
;*   7              NOP             1
;*   8              LDBU    .D2T1   *+SP(6),A23       ; |Algoritmos.c:83| 
;*   9              LDBU    .D2T2   *+SP(5),B5        ; |Algoritmos.c:81| 
;*  10              LDBU    .D2T2   *+SP(4),B16       ; |Algoritmos.c:80| 
;*  11              ADD     .L1     A21,A4,A3         ; |Algoritmos.c:80| 
;*  12              MPY     .M1     A3,3,A6           ; |Algoritmos.c:80| 
;*  13              NOP             1
;*  14              ADD     .L2X    A21,B5,B8         ; |Algoritmos.c:81| 
;*     ||           MPYSU   .M1     6,A4,A5           ; |Algoritmos.c:81| 
;*  15              EXT     .S1     A6,15,16,A4       ; |Algoritmos.c:80| 
;*     ||           MPY     .M2     B8,3,B9           ; |Algoritmos.c:81| 
;*  16              ADD     .L1X    A4,B16,A3         ; |Algoritmos.c:80| 
;*     ||           MPY     .M1     6,A3,A6           ; |Algoritmos.c:81| 
;*     ||           MPY     .M2     B8,B7,B5          ; |Algoritmos.c:82| 
;*  17              SHR     .S1     A6,1,A5           ; |Algoritmos.c:80| 
;*     ||           CMPGT   .L1     A3,A18,A0         ; |Algoritmos.c:80| 
;*     ||           ADD     .L2X    B9,A5,B8          ; |Algoritmos.c:81| 
;*     ||           ADD     .D1     A4,A23,A7         ; |Algoritmos.c:83| 
;*  18              CMPLT   .L1     A3,0,A9           ; |Algoritmos.c:80| 
;*     ||           ADD     .L2     B6,B8,B9          ; |Algoritmos.c:81| 
;*     ||           ADD     .D1X    B9,A6,A16         ; |Algoritmos.c:81| 
;*     ||           EXT     .S2     B5,10,16,B8       ; |Algoritmos.c:82| 
;*     ||           ADD     .S1     A5,A23,A4         ; |Algoritmos.c:83| 
;*  19      [ A0]   EXTU    .S1     A18,24,24,A5      ; |Algoritmos.c:80| 
;*     ||           ADD     .D1X    A5,B16,A8         ; |Algoritmos.c:80| 
;*     ||           SHR     .S2     B9,3,B17          ; |Algoritmos.c:81| 
;*     ||           ADD     .L2     B16,B8,B8         ; |Algoritmos.c:82| 
;*     ||           CMPLT   .L1     A7,0,A6           ; |Algoritmos.c:83| 
;*  20              XOR     .D1     1,A9,A9           ; |Algoritmos.c:80| 
;*     ||           EXT     .S1     A16,13,16,A7      ; |Algoritmos.c:81| 
;*     ||           CMPGT   .L2     B8,B4,B0          ; |Algoritmos.c:82| 
;*     ||           CMPGT   .L1     A7,A18,A1         ; |Algoritmos.c:83| 
;*  21              MPY     .M1     A9,A8,A16         ; |Algoritmos.c:80| 
;*     ||           SHR     .S2     B5,6,B9           ; |Algoritmos.c:82| 
;*     ||           CMPLT   .L2     B8,0,B5           ; |Algoritmos.c:82| 
;*     ||   [ A1]   EXTU    .S1     A18,24,24,A8      ; |Algoritmos.c:83| 
;*     ||           XOR     .L1     1,A6,A9           ; |Algoritmos.c:83| 
;*     ||           SUB     .D1     A23,A7,A6         ; |Algoritmos.c:84| 
;*  22              ADD     .S2     B9,B16,B5         ; |Algoritmos.c:82| 
;*     ||           XOR     .L2     1,B5,B9           ; |Algoritmos.c:82| 
;*     ||           MPY     .M1     A9,A4,A7          ; |Algoritmos.c:83| 
;*     ||           SUB     .S1X    A23,B17,A9        ; |Algoritmos.c:84| 
;*     ||           CMPLT   .L1     A6,0,A4           ; |Algoritmos.c:84| 
;*  23      [!A0]   EXTU    .S1     A16,24,24,A5      ; |Algoritmos.c:80| 
;*     ||           SUB     .L2X    B16,A7,B9         ; |Algoritmos.c:81| 
;*     ||           SUB     .S2     B16,B17,B17       ; |Algoritmos.c:81| 
;*     ||           MPY     .M2     B9,B5,B8          ; |Algoritmos.c:82| 
;*     ||           XOR     .L1     1,A4,A3           ; |Algoritmos.c:84| 
;*  24              STB     .D2T1   A5,*+SP(8)        ; |Algoritmos.c:80| 
;*     ||           CMPLT   .L2     B9,0,B18          ; |Algoritmos.c:81| 
;*     ||   [ B0]   EXTU    .S2     B4,24,24,B5       ; |Algoritmos.c:82| 
;*     ||   [!A1]   EXTU    .S1     A7,24,24,A8       ; |Algoritmos.c:83| 
;*     ||           MPY     .M1     A3,A9,A5          ; |Algoritmos.c:84| 
;*  25              XOR     .L2     1,B18,B8          ; |Algoritmos.c:81| 
;*     ||   [!B0]   EXTU    .S2     B8,24,24,B5       ; |Algoritmos.c:82| 
;*     ||           STB     .D2T1   A8,*+SP(11)       ; |Algoritmos.c:83| 
;*     ||           CMPGT   .L1     A6,A18,A0         ; |Algoritmos.c:84| 
;*  26              CMPGT   .L2     B9,B4,B0          ; |Algoritmos.c:81| 
;*     ||           MPY     .M2     B8,B17,B5         ; |Algoritmos.c:81| 
;*     ||           STB     .D2T2   B5,*+SP(10)       ; |Algoritmos.c:82| 
;*     ||   [ A0]   EXTU    .S1     A18,24,24,A7      ; |Algoritmos.c:84| 
;*  27      [ B0]   EXTU    .S2     B4,24,24,B9       ; |Algoritmos.c:81| 
;*     ||   [!A0]   EXTU    .S1     A5,24,24,A7       ; |Algoritmos.c:84| 
;*     ||           LDHU    .D2T1   *+SP(10),A3       ; |Algoritmos.c:87| 
;*  28      [!B0]   EXTU    .S2     B5,24,24,B9       ; |Algoritmos.c:81| 
;*     ||           STB     .D2T1   A7,*+SP(12)       ; |Algoritmos.c:84| 
;*  29              STB     .D2T2   B9,*+SP(9)        ; |Algoritmos.c:81| 
;*  30              LDHU    .D2T2   *+SP(12),B8       ; |Algoritmos.c:88| 
;*  31              NOP             2
;*  33              LDHU    .D2T2   *+SP(8),B16       ; |Algoritmos.c:86| 
;*  34              NOP             2
;*  36              STH     .D1T1   A3,*A19++(6)      ; |Algoritmos.c:87| 
;*  37              STH     .D1T2   B8,*A17++(6)      ; |Algoritmos.c:88| 
;*  38              STH     .D1T2   B16,*A22++(6)     ; |Algoritmos.c:86| 
;*     ||           SPBR            $C$C54
;*  39              ; BRANCHCC OCCURS {$C$C54}        ; |Algoritmos.c:67| 
;*----------------------------------------------------------------------------*
$C$L1:    ; PIPED LOOP PROLOG
;          EXCLUSIVE CPU CYCLES: 27
	.dwpsn	file "Algoritmos.c",line 67,column 0,is_stmt,isa 0

           SPLOOPD 13      ;39               ; (P) 
||         MV      .L1     A4,A20
||         MVC     .S2     B7,ILC
||         STH     .D2T2   B6,*+SP(12)       ; |Algoritmos.c:65| 

;** --------------------------------------------------------------------------*
$C$L2:    ; PIPED LOOP KERNEL
$C$DW$L$_sem_modificacao$3$B:
;          EXCLUSIVE CPU CYCLES: 13
           LDW     .D1T1   *A20++,A4         ; |Algoritmos.c:68| (P) <0,0> 
           NOP             4
           STW     .D2T1   A4,*+SP(4)        ; |Algoritmos.c:68| (P) <0,5> 
           LDBU    .D2T1   *+SP(7),A4        ; |Algoritmos.c:80| (P) <0,6> 
           NOP             1
           LDBU    .D2T1   *+SP(6),A23       ; |Algoritmos.c:83| (P) <0,8> 
           LDBU    .D2T2   *+SP(5),B5        ; |Algoritmos.c:81| (P) <0,9> 

           SPMASK          S1
||         MVK     .S1     0xffffff80,A21
||         LDBU    .D2T2   *+SP(4),B16       ; |Algoritmos.c:80| (P) <0,10> 

           SPMASK          S1
||         ADD     .S1X    4,B4,A17
||         ADD     .L1     A21,A4,A3         ; |Algoritmos.c:80| (P) <0,11> 

           SPMASK          L1
||         ADD     .L1X    2,B4,A19
||         MPY     .M1     A3,3,A6           ; |Algoritmos.c:80| (P) <0,12> 

           SPMASK          L1,S2
||         MV      .L1X    B4,A22
||         MVK     .S2     0xff,B4

           ADD     .L2X    A21,B5,B8         ; |Algoritmos.c:81| (P) <0,14> 
||         MPYSU   .M1     6,A4,A5           ; |Algoritmos.c:81| (P) <0,14> 

           SPMASK          L1,S2
||         MVK     .S2     0x81,B7
||         MV      .L1X    B4,A18
||         EXT     .S1     A6,15,16,A4       ; |Algoritmos.c:80| (P) <0,15> 
||         MPY     .M2     B8,3,B9           ; |Algoritmos.c:81| (P) <0,15> 

           MPY     .M1     6,A3,A6           ; |Algoritmos.c:81| (P) <0,16> 
||         MPY     .M2     B8,B7,B5          ; |Algoritmos.c:82| (P) <0,16> 
||         ADD     .L1X    A4,B16,A3         ; |Algoritmos.c:80| (P) <0,16> 

           SPMASK          S2
||         MVK     .S2     0xfffffd00,B6
||         ADD     .L2X    B9,A5,B8          ; |Algoritmos.c:81| (P) <0,17> 
||         ADD     .D1     A4,A23,A7         ; |Algoritmos.c:83| (P) <0,17> 
||         SHR     .S1     A6,1,A5           ; |Algoritmos.c:80| (P) <0,17> 
||         CMPGT   .L1     A3,A18,A0         ; |Algoritmos.c:80| (P) <0,17> 

           EXT     .S2     B5,10,16,B8       ; |Algoritmos.c:82| (P) <0,18> 
||         ADD     .S1     A5,A23,A4         ; |Algoritmos.c:83| (P) <0,18> 
||         CMPLT   .L1     A3,0,A9           ; |Algoritmos.c:80| (P) <0,18> 
||         ADD     .D1X    B9,A6,A16         ; |Algoritmos.c:81| (P) <0,18> 
||         ADD     .L2     B6,B8,B9          ; |Algoritmos.c:81| (P) <0,18> 

           CMPLT   .L1     A7,0,A6           ; |Algoritmos.c:83| (P) <0,19> 
|| [ A0]   EXTU    .S1     A18,24,24,A5      ; |Algoritmos.c:80| (P) <0,19> 
||         ADD     .D1X    A5,B16,A8         ; |Algoritmos.c:80| (P) <0,19> 
||         ADD     .L2     B16,B8,B8         ; |Algoritmos.c:82| (P) <0,19> 
||         SHR     .S2     B9,3,B17          ; |Algoritmos.c:81| (P) <0,19> 

           CMPGT   .L2     B8,B4,B0          ; |Algoritmos.c:82| (P) <0,20> 
||         XOR     .D1     1,A9,A9           ; |Algoritmos.c:80| (P) <0,20> 
||         CMPGT   .L1     A7,A18,A1         ; |Algoritmos.c:83| (P) <0,20> 
||         EXT     .S1     A16,13,16,A7      ; |Algoritmos.c:81| (P) <0,20> 

           CMPLT   .L2     B8,0,B5           ; |Algoritmos.c:82| (P) <0,21> 
||         XOR     .L1     1,A6,A9           ; |Algoritmos.c:83| (P) <0,21> 
||         SUB     .D1     A23,A7,A6         ; |Algoritmos.c:84| (P) <0,21> 
|| [ A1]   EXTU    .S1     A18,24,24,A8      ; |Algoritmos.c:83| (P) <0,21> 
||         SHR     .S2     B5,6,B9           ; |Algoritmos.c:82| (P) <0,21> 
||         MPY     .M1     A9,A8,A16         ; |Algoritmos.c:80| (P) <0,21> 

           XOR     .L2     1,B5,B9           ; |Algoritmos.c:82| (P) <0,22> 
||         CMPLT   .L1     A6,0,A4           ; |Algoritmos.c:84| (P) <0,22> 
||         SUB     .S1X    A23,B17,A9        ; |Algoritmos.c:84| (P) <0,22> 
||         ADD     .S2     B9,B16,B5         ; |Algoritmos.c:82| (P) <0,22> 
||         MPY     .M1     A9,A4,A7          ; |Algoritmos.c:83| (P) <0,22> 

           SUB     .S2     B16,B17,B17       ; |Algoritmos.c:81| (P) <0,23> 
||         MPY     .M2     B9,B5,B8          ; |Algoritmos.c:82| (P) <0,23> 
|| [!A0]   EXTU    .S1     A16,24,24,A5      ; |Algoritmos.c:80| (P) <0,23> 
||         XOR     .L1     1,A4,A3           ; |Algoritmos.c:84| (P) <0,23> 
||         SUB     .L2X    B16,A7,B9         ; |Algoritmos.c:81| (P) <0,23> 

   [ B0]   EXTU    .S2     B4,24,24,B5       ; |Algoritmos.c:82| (P) <0,24> 
||         CMPLT   .L2     B9,0,B18          ; |Algoritmos.c:81| (P) <0,24> 
||         MPY     .M1     A3,A9,A5          ; |Algoritmos.c:84| (P) <0,24> 
|| [!A1]   EXTU    .S1     A7,24,24,A8       ; |Algoritmos.c:83| (P) <0,24> 
||         STB     .D2T1   A5,*+SP(8)        ; |Algoritmos.c:80| (P) <0,24> 

           XOR     .L2     1,B18,B8          ; |Algoritmos.c:81| (P) <0,25> 
|| [!B0]   EXTU    .S2     B8,24,24,B5       ; |Algoritmos.c:82| (P) <0,25> 
||         CMPGT   .L1     A6,A18,A0         ; |Algoritmos.c:84| (P) <0,25> 
||         STB     .D2T1   A8,*+SP(11)       ; |Algoritmos.c:83| (P) <0,25> 

           CMPGT   .L2     B9,B4,B0          ; |Algoritmos.c:81| <0,26> 
||         STB     .D2T2   B5,*+SP(10)       ; |Algoritmos.c:82| <0,26> 
||         MPY     .M2     B8,B17,B5         ; |Algoritmos.c:81| <0,26> 
|| [ A0]   EXTU    .S1     A18,24,24,A7      ; |Algoritmos.c:84| <0,26> 

   [ B0]   EXTU    .S2     B4,24,24,B9       ; |Algoritmos.c:81| <0,27> 
||         LDHU    .D2T1   *+SP(10),A3       ; |Algoritmos.c:87| <0,27> 
|| [!A0]   EXTU    .S1     A5,24,24,A7       ; |Algoritmos.c:84| <0,27> 

   [!B0]   EXTU    .S2     B5,24,24,B9       ; |Algoritmos.c:81| <0,28> 
||         STB     .D2T1   A7,*+SP(12)       ; |Algoritmos.c:84| <0,28> 

           STB     .D2T2   B9,*+SP(9)        ; |Algoritmos.c:81| <0,29> 
           LDHU    .D2T2   *+SP(12),B8       ; |Algoritmos.c:88| <0,30> 
           NOP             2
           LDHU    .D2T2   *+SP(8),B16       ; |Algoritmos.c:86| <0,33> 
           NOP             2
           STH     .D1T1   A3,*A19++(6)      ; |Algoritmos.c:87| <0,36> 
           STH     .D1T2   B8,*A17++(6)      ; |Algoritmos.c:88| <0,37> 
	.dwpsn	file "Algoritmos.c",line 89,column 0,is_stmt,isa 0

           SPKERNEL 1,0
||         STH     .D1T2   B16,*A22++(6)     ; |Algoritmos.c:86| <0,38> 

$C$DW$L$_sem_modificacao$3$E:
;** --------------------------------------------------------------------------*
$C$L3:    ; PIPED LOOP EPILOG
;          EXCLUSIVE CPU CYCLES: 26
           NOP             7
$C$DW$8	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$8, DW_AT_low_pc(0x00)
	.dwattr $C$DW$8, DW_AT_TI_return
           RET     .S2     B3                ; |Algoritmos.c:90| 
           ADDK    .S2     16,SP             ; |Algoritmos.c:90| 
	.dwpsn	file "Algoritmos.c",line 90,column 1,is_stmt,isa 0
           NOP             4
           ; BRANCH OCCURS {B3}              ; |Algoritmos.c:90| 

$C$DW$9	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$9, DW_AT_name("/home/fernandofernandes/tcc/DSP/Usando YUYV - RGB/CSequencial_DSP.03/Algoritmos.asm:$C$L2:1:1419013772")
	.dwattr $C$DW$9, DW_AT_TI_begin_file("Algoritmos.c")
	.dwattr $C$DW$9, DW_AT_TI_begin_line(0x43)
	.dwattr $C$DW$9, DW_AT_TI_end_line(0x59)
$C$DW$10	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$10, DW_AT_low_pc($C$DW$L$_sem_modificacao$3$B)
	.dwattr $C$DW$10, DW_AT_high_pc($C$DW$L$_sem_modificacao$3$E)
	.dwendtag $C$DW$9

	.dwattr $C$DW$5, DW_AT_TI_end_file("Algoritmos.c")
	.dwattr $C$DW$5, DW_AT_TI_end_line(0x5a)
	.dwattr $C$DW$5, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$5

	.sect	".text"
	.clink
	.global	_limiar_imagem

$C$DW$11	.dwtag  DW_TAG_subprogram, DW_AT_name("limiar_imagem")
	.dwattr $C$DW$11, DW_AT_low_pc(_limiar_imagem)
	.dwattr $C$DW$11, DW_AT_high_pc(0x00)
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("_limiar_imagem")
	.dwattr $C$DW$11, DW_AT_external
	.dwattr $C$DW$11, DW_AT_TI_begin_file("Algoritmos.c")
	.dwattr $C$DW$11, DW_AT_TI_begin_line(0x1f)
	.dwattr $C$DW$11, DW_AT_TI_begin_column(0x07)
	.dwattr $C$DW$11, DW_AT_TI_max_frame_size(0x00)
	.dwattr $C$DW$11, DW_AT_frame_base[DW_OP_breg31 0]
	.dwattr $C$DW$11, DW_AT_TI_skeletal
	.dwpsn	file "Algoritmos.c",line 32,column 34,is_stmt,address _limiar_imagem,isa 0
$C$DW$12	.dwtag  DW_TAG_formal_parameter, DW_AT_name("subimage")
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("_subimage")
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$12, DW_AT_location[DW_OP_reg4]
$C$DW$13	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dest")
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("_dest")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$13, DW_AT_location[DW_OP_reg20]
$C$DW$14	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cor")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_cor")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$14, DW_AT_location[DW_OP_reg6]

;******************************************************************************
;* FUNCTION NAME: limiar_imagem                                               *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B4,B5,B6,B7,B8,B9,A16, *
;*                           B16,B17,B18                                      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B3,B4,B5,B6,B7,B8,B9,  *
;*                           DP,SP,A16,B16,B17,B18                            *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_limiar_imagem:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 8

           MV      .L2X    A6,B9             ; |Algoritmos.c:32| 
||         MV      .L1     A4,A6             ; |Algoritmos.c:32| 

           LDBU    .D1T1   *+A6(2),A8        ; |Algoritmos.c:44| (P) <0,0> 
           LDBU    .D1T1   *A6++(8),A9       ; |Algoritmos.c:46| (P) <0,2> 
           MVK     .S1     0x80,A5
           LDBU    .D1T2   *-A6(4),B7        ; |Algoritmos.c:46| (P) <0,3> 
           MVKL    .S1     0x38400,A2
           CMPLT   .L1     A8,A5,A0          ; |Algoritmos.c:49| (P) <0,5> 

           MVD     .M1     A0,A0             ; |Algoritmos.c:49| (P) <0,6> Post-sched spill
||         LDBU    .D1T1   *-A6(2),A7        ; |Algoritmos.c:44| (P) <0,5> 
||         MVKH    .S1     0x38400,A2
||         DINT                              ; interrupts off
||         MV      .L2     B4,B8
||         ADD     .L1X    -8,B4,A3

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop found in file               : Algoritmos.c
;*      Loop source line                 : 37
;*      Loop opening brace source line   : 37
;*      Loop closing brace source line   : 52
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
;*        $C$C178:
;*   0              LDBU    .D1T1   *+A6(2),A8        ; |Algoritmos.c:44| 
;*   1              NOP             1
;*   2              LDBU    .D1T1   *A6++(8),A9       ; |Algoritmos.c:46| 
;*   3              LDBU    .D1T2   *-A6(4),B7        ; |Algoritmos.c:46| 
;*   4              NOP             1
;*   5              CMPLT   .L1     A8,A5,A0          ; |Algoritmos.c:49| 
;*     ||           LDBU    .D1T1   *-A6(2),A7        ; |Algoritmos.c:44| 
;*   6              NOP             2
;*   8              STH     .D2T1   A4,*++B4(12)      ; |Algoritmos.c:39|  ^ 
;*     ||           STH     .D1T2   B5,*++A3(12)      ; |Algoritmos.c:41| 
;*     ||           ADD     .S2     B16,B9,B17        ; |Algoritmos.c:50| 
;*     ||           ADD     .L2     B16,B9,B6         ; |Algoritmos.c:50| 
;*   9              STH     .D2T2   B5,*+B4(2)        ; |Algoritmos.c:40|  ^ 
;*     ||           CMPLT   .L1     A9,A5,A1          ; |Algoritmos.c:46| 
;*     ||           ADD     .S2     B8,B17,B6         ; |Algoritmos.c:50| 
;*     ||           ADD     .L2     B8,B6,B17         ; |Algoritmos.c:50| 
;*     ||   [ A2]   BDEC    .S1     $C$C178,A2        ; |Algoritmos.c:37| 
;*  10              ADD     .S2     B9,B16,B6         ; |Algoritmos.c:47| 
;*     ||   [!A0]   STB     .D2T1   A8,*+B6(3)        ; |Algoritmos.c:50|  ^ 
;*     ||           CMPLT   .L1X    B7,A5,A0          ; |Algoritmos.c:46| 
;*     ||           ADD     .L2     B9,B16,B18        ; |Algoritmos.c:47| 
;*  11      [!A1]   STB     .D2T1   A9,*+B6[B8]       ; |Algoritmos.c:47|  ^ 
;*     ||           STH     .D1T2   B5,*+A3(4)        ; |Algoritmos.c:40|  ^ 
;*     ||           ADD     .L2     B8,B18,B6         ; |Algoritmos.c:47| 
;*     ||           CMPLT   .L1     A7,A5,A1          ; |Algoritmos.c:49| 
;*  12              STH     .D2T2   B5,*+B4(10)       ; |Algoritmos.c:41|  ^ 
;*  13              STH     .D1T2   B5,*+A3(2)        ; |Algoritmos.c:39|  ^ 
;*     ||   [!A1]   STB     .D2T1   A7,*+B17(9)       ; |Algoritmos.c:50|  ^ 
;*  14      [!A0]   STB     .D2T2   B7,*+B6(6)        ; |Algoritmos.c:47|  ^ 
;*     ||           ADD     .L2     12,B16,B16        ; |Algoritmos.c:37| 
;*  15              ; BRANCHCC OCCURS {$C$C178}       ; |Algoritmos.c:37| 
;*----------------------------------------------------------------------------*
$C$L4:    ; PIPED LOOP PROLOG
;          EXCLUSIVE CPU CYCLES: 1
	.dwpsn	file "Algoritmos.c",line 37,column 0,is_stmt,isa 0

           ZERO    .L2     B16               ; |Algoritmos.c:34| 
||         ZERO    .S2     B5                ; |Algoritmos.c:34| 
||         SUB     .D2     B4,12,B4
||         SUB     .L1     A2,3,A2
||         ZERO    .S1     A4                ; |Algoritmos.c:34| 
||         LDBU    .D1T1   *+A6(2),A8        ; |Algoritmos.c:44| (P) <1,0> 

;** --------------------------------------------------------------------------*
$C$L5:    ; PIPED LOOP KERNEL
$C$DW$L$_limiar_imagem$3$B:
;          EXCLUSIVE CPU CYCLES: 7

           ADD     .L2     B16,B9,B6         ; |Algoritmos.c:50| <0,8> 
||         ADD     .S2     B16,B9,B17        ; |Algoritmos.c:50| <0,8> 
||         STH     .D1T2   B5,*++A3(12)      ; |Algoritmos.c:41| <0,8> 
||         STH     .D2T1   A4,*++B4(12)      ; |Algoritmos.c:39| <0,8>  ^ 

   [ A2]   BDEC    .S1     $C$L5,A2          ; |Algoritmos.c:37| <0,9> 
||         ADD     .L2     B8,B6,B17         ; |Algoritmos.c:50| <0,9> 
||         ADD     .S2     B8,B17,B6         ; |Algoritmos.c:50| <0,9> 
||         STH     .D2T2   B5,*+B4(2)        ; |Algoritmos.c:40| <0,9>  ^ 
||         CMPLT   .L1     A9,A5,A1          ; |Algoritmos.c:46| <0,9> 
||         LDBU    .D1T1   *A6++(8),A9       ; |Algoritmos.c:46| <1,2> 

           ADD     .L2     B9,B16,B18        ; |Algoritmos.c:47| <0,10> 
||         ADD     .S2     B9,B16,B6         ; |Algoritmos.c:47| <0,10> 
|| [!A0]   STB     .D2T1   A8,*+B6(3)        ; |Algoritmos.c:50| <0,10>  ^ 
||         CMPLT   .L1X    B7,A5,A0          ; |Algoritmos.c:46| <0,10> 
||         LDBU    .D1T2   *-A6(4),B7        ; |Algoritmos.c:46| <1,3> 

           ADD     .L2     B8,B18,B6         ; |Algoritmos.c:47| <0,11> 
||         CMPLT   .L1     A7,A5,A1          ; |Algoritmos.c:49| <0,11> 
||         STH     .D1T2   B5,*+A3(4)        ; |Algoritmos.c:40| <0,11>  ^ 
|| [!A1]   STB     .D2T1   A9,*+B6[B8]       ; |Algoritmos.c:47| <0,11>  ^ 

           ROTL    .M1     A0,0,A0           ; |Algoritmos.c:46| <0,12> Post-sched spill
||         STH     .D2T2   B5,*+B4(10)       ; |Algoritmos.c:41| <0,12>  ^ 
||         CMPLT   .L1     A8,A5,A0          ; |Algoritmos.c:49| <1,5> 
||         LDBU    .D1T1   *-A6(2),A7        ; |Algoritmos.c:44| <1,5> 

           STH     .D1T2   B5,*+A3(2)        ; |Algoritmos.c:39| <0,13>  ^ 
|| [!A1]   STB     .D2T1   A7,*+B17(9)       ; |Algoritmos.c:50| <0,13>  ^ 
||         MVD     .M1     A0,A0             ; |Algoritmos.c:49| <1,6> Post-sched spill

	.dwpsn	file "Algoritmos.c",line 52,column 0,is_stmt,isa 0

           ADD     .L2     12,B16,B16        ; |Algoritmos.c:37| <0,14> 
|| [!A0]   STB     .D2T2   B7,*+B6(6)        ; |Algoritmos.c:47| <0,14>  ^ 
||         LDBU    .D1T1   *+A6(2),A8        ; |Algoritmos.c:44| <2,0> 

$C$DW$L$_limiar_imagem$3$E:
;** --------------------------------------------------------------------------*
$C$L6:    ; PIPED LOOP EPILOG
;          EXCLUSIVE CPU CYCLES: 7

           ADD     .L2     B16,B9,B17        ; |Algoritmos.c:50| (E) <1,8> 
||         ADD     .S2     B16,B9,B6         ; |Algoritmos.c:50| (E) <1,8> 
||         STH     .D1T2   B5,*++A3(12)      ; |Algoritmos.c:41| (E) <1,8> 
||         STH     .D2T1   A4,*++B4(12)      ; |Algoritmos.c:39| (E) <1,8>  ^ 

           ADD     .L2     B8,B17,B17        ; |Algoritmos.c:50| (E) <1,9> 
||         ADD     .S2     B8,B6,B6          ; |Algoritmos.c:50| (E) <1,9> 
||         STH     .D2T2   B5,*+B4(2)        ; |Algoritmos.c:40| (E) <1,9>  ^ 
||         CMPLT   .L1     A9,A5,A1          ; |Algoritmos.c:46| (E) <1,9> 
||         LDBU    .D1T1   *A6++(8),A9       ; |Algoritmos.c:46| (E) <2,2> 

           ADD     .L2     B9,B16,B18        ; |Algoritmos.c:47| (E) <1,10> 
||         ADD     .S2     B9,B16,B6         ; |Algoritmos.c:47| (E) <1,10> 
|| [!A0]   STB     .D2T1   A8,*+B6(3)        ; |Algoritmos.c:50| (E) <1,10>  ^ 
||         CMPLT   .L1X    B7,A5,A16         ; |Algoritmos.c:46| (E) <1,10> 
||         LDBU    .D1T2   *-A6(4),B7        ; |Algoritmos.c:46| (E) <2,3> 

           ADD     .L2     B8,B18,B6         ; |Algoritmos.c:47| (E) <1,11> 
||         CMPLT   .L1     A7,A5,A1          ; |Algoritmos.c:49| (E) <1,11> 
||         STH     .D1T2   B5,*+A3(4)        ; |Algoritmos.c:40| (E) <1,11>  ^ 
|| [!A1]   STB     .D2T1   A9,*+B6[B8]       ; |Algoritmos.c:47| (E) <1,11>  ^ 

           ROTL    .M1     A16,0,A0          ; |Algoritmos.c:46| (E) <1,12> Post-sched spill
||         STH     .D2T2   B5,*+B4(10)       ; |Algoritmos.c:41| (E) <1,12>  ^ 
||         CMPLT   .L1     A8,A5,A6          ; |Algoritmos.c:49| (E) <2,5> 
||         LDBU    .D1T1   *-A6(2),A7        ; |Algoritmos.c:44| (E) <2,5> 

           STH     .D1T2   B5,*+A3(2)        ; |Algoritmos.c:39| (E) <1,13>  ^ 
|| [!A1]   STB     .D2T1   A7,*+B17(9)       ; |Algoritmos.c:50| (E) <1,13>  ^ 
||         MVD     .M1     A6,A0             ; |Algoritmos.c:49| (E) <2,6> Post-sched spill

           CMPLT   .L1     A9,A5,A1          ; |Algoritmos.c:46| (E) <2,9> 
||         ADD     .L2     12,B16,B18        ; |Algoritmos.c:37| (E) <1,14> 
|| [!A0]   STB     .D2T2   B7,*+B6(6)        ; |Algoritmos.c:47| (E) <1,14>  ^ 

;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 8

           ADD     .L2     B18,B9,B6         ; |Algoritmos.c:50| (E) <2,8> 
||         ADD     .S2     B18,B9,B17        ; |Algoritmos.c:50| (E) <2,8> 

           ADD     .L2     B8,B17,B6         ; |Algoritmos.c:50| (E) <2,9> 
||         ADD     .S2     B8,B6,B17         ; |Algoritmos.c:50| (E) <2,9> 
||         STH     .D1T2   B5,*++A3(12)      ; |Algoritmos.c:41| (E) <2,8> 
||         STH     .D2T1   A4,*++B4(12)      ; |Algoritmos.c:39| (E) <2,8>  ^ 

$C$DW$15	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$15, DW_AT_low_pc(0x00)
	.dwattr $C$DW$15, DW_AT_TI_return

           RET     .S2     B3                ; |Algoritmos.c:53| 
||         STH     .D2T2   B5,*+B4(2)        ; |Algoritmos.c:40| (E) <2,9>  ^ 

           ADD     .L2     B9,B18,B6         ; |Algoritmos.c:47| (E) <2,10> 
|| [!A0]   STB     .D2T1   A8,*+B6(3)        ; |Algoritmos.c:50| (E) <2,10>  ^ 

           STH     .D1T2   B5,*+A3(4)        ; |Algoritmos.c:40| (E) <2,11>  ^ 
|| [!A1]   STB     .D2T1   A9,*+B6[B8]       ; |Algoritmos.c:47| (E) <2,11>  ^ 

           STH     .D2T2   B5,*+B4(10)       ; |Algoritmos.c:41| (E) <2,12>  ^ 
||         CMPLT   .L1     A7,A5,A1          ; |Algoritmos.c:49| (E) <2,11> 
||         ADD     .L2     B9,B18,B16        ; |Algoritmos.c:47| (E) <2,10> 

           STH     .D1T2   B5,*+A3(2)        ; |Algoritmos.c:39| (E) <2,13>  ^ 
|| [!A1]   STB     .D2T1   A7,*+B17(9)       ; |Algoritmos.c:50| (E) <2,13>  ^ 
||         ADD     .L2     B8,B16,B6         ; |Algoritmos.c:47| (E) <2,11> 
||         CMPLT   .L1X    B7,A5,A0          ; |Algoritmos.c:46| (E) <2,10> 

	.dwpsn	file "Algoritmos.c",line 53,column 1,is_stmt,isa 0

   [!A0]   STB     .D2T2   B7,*+B6(6)        ; |Algoritmos.c:47| (E) <2,14>  ^ 
||         RINT                              ; interrupts on

           ; BRANCH OCCURS {B3}              ; |Algoritmos.c:53| 

$C$DW$16	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$16, DW_AT_name("/home/fernandofernandes/tcc/DSP/Usando YUYV - RGB/CSequencial_DSP.03/Algoritmos.asm:$C$L5:1:1419013772")
	.dwattr $C$DW$16, DW_AT_TI_begin_file("Algoritmos.c")
	.dwattr $C$DW$16, DW_AT_TI_begin_line(0x25)
	.dwattr $C$DW$16, DW_AT_TI_end_line(0x34)
$C$DW$17	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$17, DW_AT_low_pc($C$DW$L$_limiar_imagem$3$B)
	.dwattr $C$DW$17, DW_AT_high_pc($C$DW$L$_limiar_imagem$3$E)
	.dwendtag $C$DW$16

	.dwattr $C$DW$11, DW_AT_TI_end_file("Algoritmos.c")
	.dwattr $C$DW$11, DW_AT_TI_end_line(0x35)
	.dwattr $C$DW$11, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$11

	.sect	".text"
	.clink
	.global	_imagem_to_cinza

$C$DW$18	.dwtag  DW_TAG_subprogram, DW_AT_name("imagem_to_cinza")
	.dwattr $C$DW$18, DW_AT_low_pc(_imagem_to_cinza)
	.dwattr $C$DW$18, DW_AT_high_pc(0x00)
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("_imagem_to_cinza")
	.dwattr $C$DW$18, DW_AT_external
	.dwattr $C$DW$18, DW_AT_TI_begin_file("Algoritmos.c")
	.dwattr $C$DW$18, DW_AT_TI_begin_line(0x03)
	.dwattr $C$DW$18, DW_AT_TI_begin_column(0x07)
	.dwattr $C$DW$18, DW_AT_TI_max_frame_size(0x10)
	.dwattr $C$DW$18, DW_AT_frame_base[DW_OP_breg31 16]
	.dwattr $C$DW$18, DW_AT_TI_skeletal
	.dwpsn	file "Algoritmos.c",line 3,column 102,is_stmt,address _imagem_to_cinza,isa 0
$C$DW$19	.dwtag  DW_TAG_formal_parameter, DW_AT_name("subimage")
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("_subimage")
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$19, DW_AT_location[DW_OP_reg4]
$C$DW$20	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dest")
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("_dest")
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$20, DW_AT_location[DW_OP_reg20]

;******************************************************************************
;* FUNCTION NAME: imagem_to_cinza                                             *
;*                                                                            *
;*   Regs Modified     : A3,A4,A5,A6,A7,B4,B5,B6,SP                           *
;*   Regs Used         : A3,A4,A5,A6,A7,B3,B4,B5,B6,SP                        *
;*   Local Frame Size  : 0 Args + 12 Auto + 0 Save = 12 byte                  *
;******************************************************************************
_imagem_to_cinza:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 3
           MVKL    .S2     0x70800,B5
           MVKH    .S2     0x70800,B5
           SUB     .L2     B5,1,B6
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop found in file               : Algoritmos.c
;*      Loop source line                 : 13
;*      Loop opening brace source line   : 13
;*      Loop closing brace source line   : 28
;*      Known Minimum Trip Count         : 460800                    
;*      Known Maximum Trip Count         : 460800                    
;*      Known Max Trip Count Factor      : 460800
;*      Loop Carried Dependency Bound(^) : 1
;*      Unpartitioned Resource Bound     : 7
;*      Partitioned Resource Bound(*)    : 12
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     0        0     
;*      .D units                     1       12*    
;*      .M units                     0        0     
;*      .X cross paths               0        0     
;*      .T address paths             7        6     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          0        0     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             0        0     
;*      Bound(.L .S .D .LS .LSD)     1        4     
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
;*       0: |   * *                          |     *         *                |
;*       1: |   * *                          |     *         *                |
;*       2: |   * *                          |     *         *                |
;*       3: |   *                            |     *         *                |
;*       4: |   *                            |     *         *                |
;*       5: |   *                            |    **         *                |
;*       6: |   *                            |     *         *                |
;*       7: |   *                            |     *         *                |
;*       8: |   *                            |     *         *                |
;*       9: |   * *                          |     *         *                |
;*      10: |   * *                          |     *         *                |
;*      11: |   * *                          |     *         *                |
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
;*      Min. prof. trip count  (est.) : 4
;*
;*      Mem bank conflicts/iter(est.) : { min 0.000, est 0.125, max 1.000 }
;*      Mem bank perf. penalty (est.) : 1.0%
;*
;*      Effective ii                : { min 12.00, est 12.12, max 13.00 }
;*
;*
;*      Total cycles (est.)         : 24 + min_trip_cnt * 12 = 5529624        
;*----------------------------------------------------------------------------*
;*        SINGLE SCHEDULED ITERATION
;*
;*        $C$C222:
;*   0              LDW     .D1T2   *A3++,B4          ; |Algoritmos.c:14|  ^ 
;*   1              NOP             4
;*   5              STW     .D2T2   B4,*+SP(4)        ; |Algoritmos.c:14|  ^ 
;*   6              LDBU    .D2T2   *+SP(4),B5        ; |Algoritmos.c:16|  ^ 
;*   7              NOP             5
;*  16              LDBU    .D2T1   *+SP(6),A5        ; |Algoritmos.c:20|  ^ 
;*  17              NOP             2
;*  19              STB     .D2T2   B5,*+SP(8)        ; |Algoritmos.c:16|  ^ 
;*  20              STB     .D2T2   B5,*+SP(9)        ; |Algoritmos.c:17|  ^ 
;*  21              LDHU    .D2T1   *+SP(8),A4        ; |Algoritmos.c:25|  ^ 
;*  22              STB     .D2T2   B5,*+SP(10)       ; |Algoritmos.c:19|  ^ 
;*  23              STB     .D2T1   A5,*+SP(11)       ; |Algoritmos.c:20|  ^ 
;*  24              STB     .D2T1   A5,*+SP(12)       ; |Algoritmos.c:22|  ^ 
;*  25              LDHU    .D2T1   *+SP(10),A5       ; |Algoritmos.c:26|  ^ 
;*  26              STB     .D2T1   A5,*+SP(13)       ; |Algoritmos.c:23|  ^ 
;*  27              LDHU    .D2T1   *+SP(12),A6       ; |Algoritmos.c:27|  ^ 
;*     ||           SPBR            $C$C222
;*  28              NOP             5
;*  36              ; BRANCHCC OCCURS {$C$C222}       ; |Algoritmos.c:13| 
;*----------------------------------------------------------------------------*
$C$L7:    ; PIPED LOOP PROLOG
;          EXCLUSIVE CPU CYCLES: 25
	.dwpsn	file "Algoritmos.c",line 13,column 0,is_stmt,isa 0

           SPLOOPD 12      ;36               ; (P) 
||         MV      .L1     A4,A3             ; |Algoritmos.c:3| 
||         MVC     .S2     B6,ILC

;** --------------------------------------------------------------------------*
$C$L8:    ; PIPED LOOP KERNEL
$C$DW$L$_imagem_to_cinza$3$B:
;          EXCLUSIVE CPU CYCLES: 12

           SPMASK          L1
||         MV      .L1X    B4,A7             ; |Algoritmos.c:3| 
||         LDW     .D1T2   *A3++,B4          ; |Algoritmos.c:14| (P) <0,0>  ^ 

           NOP             3

           SPMASK          D2
||         SUB     .D2     SP,16,SP          ; |Algoritmos.c:3| 

           STW     .D2T2   B4,*+SP(4)        ; |Algoritmos.c:14| (P) <0,5>  ^ 
           LDBU    .D2T2   *+SP(4),B5        ; |Algoritmos.c:16| (P) <0,6>  ^ 
           NOP             9
           LDBU    .D2T1   *+SP(6),A5        ; |Algoritmos.c:20| (P) <0,16>  ^ 
           NOP             2
           STB     .D2T2   B5,*+SP(8)        ; |Algoritmos.c:16| (P) <0,19>  ^ 
           STB     .D2T2   B5,*+SP(9)        ; |Algoritmos.c:17| (P) <0,20>  ^ 
           LDHU    .D2T1   *+SP(8),A4        ; |Algoritmos.c:25| (P) <0,21>  ^ 
           STB     .D2T2   B5,*+SP(10)       ; |Algoritmos.c:19| (P) <0,22>  ^ 
           STB     .D2T1   A5,*+SP(11)       ; |Algoritmos.c:20| (P) <0,23>  ^ 
           STB     .D2T1   A5,*+SP(12)       ; |Algoritmos.c:22| <0,24>  ^ 
           LDHU    .D2T1   *+SP(10),A5       ; |Algoritmos.c:26| <0,25>  ^ 
           STB     .D2T1   A5,*+SP(13)       ; |Algoritmos.c:23| <0,26>  ^ 
	.dwpsn	file "Algoritmos.c",line 28,column 0,is_stmt,isa 0

           SPKERNEL 1,0
||         LDHU    .D2T1   *+SP(12),A6       ; |Algoritmos.c:27| <0,27>  ^ 

$C$DW$L$_imagem_to_cinza$3$E:
;** --------------------------------------------------------------------------*
$C$L9:    ; PIPED LOOP EPILOG
;          EXCLUSIVE CPU CYCLES: 21
           NOP             3
$C$DW$21	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$21, DW_AT_low_pc(0x00)
	.dwattr $C$DW$21, DW_AT_TI_return
           RET     .S2     B3                ; |Algoritmos.c:29| 

           STH     .D1T1   A4,*A7
||         ADDK    .S2     16,SP             ; |Algoritmos.c:29| 

           NOP             1
           STH     .D1T1   A5,*+A7(2)
           NOP             1
	.dwpsn	file "Algoritmos.c",line 29,column 1,is_stmt,isa 0
           STH     .D1T1   A6,*+A7(4)
           ; BRANCH OCCURS {B3}              ; |Algoritmos.c:29| 

$C$DW$22	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$22, DW_AT_name("/home/fernandofernandes/tcc/DSP/Usando YUYV - RGB/CSequencial_DSP.03/Algoritmos.asm:$C$L8:1:1419013772")
	.dwattr $C$DW$22, DW_AT_TI_begin_file("Algoritmos.c")
	.dwattr $C$DW$22, DW_AT_TI_begin_line(0x0d)
	.dwattr $C$DW$22, DW_AT_TI_end_line(0x1c)
$C$DW$23	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$23, DW_AT_low_pc($C$DW$L$_imagem_to_cinza$3$B)
	.dwattr $C$DW$23, DW_AT_high_pc($C$DW$L$_imagem_to_cinza$3$E)
	.dwendtag $C$DW$22

	.dwattr $C$DW$18, DW_AT_TI_end_file("Algoritmos.c")
	.dwattr $C$DW$18, DW_AT_TI_end_line(0x1d)
	.dwattr $C$DW$18, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$18

	.sect	".text"
	.clink
	.global	_NearestNeighbour

$C$DW$24	.dwtag  DW_TAG_subprogram, DW_AT_name("NearestNeighbour")
	.dwattr $C$DW$24, DW_AT_low_pc(_NearestNeighbour)
	.dwattr $C$DW$24, DW_AT_high_pc(0x00)
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("_NearestNeighbour")
	.dwattr $C$DW$24, DW_AT_external
	.dwattr $C$DW$24, DW_AT_TI_begin_file("Algoritmos.c")
	.dwattr $C$DW$24, DW_AT_TI_begin_line(0x5c)
	.dwattr $C$DW$24, DW_AT_TI_begin_column(0x07)
	.dwattr $C$DW$24, DW_AT_TI_max_frame_size(0x00)
	.dwattr $C$DW$24, DW_AT_frame_base[DW_OP_breg31 0]
	.dwattr $C$DW$24, DW_AT_TI_skeletal
	.dwpsn	file "Algoritmos.c",line 92,column 107,is_stmt,address _NearestNeighbour,isa 0
$C$DW$25	.dwtag  DW_TAG_formal_parameter, DW_AT_name("src")
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("_src")
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$25, DW_AT_location[DW_OP_reg4]
$C$DW$26	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dst")
	.dwattr $C$DW$26, DW_AT_TI_symbol_name("_dst")
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$26, DW_AT_location[DW_OP_reg20]
$C$DW$27	.dwtag  DW_TAG_formal_parameter, DW_AT_name("scale")
	.dwattr $C$DW$27, DW_AT_TI_symbol_name("_scale")
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$27, DW_AT_location[DW_OP_reg6]

;******************************************************************************
;* FUNCTION NAME: NearestNeighbour                                            *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,A16,A17,B16,B17,B18,B19,B30,B31         *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,DP,SP,A16,A17,B16,B17,B18,B19,B30,B31   *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_NearestNeighbour:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 29
           MV      .L2X    A6,B6             ; |Algoritmos.c:92| 
$C$DW$28	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$28, DW_AT_low_pc(0x04)
	.dwattr $C$DW$28, DW_AT_name("__divi")
	.dwattr $C$DW$28, DW_AT_TI_call

           MV      .L1X    B3,A17            ; |Algoritmos.c:92| 
||         CALLP   .S2     __divi,B3
||         MV      .D1     A4,A7             ; |Algoritmos.c:92| 
||         MVK     .S1     0x500,A4          ; |Algoritmos.c:98| 
||         MV      .L2     B4,B7             ; |Algoritmos.c:92| 
||         MV      .D2X    A6,B4             ; |Algoritmos.c:92| 

$C$RL0:    ; CALL OCCURS {__divi} {0}        ; |Algoritmos.c:98| 
$C$DW$29	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$29, DW_AT_low_pc(0x00)
	.dwattr $C$DW$29, DW_AT_name("__divi")
	.dwattr $C$DW$29, DW_AT_TI_call

           CALLP   .S2     __divi,B3
||         MV      .L2     B6,B4             ; |Algoritmos.c:98| 
||         MV      .L1     A4,A5             ; |Algoritmos.c:98| 
||         MVK     .S1     0x2d0,A4          ; |Algoritmos.c:98| 

$C$RL1:    ; CALL OCCURS {__divi} {0}        ; |Algoritmos.c:98| 
           SHRU    .S1     A4,31,A3          ; |Algoritmos.c:98| 
           ADD     .L1     A4,A3,A3          ; |Algoritmos.c:98| 

           SHR     .S1     A3,1,A3           ; |Algoritmos.c:98| 
||         SHRU    .S2X    A5,31,B8          ; |Algoritmos.c:98| 

           MVK     .S2     360,B4            ; |Algoritmos.c:98| 

           SUB     .L2X    B4,A3,B4          ; |Algoritmos.c:98| 
||         MVK     .S2     1280,B5           ; |Algoritmos.c:98| 

           MPY     .M2     B4,B5,B8          ; |Algoritmos.c:98| 
||         ADD     .L2X    A5,B8,B4          ; |Algoritmos.c:98| 

           SHR     .S2     B4,1,B5           ; |Algoritmos.c:98| 

           SUB     .L2     B8,B5,B4          ; |Algoritmos.c:101| 
||         SUB     .S2     B8,B5,B8          ; |Algoritmos.c:98| 

           ADDK    .S2     640,B8            ; |Algoritmos.c:98| 
||         MVK     .L2     3,B9              ; |Algoritmos.c:98| 

           MPYLI   .M2     B9,B8,B9:B8       ; |Algoritmos.c:98| 

           ADDK    .S2     640,B4            ; |Algoritmos.c:101| 
||         MVK     .L2     3,B5              ; |Algoritmos.c:101| 

           MPYLI   .M2     B5,B4,B5:B4       ; |Algoritmos.c:101| 
           CMPGT   .L2     B6,0,B0           ; |Algoritmos.c:105| 
           MVK     .S2     0x500,B18         ; |Algoritmos.c:101| 

           ZERO    .L2     B16               ; |Algoritmos.c:103| 
||         MV      .L1X    B8,A8             ; |Algoritmos.c:98| 

	.dwpsn	file "Algoritmos.c",line 103,column 0,is_stmt,isa 0

   [ B0]   ADD     .L1     A8,A7,A3
||         ZERO    .L2     B8                ; |Algoritmos.c:104| 
||         MV      .S2     B4,B9             ; |Algoritmos.c:101| 
||         MVK     .S1     0xf00,A16
||         ZERO    .D1     A9                ; |Algoritmos.c:103| 
||         MVK     .D2     0x1,B17           ; |Algoritmos.c:100| 

;** --------------------------------------------------------------------------*
;**   BEGIN LOOP $C$L10
;** --------------------------------------------------------------------------*
$C$L10:    
$C$DW$L$_NearestNeighbour$2$B:
;          EXCLUSIVE CPU CYCLES: 4
	.dwpsn	file "Algoritmos.c",line 104,column 0,is_stmt,isa 0
   [!B0]   BNOP    .S1     $C$L15,3          ; |Algoritmos.c:105| 
$C$DW$L$_NearestNeighbour$2$E:
;** --------------------------------------------------------------------------*
;**   BEGIN LOOP $C$L11
;** --------------------------------------------------------------------------*
$C$L11:    
$C$DW$L$_NearestNeighbour$3$B:
;          EXCLUSIVE CPU CYCLES: 2

   [ B0]   LDBU    .D1T1   *+A8[A7],A5
|| [ B0]   MVC     .S2     B6,ILC
|| [ B0]   MVK     .L2     3,B4              ; |Algoritmos.c:109| 

   [ B0]   LDBU    .D1T1   *+A3(2),A6
           ; BRANCHCC OCCURS {$C$L15}        ; |Algoritmos.c:105| 
$C$DW$L$_NearestNeighbour$3$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop found in file               : Algoritmos.c
;*      Loop source line                 : 105
;*      Loop opening brace source line   : 105
;*      Loop closing brace source line   : 110
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
;*        $C$C310:
;*   0              STB     .D1T1   A5,*A4++(3)       ; |Algoritmos.c:106| 
;*   1              STB     .D2T2   B5,*B4++(3)       ; |Algoritmos.c:107| 
;*     ||           STB     .D1T1   A6,*A3++(3)       ; |Algoritmos.c:108| 
;*     ||           SPBR            $C$C310
;*   2              NOP             2
;*   4              ; BRANCHCC OCCURS {$C$C310}       ; |Algoritmos.c:105| 
;*----------------------------------------------------------------------------*
$C$L12:    ; PIPED LOOP PROLOG
;          EXCLUSIVE CPU CYCLES: 6

           MPYLI   .M2     B4,B6,B5:B4       ; |Algoritmos.c:109| 
||         LDBU    .D1T2   *+A3(1),B5

           ADD     .L2     B16,B7,B19
           NOP             1
	.dwpsn	file "Algoritmos.c",line 105,column 0,is_stmt,isa 0

           SPLOOP  2       ;4                ; (P) 
||         MV      .L1X    B19,A4

;** --------------------------------------------------------------------------*
$C$L13:    ; PIPED LOOP KERNEL
$C$DW$L$_NearestNeighbour$5$B:
;          EXCLUSIVE CPU CYCLES: 2

           SPMASK          L1,L2,S2
||         ADD     .L1X    2,B19,A3
||         ADD     .L2     B4,B16,B16        ; |Algoritmos.c:109| 
||         ADD     .S2     1,B19,B4
||         STB     .D1T1   A5,*A4++(3)       ; |Algoritmos.c:106| (P) <0,0> 

           SPMASK          L2
||         ADD     .L2     B6,B8,B8          ; |Algoritmos.c:105| 
||         STB     .D2T2   B5,*B4++(3)       ; |Algoritmos.c:107| (P) <0,1> 
||         STB     .D1T1   A6,*A3++(3)       ; |Algoritmos.c:108| (P) <0,1> 

	.dwpsn	file "Algoritmos.c",line 110,column 0,is_stmt,isa 0
           SPKERNEL 0,0
$C$DW$L$_NearestNeighbour$5$E:
;** --------------------------------------------------------------------------*
$C$L14:    ; PIPED LOOP EPILOG
;          EXCLUSIVE CPU CYCLES: 1
           NOP             1
;** --------------------------------------------------------------------------*
$C$L15:    
$C$DW$L$_NearestNeighbour$7$B:
;          EXCLUSIVE CPU CYCLES: 7

           CMPLT   .L2     B8,B18,B0         ; |Algoritmos.c:104| 
||         ADD     .L1     3,A8,A8           ; |Algoritmos.c:111| 

   [ B0]   B       .S1     $C$L11            ; |Algoritmos.c:104| 
||         MV      .S2     B0,B1             ; guard predicate rewrite
|| [ B0]   CMPGT   .L2     B6,0,B0           ; |Algoritmos.c:105| 

   [!B1]   MVK     .L2     0x1,B0            ; |Algoritmos.c:105| nullify predicate
	.dwpsn	file "Algoritmos.c",line 112,column 0,is_stmt,isa 0

   [!B0]   BNOP    .S1     $C$L15,3          ; |Algoritmos.c:105| 
|| [ B0]   ADD     .L1     A8,A7,A3

           ; BRANCHCC OCCURS {$C$L11}        ; |Algoritmos.c:104| 
$C$DW$L$_NearestNeighbour$7$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_NearestNeighbour$8$B:
;          EXCLUSIVE CPU CYCLES: 8

           MPY     .M1     A9,A16,A3         ; |Algoritmos.c:113| 
||         ADD     .L1     1,A9,A9           ; |Algoritmos.c:103| 
||         MVK     .S1     720,A4            ; |Algoritmos.c:103| 
||         CMPEQ   .L2     B17,B6,B0         ; |Algoritmos.c:115| 
||         MV      .D1X    B9,A8             ; |Algoritmos.c:114| 

           CMPLT   .L1     A9,A4,A0          ; |Algoritmos.c:103| 
|| [!B0]   ADD     .L2     1,B17,B17         ; |Algoritmos.c:115| 
|| [ B0]   MVK     .D2     0x1,B17           ; |Algoritmos.c:118| 
|| [ B0]   ADD     .S1X    A16,B9,A8         ; |Algoritmos.c:116| 
|| [ B0]   ADDK    .S2     3840,B9           ; |Algoritmos.c:117| 

   [ A0]   B       .S1     $C$L10            ; |Algoritmos.c:103| 
|| [ A0]   CMPGT   .L2     B6,0,B0           ; |Algoritmos.c:105| 
|| [ A0]   ZERO    .S2     B8                ; |Algoritmos.c:104| 

           MV      .L2X    A3,B16            ; |Algoritmos.c:113| Define a twin register
|| [ B0]   ADD     .L1     A8,A7,A3

	.dwpsn	file "Algoritmos.c",line 120,column 0,is_stmt,isa 0
$C$DW$30	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$30, DW_AT_low_pc(0x00)
	.dwattr $C$DW$30, DW_AT_TI_return
   [!A0]   RETNOP  .S2X    A17,3             ; |Algoritmos.c:121| 
           ; BRANCHCC OCCURS {$C$L10}        ; |Algoritmos.c:103| 
$C$DW$L$_NearestNeighbour$8$E:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 2
	.dwpsn	file "Algoritmos.c",line 121,column 1,is_stmt,isa 0
           NOP             2
           ; BRANCH OCCURS {A17}             ; |Algoritmos.c:121| 

$C$DW$31	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$31, DW_AT_name("/home/fernandofernandes/tcc/DSP/Usando YUYV - RGB/CSequencial_DSP.03/Algoritmos.asm:$C$L10:1:1419013772")
	.dwattr $C$DW$31, DW_AT_TI_begin_file("Algoritmos.c")
	.dwattr $C$DW$31, DW_AT_TI_begin_line(0x67)
	.dwattr $C$DW$31, DW_AT_TI_end_line(0x78)
$C$DW$32	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$32, DW_AT_low_pc($C$DW$L$_NearestNeighbour$2$B)
	.dwattr $C$DW$32, DW_AT_high_pc($C$DW$L$_NearestNeighbour$2$E)
$C$DW$33	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$33, DW_AT_low_pc($C$DW$L$_NearestNeighbour$8$B)
	.dwattr $C$DW$33, DW_AT_high_pc($C$DW$L$_NearestNeighbour$8$E)

$C$DW$34	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$34, DW_AT_name("/home/fernandofernandes/tcc/DSP/Usando YUYV - RGB/CSequencial_DSP.03/Algoritmos.asm:$C$L11:2:1419013772")
	.dwattr $C$DW$34, DW_AT_TI_begin_file("Algoritmos.c")
	.dwattr $C$DW$34, DW_AT_TI_begin_line(0x68)
	.dwattr $C$DW$34, DW_AT_TI_end_line(0x70)
$C$DW$35	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$35, DW_AT_low_pc($C$DW$L$_NearestNeighbour$3$B)
	.dwattr $C$DW$35, DW_AT_high_pc($C$DW$L$_NearestNeighbour$3$E)
$C$DW$36	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$36, DW_AT_low_pc($C$DW$L$_NearestNeighbour$7$B)
	.dwattr $C$DW$36, DW_AT_high_pc($C$DW$L$_NearestNeighbour$7$E)

$C$DW$37	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$37, DW_AT_name("/home/fernandofernandes/tcc/DSP/Usando YUYV - RGB/CSequencial_DSP.03/Algoritmos.asm:$C$L13:3:1419013772")
	.dwattr $C$DW$37, DW_AT_TI_begin_file("Algoritmos.c")
	.dwattr $C$DW$37, DW_AT_TI_begin_line(0x69)
	.dwattr $C$DW$37, DW_AT_TI_end_line(0x6e)
$C$DW$38	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$38, DW_AT_low_pc($C$DW$L$_NearestNeighbour$5$B)
	.dwattr $C$DW$38, DW_AT_high_pc($C$DW$L$_NearestNeighbour$5$E)
	.dwendtag $C$DW$37

	.dwendtag $C$DW$34

	.dwendtag $C$DW$31

	.dwattr $C$DW$24, DW_AT_TI_end_file("Algoritmos.c")
	.dwattr $C$DW$24, DW_AT_TI_end_line(0x79)
	.dwattr $C$DW$24, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$24

;*****************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                             *
;*****************************************************************************
	.global	__divi

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
$C$DW$T$32	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$32, DW_AT_address_class(0x20)
$C$DW$T$10	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$10, DW_AT_name("int")
	.dwattr $C$DW$T$10, DW_AT_byte_size(0x04)
$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x04)
$C$DW$T$37	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$T$11)
$C$DW$T$38	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$38, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$T$38, DW_AT_address_class(0x20)
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

