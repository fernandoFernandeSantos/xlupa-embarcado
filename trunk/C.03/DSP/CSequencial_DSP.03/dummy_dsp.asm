;******************************************************************************
;* TMS320C6x C/C++ Codegen                                        Unix v7.6.0 *
;* Date/Time created: Tue Dec 16 12:37:18 2014                                *
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
;*****************************************************************************
;* CINIT RECORDS                                                             *
;*****************************************************************************
	.sect	".cinit"
	.align	8
	.field  	4,32
	.field  	_i$2$0+0,32
	.bits	0,32			; _i$2$0 @ 0

	.sect	".cinit"
	.align	8
	.field  	4,32
	.field  	_k$3$0+0,32
	.bits	0,32			; _k$3$0 @ 0

	.sect	".cinit"
	.align	8
	.field  	2,32
	.field  	_u128$9$0+0,32
	.bits	0,16			; _u128$9$0 @ 0

	.sect	".cinit"
	.align	8
	.field  	2,32
	.field  	_v128$10$0+0,32
	.bits	0,16			; _v128$10$0 @ 0

	.sect	".cinit"
	.align	8
	.field  	4,32
	.field  	_de$11$0+0,32
	.bits	0,32			; _de$11$0 @ 0

	.sect	".cinit"
	.align	8
	.field  	2,32
	.field  	_su1$14$0+0,32
	.bits	0,16			; _su1$14$0 @ 0

	.sect	".cinit"
	.align	8
	.field  	2,32
	.field  	_su2$15$0+0,32
	.bits	0,16			; _su2$15$0 @ 0

	.sect	".cinit"
	.align	8
	.field  	2,32
	.field  	_su3$16$0+0,32
	.bits	0,16			; _su3$16$0 @ 0

	.sect	".cinit"
	.align	8
	.field  	4,32
	.field  	_p_dst$20$0+0,32
	.bits	0,32			; _p_dst$20$0 @ 0

	.sect	".cinit"
	.align	8
	.field  	4,32
	.field  	_cnt$21$0+0,32
	.bits	0,32			; _cnt$21$0 @ 0


$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("_amem4_const")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("__amem4_const")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$26)
	.dwendtag $C$DW$1


$C$DW$3	.dwtag  DW_TAG_subprogram, DW_AT_name("_amem2")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("__amem2")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$3, DW_AT_declaration
	.dwattr $C$DW$3, DW_AT_external
$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$3)
	.dwendtag $C$DW$3


$C$DW$5	.dwtag  DW_TAG_subprogram, DW_AT_name("NODE_getMsg")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("_NODE_getMsg")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$5, DW_AT_declaration
	.dwattr $C$DW$5, DW_AT_external
$C$DW$6	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$3)
$C$DW$7	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$23)
$C$DW$8	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$11)
	.dwendtag $C$DW$5


$C$DW$9	.dwtag  DW_TAG_subprogram, DW_AT_name("NODE_putMsg")
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("_NODE_putMsg")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$9, DW_AT_declaration
	.dwattr $C$DW$9, DW_AT_external
$C$DW$10	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$3)
$C$DW$11	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$3)
$C$DW$12	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$23)
$C$DW$13	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$11)
	.dwendtag $C$DW$9


$C$DW$14	.dwtag  DW_TAG_subprogram, DW_AT_name("BCACHE_inv")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_BCACHE_inv")
	.dwattr $C$DW$14, DW_AT_declaration
	.dwattr $C$DW$14, DW_AT_external
$C$DW$15	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$3)
$C$DW$16	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$27)
$C$DW$17	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$9)
	.dwendtag $C$DW$14


$C$DW$18	.dwtag  DW_TAG_subprogram, DW_AT_name("BCACHE_wbInv")
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("_BCACHE_wbInv")
	.dwattr $C$DW$18, DW_AT_declaration
	.dwattr $C$DW$18, DW_AT_external
$C$DW$19	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$3)
$C$DW$20	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$27)
$C$DW$21	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$9)
	.dwendtag $C$DW$18

	.bss	_i$2$0,4,4
	.bss	_k$3$0,4,4
	.bss	_u128$9$0,2,2
	.bss	_v128$10$0,2,2
	.bss	_de$11$0,4,4
	.bss	_su1$14$0,2,2
	.bss	_su2$15$0,2,2
	.bss	_su3$16$0,2,2
	.bss	_p_dst$20$0,4,4
	.bss	_cnt$21$0,4,4
;	/opt/c6000_7.6.0/bin/opt6x /tmp/20438MWItSD /tmp/20438xj6U7x 
	.sect	".text"
	.clink

$C$DW$22	.dwtag  DW_TAG_subprogram, DW_AT_name("NearestNeighbour")
	.dwattr $C$DW$22, DW_AT_low_pc(_NearestNeighbour$0)
	.dwattr $C$DW$22, DW_AT_high_pc(0x00)
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("_NearestNeighbour$0")
	.dwattr $C$DW$22, DW_AT_TI_begin_file("DSPHeaders/algoritmos.h")
	.dwattr $C$DW$22, DW_AT_TI_begin_line(0x64)
	.dwattr $C$DW$22, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$22, DW_AT_TI_max_frame_size(0x00)
	.dwattr $C$DW$22, DW_AT_frame_base[DW_OP_breg31 0]
	.dwattr $C$DW$22, DW_AT_TI_skeletal
	.dwpsn	file "DSPHeaders/algoritmos.h",line 100,column 113,is_stmt,address _NearestNeighbour$0,isa 0
$C$DW$23	.dwtag  DW_TAG_formal_parameter, DW_AT_name("src")
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("_src")
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$23, DW_AT_location[DW_OP_reg4]
$C$DW$24	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dst")
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("_dst")
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$24, DW_AT_location[DW_OP_reg20]
$C$DW$25	.dwtag  DW_TAG_formal_parameter, DW_AT_name("scale")
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("_scale")
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$25, DW_AT_location[DW_OP_reg6]

;******************************************************************************
;* FUNCTION NAME: NearestNeighbour                                            *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,A16,A17,A18,B16,B17,B18,B30,B31         *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,DP,SP,A16,A17,A18,B16,B17,B18,B30,B31   *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_NearestNeighbour$0:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 29
           MV      .L2X    A6,B6             ; |DSPHeaders/algoritmos.h:100| 
$C$DW$26	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$26, DW_AT_low_pc(0x04)
	.dwattr $C$DW$26, DW_AT_name("__divi")
	.dwattr $C$DW$26, DW_AT_TI_call

           MV      .L1X    B3,A18            ; |DSPHeaders/algoritmos.h:100| 
||         CALLP   .S2     __divi,B3
||         MV      .D1     A4,A7             ; |DSPHeaders/algoritmos.h:100| 
||         MVK     .S1     0x500,A4          ; |DSPHeaders/algoritmos.h:106| 
||         MV      .L2     B4,B16            ; |DSPHeaders/algoritmos.h:100| 
||         MV      .D2X    A6,B4             ; |DSPHeaders/algoritmos.h:100| 

$C$RL0:    ; CALL OCCURS {__divi} {0}        ; |DSPHeaders/algoritmos.h:106| 
$C$DW$27	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$27, DW_AT_low_pc(0x00)
	.dwattr $C$DW$27, DW_AT_name("__divi")
	.dwattr $C$DW$27, DW_AT_TI_call

           CALLP   .S2     __divi,B3
||         MV      .L2     B6,B4             ; |DSPHeaders/algoritmos.h:106| 
||         MV      .L1     A4,A5             ; |DSPHeaders/algoritmos.h:106| 
||         MVK     .S1     0x2d0,A4          ; |DSPHeaders/algoritmos.h:106| 

$C$RL1:    ; CALL OCCURS {__divi} {0}        ; |DSPHeaders/algoritmos.h:106| 
           SHRU    .S1     A4,31,A3          ; |DSPHeaders/algoritmos.h:106| 
           ADD     .L1     A4,A3,A3          ; |DSPHeaders/algoritmos.h:106| 

           SHR     .S1     A3,1,A3           ; |DSPHeaders/algoritmos.h:106| 
||         SHRU    .S2X    A5,31,B7          ; |DSPHeaders/algoritmos.h:106| 

           MVK     .S2     360,B4            ; |DSPHeaders/algoritmos.h:106| 

           SUB     .L2X    B4,A3,B4          ; |DSPHeaders/algoritmos.h:106| 
||         MVK     .S2     1280,B5           ; |DSPHeaders/algoritmos.h:106| 

           MPY     .M2     B4,B5,B7          ; |DSPHeaders/algoritmos.h:106| 
||         ADD     .L2X    A5,B7,B4          ; |DSPHeaders/algoritmos.h:106| 

           SHR     .S2     B4,1,B5           ; |DSPHeaders/algoritmos.h:106| 

           SUB     .L2     B7,B5,B4          ; |DSPHeaders/algoritmos.h:109| 
||         SUB     .S2     B7,B5,B7          ; |DSPHeaders/algoritmos.h:106| 

           ADDK    .S2     640,B7            ; |DSPHeaders/algoritmos.h:106| 

           ADDK    .S2     640,B4            ; |DSPHeaders/algoritmos.h:109| 
||         MVK     .L2     3,B5              ; |DSPHeaders/algoritmos.h:109| 
||         MVK     .L1     3,A3              ; |DSPHeaders/algoritmos.h:106| 

           MPYLI   .M1X    A3,B7,A5:A4       ; |DSPHeaders/algoritmos.h:106| 
||         MPYLI   .M2     B5,B4,B5:B4       ; |DSPHeaders/algoritmos.h:109| 

           CMPGT   .L2     B6,0,B0           ; |DSPHeaders/algoritmos.h:113| 
           LDW     .D2T2   *+DP(_cnt$21$0),B8 ; |DSPHeaders/algoritmos.h:111| 
           MVK     .S2     0x500,B17         ; |DSPHeaders/algoritmos.h:109| 

           ZERO    .L1     A8                ; |DSPHeaders/algoritmos.h:111| 
||         MV      .S1     A4,A9             ; |DSPHeaders/algoritmos.h:106| 

	.dwpsn	file "DSPHeaders/algoritmos.h",line 111,column 0,is_stmt,isa 0

   [ B0]   ADD     .L1     A9,A7,A3
||         MV      .D1X    B4,A16            ; |DSPHeaders/algoritmos.h:109| 
|| [ B0]   MVK     .L2     3,B4              ; |DSPHeaders/algoritmos.h:117| 
||         LDW     .D2T2   *+DP(_p_dst$20$0),B7 ; |DSPHeaders/algoritmos.h:111| 
||         MVK     .S1     0xf00,A17
||         ZERO    .S2     B9                ; |DSPHeaders/algoritmos.h:112| 

;** --------------------------------------------------------------------------*
;**   BEGIN LOOP $C$L1
;** --------------------------------------------------------------------------*
$C$L1:    
$C$DW$L$_NearestNeighbour$0$2$B:
;          EXCLUSIVE CPU CYCLES: 4
	.dwpsn	file "DSPHeaders/algoritmos.h",line 112,column 0,is_stmt,isa 0
   [!B0]   BNOP    .S1     $C$L6,3           ; |DSPHeaders/algoritmos.h:113| 
$C$DW$L$_NearestNeighbour$0$2$E:
;** --------------------------------------------------------------------------*
;**   BEGIN LOOP $C$L2
;** --------------------------------------------------------------------------*
$C$L2:    
$C$DW$L$_NearestNeighbour$0$3$B:
;          EXCLUSIVE CPU CYCLES: 2

   [ B0]   LDBU    .D1T1   *+A9[A7],A5
|| [ B0]   MVC     .S2     B6,ILC

   [ B0]   LDBU    .D1T1   *+A3(2),A6
           ; BRANCHCC OCCURS {$C$L6}         ; |DSPHeaders/algoritmos.h:113| 
$C$DW$L$_NearestNeighbour$0$3$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop found in file               : DSPHeaders/algoritmos.h
;*      Loop source line                 : 113
;*      Loop opening brace source line   : 113
;*      Loop closing brace source line   : 118
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
;*        $C$C25:
;*   0              STB     .D1T1   A5,*A4++(3)       ; |DSPHeaders/algoritmos.h:114| 
;*   1              STB     .D2T2   B5,*B4++(3)       ; |DSPHeaders/algoritmos.h:115| 
;*     ||           STB     .D1T1   A6,*A3++(3)       ; |DSPHeaders/algoritmos.h:116| 
;*     ||           SPBR            $C$C25
;*   2              NOP             2
;*   4              ; BRANCHCC OCCURS {$C$C25}        ; |DSPHeaders/algoritmos.h:113| 
;*----------------------------------------------------------------------------*
$C$L3:    ; PIPED LOOP PROLOG
;          EXCLUSIVE CPU CYCLES: 6

           MPYLI   .M2     B4,B6,B5:B4       ; |DSPHeaders/algoritmos.h:117| 
||         LDBU    .D1T2   *+A3(1),B5

           ADD     .L2     B7,B16,B18
           NOP             1
	.dwpsn	file "DSPHeaders/algoritmos.h",line 113,column 0,is_stmt,isa 0

           SPLOOP  2       ;4                ; (P) 
||         MV      .L1X    B18,A4

;** --------------------------------------------------------------------------*
$C$L4:    ; PIPED LOOP KERNEL
$C$DW$L$_NearestNeighbour$0$5$B:
;          EXCLUSIVE CPU CYCLES: 2

           SPMASK          L1,L2,S2
||         ADD     .L1X    2,B18,A3
||         ADD     .L2     B4,B7,B7          ; |DSPHeaders/algoritmos.h:117| 
||         ADD     .S2     1,B18,B4
||         STB     .D1T1   A5,*A4++(3)       ; |DSPHeaders/algoritmos.h:114| (P) <0,0> 

           SPMASK          L2
||         ADD     .L2     B6,B9,B9          ; |DSPHeaders/algoritmos.h:113| 
||         STB     .D2T2   B5,*B4++(3)       ; |DSPHeaders/algoritmos.h:115| (P) <0,1> 
||         STB     .D1T1   A6,*A3++(3)       ; |DSPHeaders/algoritmos.h:116| (P) <0,1> 

	.dwpsn	file "DSPHeaders/algoritmos.h",line 118,column 0,is_stmt,isa 0
           SPKERNEL 0,0
$C$DW$L$_NearestNeighbour$0$5$E:
;** --------------------------------------------------------------------------*
$C$L5:    ; PIPED LOOP EPILOG
;          EXCLUSIVE CPU CYCLES: 1
           NOP             1
;** --------------------------------------------------------------------------*
$C$L6:    
$C$DW$L$_NearestNeighbour$0$7$B:
;          EXCLUSIVE CPU CYCLES: 7

           CMPLT   .L2     B9,B17,B0         ; |DSPHeaders/algoritmos.h:112| 
||         ADD     .L1     3,A9,A9           ; |DSPHeaders/algoritmos.h:119| 

   [ B0]   B       .S1     $C$L2             ; |DSPHeaders/algoritmos.h:112| 
||         MV      .S2     B0,B1             ; guard predicate rewrite
|| [ B0]   CMPGT   .L2     B6,0,B0           ; |DSPHeaders/algoritmos.h:113| 

   [!B1]   MVK     .L2     0x1,B0            ; |DSPHeaders/algoritmos.h:113| nullify predicate
	.dwpsn	file "DSPHeaders/algoritmos.h",line 120,column 0,is_stmt,isa 0

   [!B0]   BNOP    .S1     $C$L6,3           ; |DSPHeaders/algoritmos.h:113| 
|| [ B0]   MVK     .L2     3,B4              ; |DSPHeaders/algoritmos.h:117| 
|| [ B0]   ADD     .L1     A9,A7,A3

           ; BRANCHCC OCCURS {$C$L2}         ; |DSPHeaders/algoritmos.h:112| 
$C$DW$L$_NearestNeighbour$0$7$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_NearestNeighbour$0$8$B:
;          EXCLUSIVE CPU CYCLES: 8

           MPY     .M1     A8,A17,A3         ; |DSPHeaders/algoritmos.h:121| 
||         ADD     .L1     1,A8,A8           ; |DSPHeaders/algoritmos.h:111| 
||         MVK     .S1     720,A4            ; |DSPHeaders/algoritmos.h:111| 
||         ADD     .L2     1,B8,B4           ; |DSPHeaders/algoritmos.h:123| 
||         MV      .D1     A16,A9            ; |DSPHeaders/algoritmos.h:122| 

           CMPLT   .L1     A8,A4,A0          ; |DSPHeaders/algoritmos.h:111| 
||         CMPEQ   .L2     B4,B6,B0          ; |DSPHeaders/algoritmos.h:123| 

   [ A0]   B       .S2     $C$L1             ; |DSPHeaders/algoritmos.h:111| 
|| [ B0]   ZERO    .L2     B8                ; |DSPHeaders/algoritmos.h:126| 
|| [!B0]   MV      .D2     B4,B8             ; |DSPHeaders/algoritmos.h:123| 
|| [ B0]   ADD     .L1     A17,A16,A9        ; |DSPHeaders/algoritmos.h:124| 
|| [ B0]   ADDK    .S1     3840,A16          ; |DSPHeaders/algoritmos.h:125| 

$C$DW$28	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$28, DW_AT_low_pc(0x00)
	.dwattr $C$DW$28, DW_AT_TI_return

   [!A0]   RET     .S2X    A18               ; |DSPHeaders/algoritmos.h:129| 
|| [ A0]   CMPGT   .L2     B6,0,B0           ; |DSPHeaders/algoritmos.h:113| 
|| [!A0]   STW     .D2T2   B8,*+DP(_cnt$21$0)

   [ A0]   ZERO    .L2     B9                ; |DSPHeaders/algoritmos.h:112| 
||         MV      .S2X    A3,B7             ; |DSPHeaders/algoritmos.h:121| Define a twin register

   [ B0]   MVK     .L2     3,B4              ; |DSPHeaders/algoritmos.h:117| 
   [ B0]   ADD     .L1     A9,A7,A3
	.dwpsn	file "DSPHeaders/algoritmos.h",line 128,column 0,is_stmt,isa 0
   [!A0]   STW     .D2T2   B7,*+DP(_p_dst$20$0)
           ; BRANCHCC OCCURS {$C$L1}         ; |DSPHeaders/algoritmos.h:111| 
$C$DW$L$_NearestNeighbour$0$8$E:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 1
	.dwpsn	file "DSPHeaders/algoritmos.h",line 129,column 1,is_stmt,isa 0
           NOP             1
           ; BRANCH OCCURS {A18}             ; |DSPHeaders/algoritmos.h:129| 

$C$DW$29	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$29, DW_AT_name("/home/fernandofernandes/NetBeansProjects/C.03/DSP/CSequencial_DSP.03/dummy_dsp.asm:$C$L1:1:1418740638")
	.dwattr $C$DW$29, DW_AT_TI_begin_file("DSPHeaders/algoritmos.h")
	.dwattr $C$DW$29, DW_AT_TI_begin_line(0x6f)
	.dwattr $C$DW$29, DW_AT_TI_end_line(0x80)
$C$DW$30	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$30, DW_AT_low_pc($C$DW$L$_NearestNeighbour$0$2$B)
	.dwattr $C$DW$30, DW_AT_high_pc($C$DW$L$_NearestNeighbour$0$2$E)
$C$DW$31	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$31, DW_AT_low_pc($C$DW$L$_NearestNeighbour$0$8$B)
	.dwattr $C$DW$31, DW_AT_high_pc($C$DW$L$_NearestNeighbour$0$8$E)

$C$DW$32	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$32, DW_AT_name("/home/fernandofernandes/NetBeansProjects/C.03/DSP/CSequencial_DSP.03/dummy_dsp.asm:$C$L2:2:1418740638")
	.dwattr $C$DW$32, DW_AT_TI_begin_file("DSPHeaders/algoritmos.h")
	.dwattr $C$DW$32, DW_AT_TI_begin_line(0x70)
	.dwattr $C$DW$32, DW_AT_TI_end_line(0x78)
$C$DW$33	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$33, DW_AT_low_pc($C$DW$L$_NearestNeighbour$0$3$B)
	.dwattr $C$DW$33, DW_AT_high_pc($C$DW$L$_NearestNeighbour$0$3$E)
$C$DW$34	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$34, DW_AT_low_pc($C$DW$L$_NearestNeighbour$0$7$B)
	.dwattr $C$DW$34, DW_AT_high_pc($C$DW$L$_NearestNeighbour$0$7$E)

$C$DW$35	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$35, DW_AT_name("/home/fernandofernandes/NetBeansProjects/C.03/DSP/CSequencial_DSP.03/dummy_dsp.asm:$C$L4:3:1418740638")
	.dwattr $C$DW$35, DW_AT_TI_begin_file("DSPHeaders/algoritmos.h")
	.dwattr $C$DW$35, DW_AT_TI_begin_line(0x71)
	.dwattr $C$DW$35, DW_AT_TI_end_line(0x76)
$C$DW$36	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$36, DW_AT_low_pc($C$DW$L$_NearestNeighbour$0$5$B)
	.dwattr $C$DW$36, DW_AT_high_pc($C$DW$L$_NearestNeighbour$0$5$E)
	.dwendtag $C$DW$35

	.dwendtag $C$DW$32

	.dwendtag $C$DW$29

	.dwattr $C$DW$22, DW_AT_TI_end_file("DSPHeaders/algoritmos.h")
	.dwattr $C$DW$22, DW_AT_TI_end_line(0x81)
	.dwattr $C$DW$22, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$22

	.sect	".text"
	.clink

$C$DW$37	.dwtag  DW_TAG_subprogram, DW_AT_name("sem_modificacao")
	.dwattr $C$DW$37, DW_AT_low_pc(_sem_modificacao$0)
	.dwattr $C$DW$37, DW_AT_high_pc(0x00)
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("_sem_modificacao$0")
	.dwattr $C$DW$37, DW_AT_TI_begin_file("DSPHeaders/algoritmos.h")
	.dwattr $C$DW$37, DW_AT_TI_begin_line(0x3f)
	.dwattr $C$DW$37, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$37, DW_AT_TI_max_frame_size(0x00)
	.dwattr $C$DW$37, DW_AT_frame_base[DW_OP_breg31 0]
	.dwattr $C$DW$37, DW_AT_TI_skeletal
	.dwpsn	file "DSPHeaders/algoritmos.h",line 63,column 102,is_stmt,address _sem_modificacao$0,isa 0
$C$DW$38	.dwtag  DW_TAG_formal_parameter, DW_AT_name("subimage")
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("_subimage")
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$38, DW_AT_location[DW_OP_reg4]
$C$DW$39	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dest")
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("_dest")
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$39, DW_AT_location[DW_OP_reg20]

;******************************************************************************
;* FUNCTION NAME: sem_modificacao                                             *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B4,B5,B6,B7,B8,B9,  *
;*                           A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27, *
;*                           A28,A29,A30,A31,B16,B17,B18,B19,B20,B21,B22,B23  *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B3,B4,B5,B6,B7,B8,  *
;*                           B9,DP,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,   *
;*                           A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20,B21, *
;*                           B22,B23                                          *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_sem_modificacao$0:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 5
           LDW     .D2T2   *+DP(_k$3$0),B23  ; |DSPHeaders/algoritmos.h:75| 
           MVKL    .S2     0x70800,B5
           MVKH    .S2     0x70800,B5
           SUB     .L2     B5,1,B21
           NOP             1
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop found in file               : DSPHeaders/algoritmos.h
;*      Loop source line                 : 75
;*      Loop opening brace source line   : 75
;*      Loop closing brace source line   : 97
;*      Known Minimum Trip Count         : 460800                    
;*      Known Maximum Trip Count         : 460800                    
;*      Known Max Trip Count Factor      : 460800
;*      Loop Carried Dependency Bound(^) : 6
;*      Unpartitioned Resource Bound     : 13
;*      Partitioned Resource Bound(*)    : 13
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     7        5     
;*      .S units                     6        7     
;*      .D units                     8       12     
;*      .M units                     5        4     
;*      .X cross paths               9       13*    
;*      .T address paths             8        9     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           2        1     (.L or .S unit)
;*      Addition ops (.LSD)         13       14     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             8        7     
;*      Bound(.L .S .D .LS .LSD)    12       13*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 13 Schedule found with 4 iterations in parallel
;*
;*      Register Usage Table:
;*          +-----------------------------------------------------------------+
;*          |AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA|BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB|
;*          |00000000001111111111222222222233|00000000001111111111222222222233|
;*          |01234567890123456789012345678901|01234567890123456789012345678901|
;*          |--------------------------------+--------------------------------|
;*       0: |****     *      ********** * ** |    ******    * ********        |
;*       1: |*** *           ************  * |    ******    * ***  ***        |
;*       2: | ******         ********** * *  |    ******    * *    ***        |
;*       3: |**  *  *        ********** * *  |*   ** ***    * *    ***        |
;*       4: |*****  *        **********  **  |*   *****     * *    ***        |
;*       5: |* ******        **********  **  |    ******    * *    ***        |
;*       6: |* **** **        *********  **  |    *****     *      ***        |
;*       7: |* ****  **       *********  *** |    *****     *      ***        |
;*       8: |*   ******      **********  *** |    *****     *      ***        |
;*       9: |*  *******      **********  ****|    *****     *   *  ***        |
;*      10: |*  *******      **********  * **|    * ****    *   *  ***        |
;*      11: |** ** ****      **********  *** |    ******    *   ** ***        |
;*      12: |******  **      **********  *** |    ******    * **** ***        |
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
;*      Min. prof. trip count  (est.) : 3
;*
;*      Mem bank conflicts/iter(est.) : { min 0.000, est 0.500, max 4.000 }
;*      Mem bank perf. penalty (est.) : 3.7%
;*
;*      Effective ii                : { min 13.00, est 13.50, max 17.00 }
;*
;*
;*      Total cycles (est.)         : 39 + min_trip_cnt * 13 = 5990439        
;*----------------------------------------------------------------------------*
;*       SETUP CODE
;*
;*                  MV              A17,B21
;*                  ADD             10,B21,B21
;*                  MV              A17,B22
;*                  ADD             8,B22,B22
;*                  ADD             6,A17,A17
;*
;*        SINGLE SCHEDULED ITERATION
;*
;*        $C$C105:
;*   0              LDW     .D1T1   *A22++,A6         ; |DSPHeaders/algoritmos.h:76| 
;*   1              NOP             3
;*   4              ADDAW   .D2     DP,(_de$11$0),B8  ; |DSPHeaders/algoritmos.h:81| 
;*   5              STW     .D2T1   A6,*+DP(_de$11$0) ; |DSPHeaders/algoritmos.h:76| 
;*   6              LDBU    .D2T1   *+B8(3),A4        ; |DSPHeaders/algoritmos.h:82| 
;*   7              NOP             1
;*   8              LDBU    .D2T2   *+B8(1),B9        ; |DSPHeaders/algoritmos.h:81| 
;*   9              NOP             3
;*  12              ADD     .S1     A23,A4,A27        ; |DSPHeaders/algoritmos.h:82| 
;*     ||           LDBU    .D2T1   *+B8(2),A28       ; |DSPHeaders/algoritmos.h:91| 
;*  13              ADD     .L1X    A23,B9,A26        ; |DSPHeaders/algoritmos.h:81| 
;*  14              LDBU    .D2T2   *B8,B7            ; |DSPHeaders/algoritmos.h:88| 
;*     ||           PACK2   .L1     A26,A27,A6        ; |DSPHeaders/algoritmos.h:89| 
;*     ||           MPY     .M1     A26,A24,A7        ; |DSPHeaders/algoritmos.h:90| 
;*  15              DOTP2   .M1     A6,A21,A8         ; |DSPHeaders/algoritmos.h:89| 
;*  16              MPY     .M1     A27,3,A5          ; |DSPHeaders/algoritmos.h:88| 
;*     ||           EXT     .S1     A7,10,16,A3       ; |DSPHeaders/algoritmos.h:90| 
;*  17              ADD     .L1     A3,A28,A4         ; |DSPHeaders/algoritmos.h:93| 
;*  18              CMPGT   .L1     A4,A19,A0         ; |DSPHeaders/algoritmos.h:93| 
;*  19              EXT     .S1     A5,15,16,A30      ; |DSPHeaders/algoritmos.h:88| 
;*     ||           SHR     .S2X    A7,6,B4           ; |DSPHeaders/algoritmos.h:90| 
;*  20              EXT     .S1     A8,13,16,A7       ; |DSPHeaders/algoritmos.h:89| 
;*     ||           ADD     .L2X    A3,B7,B6          ; |DSPHeaders/algoritmos.h:90| 
;*     ||           ADDAH   .D1X    DP,(_su2$15$0),A16 ; |DSPHeaders/algoritmos.h:90| 
;*     ||           ADD     .L1     A30,A28,A6        ; |DSPHeaders/algoritmos.h:91| 
;*  21              ADD     .S2     B4,B7,B18         ; |DSPHeaders/algoritmos.h:90| 
;*     ||           CMPLT   .L1     A6,0,A31          ; |DSPHeaders/algoritmos.h:91| 
;*     ||           SUB     .D1     A28,A7,A4         ; |DSPHeaders/algoritmos.h:92| 
;*     ||           ADD     .S1X    B4,A28,A3         ; |DSPHeaders/algoritmos.h:93| 
;*     ||           CMPLT   .L2X    A4,0,B4           ; |DSPHeaders/algoritmos.h:93| 
;*  22              SHR     .S2X    A8,3,B4           ; |DSPHeaders/algoritmos.h:89| 
;*     ||           CMPLT   .L1     A4,0,A8           ; |DSPHeaders/algoritmos.h:92| 
;*     ||   [ A0]   EXTU    .S1     A19,24,24,A9      ; |DSPHeaders/algoritmos.h:93|  ^ 
;*     ||           XOR     .L2     1,B4,B9           ; |DSPHeaders/algoritmos.h:93| 
;*  23              SHR     .S2X    A5,1,B5           ; |DSPHeaders/algoritmos.h:88| 
;*     ||           CMPLT   .L2     B6,0,B19          ; |DSPHeaders/algoritmos.h:90| 
;*     ||           XOR     .D1     1,A31,A29         ; |DSPHeaders/algoritmos.h:91| 
;*     ||           CMPGT   .L1     A4,A19,A1         ; |DSPHeaders/algoritmos.h:92| 
;*     ||           XOR     .S1     1,A8,A8           ; |DSPHeaders/algoritmos.h:92| 
;*  24              SUB     .L2X    B7,A7,B16         ; |DSPHeaders/algoritmos.h:89| 
;*     ||           SUB     .S2     B7,B4,B17         ; |DSPHeaders/algoritmos.h:89| 
;*     ||           CMPGT   .L1     A6,A19,A2         ; |DSPHeaders/algoritmos.h:91| 
;*     ||   [ A1]   MV      .D1     A19,A18           ; |DSPHeaders/algoritmos.h:92| 
;*     ||           SUB     .S1X    A28,B4,A5         ; |DSPHeaders/algoritmos.h:92| 
;*  25              CMPLT   .L2     B16,0,B20         ; |DSPHeaders/algoritmos.h:89| 
;*     ||           XOR     .S2     1,B19,B19         ; |DSPHeaders/algoritmos.h:90| 
;*     ||   [ A2]   MV      .D1     A19,A20           ; |DSPHeaders/algoritmos.h:91| 
;*     ||           ADD     .L1X    B5,A28,A3         ; |DSPHeaders/algoritmos.h:91| 
;*     ||           MPY     .M1     A8,A5,A4          ; |DSPHeaders/algoritmos.h:92| 
;*     ||           MPY     .M2X    B9,A3,B9          ; |DSPHeaders/algoritmos.h:93| 
;*  26              XOR     .L2     1,B20,B18         ; |DSPHeaders/algoritmos.h:89| 
;*     ||           MPY     .M2     B19,B18,B9        ; |DSPHeaders/algoritmos.h:90| 
;*     ||           MPY     .M1     A29,A3,A5         ; |DSPHeaders/algoritmos.h:91| 
;*     ||           MV      .S2X    A9,B4             ; |DSPHeaders/algoritmos.h:93|  ^ Define a twin register
;*  27              ADD     .L2X    A30,B7,B8         ; |DSPHeaders/algoritmos.h:88| 
;*     ||           ADDAH   .D1X    DP,(_su1$14$0),A29 ; |DSPHeaders/algoritmos.h:88| 
;*     ||           MPY     .M2     B18,B17,B7        ; |DSPHeaders/algoritmos.h:89| 
;*     ||   [!A0]   EXTU    .S2     B9,24,24,B4       ; |DSPHeaders/algoritmos.h:93|  ^ 
;*  28              ADD     .S2     B5,B7,B16         ; |DSPHeaders/algoritmos.h:88| 
;*     ||           CMPGT   .L1X    B16,A19,A0        ; |DSPHeaders/algoritmos.h:89| 
;*     ||           CMPGT   .L2X    B6,A19,B0         ; |DSPHeaders/algoritmos.h:90| 
;*     ||   [!A2]   EXTU    .S1     A5,24,24,A20      ; |DSPHeaders/algoritmos.h:91| 
;*  29              CMPGT   .L1X    B8,A19,A2         ; |DSPHeaders/algoritmos.h:88| 
;*     ||           CMPLT   .L2     B8,0,B8           ; |DSPHeaders/algoritmos.h:88| 
;*     ||   [ A0]   MV      .D2X    A19,B6            ; |DSPHeaders/algoritmos.h:89| 
;*     ||   [!B0]   EXTU    .S2     B9,24,24,B5       ; |DSPHeaders/algoritmos.h:90| 
;*  30              XOR     .L2     1,B8,B9           ; |DSPHeaders/algoritmos.h:88| 
;*     ||   [ B0]   MV      .S2X    A19,B5            ; |DSPHeaders/algoritmos.h:90| 
;*     ||           STB     .D1T1   A20,*+A16(1)      ; |DSPHeaders/algoritmos.h:91| 
;*     ||   [!A1]   EXTU    .S1     A4,24,24,A18      ; |DSPHeaders/algoritmos.h:92| 
;*  31      [ A2]   MV      .L2X    A19,B5            ; |DSPHeaders/algoritmos.h:88| 
;*     ||           MPY     .M2     B9,B16,B6         ; |DSPHeaders/algoritmos.h:88| 
;*     ||   [!A0]   EXTU    .S2     B7,24,24,B6       ; |DSPHeaders/algoritmos.h:89| 
;*     ||           STB     .D1T2   B5,*A16           ; |DSPHeaders/algoritmos.h:90| 
;*  32              STB     .D1T2   B6,*+A29(1)       ; |DSPHeaders/algoritmos.h:89| 
;*     ||           MV      .L1X    B4,A9             ; |DSPHeaders/algoritmos.h:93|  ^ Define a twin register
;*     ||           ADD     .L2     4,B23,B23         ; |DSPHeaders/algoritmos.h:75| 
;*  33      [!A2]   EXTU    .S2     B6,24,24,B5       ; |DSPHeaders/algoritmos.h:88| 
;*     ||           LDHU    .D2T2   *+DP(_su2$15$0),B4 ; |DSPHeaders/algoritmos.h:95| 
;*  34              NOP             1
;*  35              STB     .D1T2   B5,*A29           ; |DSPHeaders/algoritmos.h:88| 
;*     ||           STB     .D2T1   A18,*+DP(_su3$16$0) ; |DSPHeaders/algoritmos.h:92| 
;*  36              LDHU    .D2T1   *+DP(_su3$16$0),A3 ; |DSPHeaders/algoritmos.h:96| 
;*  37              LDHU    .D2T2   *+DP(_su1$14$0),B5 ; |DSPHeaders/algoritmos.h:94| 
;*  38              NOP             1
;*  39              STH     .D2T2   B4,*B22++(6)      ; |DSPHeaders/algoritmos.h:95| 
;*  40              NOP             1
;*  41              STH     .D2T1   A3,*B21++(6)      ; |DSPHeaders/algoritmos.h:96| 
;*     ||           ADD     .D1     6,A25,A25         ; |DSPHeaders/algoritmos.h:75| 
;*  42              STH     .D1T2   B5,*A17++(6)      ; |DSPHeaders/algoritmos.h:94| 
;*     ||           SPBR            $C$C105
;*  43              NOP             5
;*  52              ; BRANCHCC OCCURS {$C$C105}       ; |DSPHeaders/algoritmos.h:75| 
;*----------------------------------------------------------------------------*
$C$L7:    ; PIPED LOOP PROLOG
;          EXCLUSIVE CPU CYCLES: 40
	.dwpsn	file "DSPHeaders/algoritmos.h",line 75,column 0,is_stmt,isa 0

           SPLOOPD 13      ;52               ; (P) 
||         MVC     .S2     B21,ILC
||         ADD     .L1X    B23,A4,A22

;** --------------------------------------------------------------------------*
$C$L8:    ; PIPED LOOP KERNEL
$C$DW$L$_sem_modificacao$0$3$B:
;          EXCLUSIVE CPU CYCLES: 13
           LDW     .D1T1   *A22++,A6         ; |DSPHeaders/algoritmos.h:76| (P) <0,0> 
           NOP             3
           ADDAW   .D2     DP,(_de$11$0),B8  ; |DSPHeaders/algoritmos.h:81| (P) <0,4> 
           STW     .D2T1   A6,*+DP(_de$11$0) ; |DSPHeaders/algoritmos.h:76| (P) <0,5> 
           LDBU    .D2T1   *+B8(3),A4        ; |DSPHeaders/algoritmos.h:82| (P) <0,6> 
           NOP             1
           LDBU    .D2T2   *+B8(1),B9        ; |DSPHeaders/algoritmos.h:81| (P) <0,8> 
           NOP             1

           SPMASK          D2
||         LDW     .D2T1   *+DP(_i$2$0),A25  ; |DSPHeaders/algoritmos.h:75| 

           SPMASK          S1
||         MVK     .S1     0xffffff80,A23

           SPMASK          L1,D1
||         MVK     .L1     3,A17
||         MVK     .D1     6,A19
||         LDBU    .D2T1   *+B8(2),A28       ; |DSPHeaders/algoritmos.h:91| (P) <0,12> 
||         ADD     .S1     A23,A4,A27        ; |DSPHeaders/algoritmos.h:82| (P) <0,12> 

           SPMASK          S1
||         MVK     .S1     0x81,A24
||         ADD     .L1X    A23,B9,A26        ; |DSPHeaders/algoritmos.h:81| (P) <0,13> 

           SPMASK          S1
||         PACK2   .S1     A17,A19,A21
||         LDBU    .D2T2   *B8,B7            ; |DSPHeaders/algoritmos.h:88| (P) <0,14> 
||         MPY     .M1     A26,A24,A7        ; |DSPHeaders/algoritmos.h:90| (P) <0,14> 
||         PACK2   .L1     A26,A27,A6        ; |DSPHeaders/algoritmos.h:89| (P) <0,14> 

           SPMASK          L1
||         ADD     .L1X    A25,B4,A17
||         DOTP2   .M1     A6,A21,A8         ; |DSPHeaders/algoritmos.h:89| (P) <0,15> 

           MPY     .M1     A27,3,A5          ; |DSPHeaders/algoritmos.h:88| (P) <0,16> 
||         EXT     .S1     A7,10,16,A3       ; |DSPHeaders/algoritmos.h:90| (P) <0,16> 

           SPMASK          S1,L2
||         MVK     .S1     0xff,A19
||         ADD     .L2X    4,A17,B21
||         ADD     .L1     A3,A28,A4         ; |DSPHeaders/algoritmos.h:93| (P) <0,17> 

           SPMASK          L2
||         ADD     .L2X    2,A17,B22
||         CMPGT   .L1     A4,A19,A0         ; |DSPHeaders/algoritmos.h:93| (P) <0,18> 

           SHR     .S2X    A7,6,B4           ; |DSPHeaders/algoritmos.h:90| (P) <0,19> 
||         EXT     .S1     A5,15,16,A30      ; |DSPHeaders/algoritmos.h:88| (P) <0,19> 

           ADDAH   .D1X    DP,(_su2$15$0),A16 ; |DSPHeaders/algoritmos.h:90| (P) <0,20> 
||         ADD     .L2X    A3,B7,B6          ; |DSPHeaders/algoritmos.h:90| (P) <0,20> 
||         EXT     .S1     A8,13,16,A7       ; |DSPHeaders/algoritmos.h:89| (P) <0,20> 
||         ADD     .L1     A30,A28,A6        ; |DSPHeaders/algoritmos.h:91| (P) <0,20> 

           ADD     .S2     B4,B7,B18         ; |DSPHeaders/algoritmos.h:90| (P) <0,21> 
||         CMPLT   .L2X    A4,0,B4           ; |DSPHeaders/algoritmos.h:93| (P) <0,21> 
||         ADD     .S1X    B4,A28,A3         ; |DSPHeaders/algoritmos.h:93| (P) <0,21> 
||         SUB     .D1     A28,A7,A4         ; |DSPHeaders/algoritmos.h:92| (P) <0,21> 
||         CMPLT   .L1     A6,0,A31          ; |DSPHeaders/algoritmos.h:91| (P) <0,21> 

           XOR     .L2     1,B4,B9           ; |DSPHeaders/algoritmos.h:93| (P) <0,22> 
||         SHR     .S2X    A8,3,B4           ; |DSPHeaders/algoritmos.h:89| (P) <0,22> 
||         CMPLT   .L1     A4,0,A8           ; |DSPHeaders/algoritmos.h:92| (P) <0,22> 
|| [ A0]   EXTU    .S1     A19,24,24,A9      ; |DSPHeaders/algoritmos.h:93| (P) <0,22>  ^ 

           XOR     .S1     1,A8,A8           ; |DSPHeaders/algoritmos.h:92| (P) <0,23> 
||         CMPLT   .L2     B6,0,B19          ; |DSPHeaders/algoritmos.h:90| (P) <0,23> 
||         SHR     .S2X    A5,1,B5           ; |DSPHeaders/algoritmos.h:88| (P) <0,23> 
||         XOR     .D1     1,A31,A29         ; |DSPHeaders/algoritmos.h:91| (P) <0,23> 
||         CMPGT   .L1     A4,A19,A1         ; |DSPHeaders/algoritmos.h:92| (P) <0,23> 

   [ A1]   MV      .D1     A19,A18           ; |DSPHeaders/algoritmos.h:92| (P) <0,24> 
||         SUB     .S1X    A28,B4,A5         ; |DSPHeaders/algoritmos.h:92| (P) <0,24> 
||         SUB     .S2     B7,B4,B17         ; |DSPHeaders/algoritmos.h:89| (P) <0,24> 
||         SUB     .L2X    B7,A7,B16         ; |DSPHeaders/algoritmos.h:89| (P) <0,24> 
||         CMPGT   .L1     A6,A19,A2         ; |DSPHeaders/algoritmos.h:91| (P) <0,24> 

           MPY     .M2X    B9,A3,B9          ; |DSPHeaders/algoritmos.h:93| (P) <0,25> 
||         XOR     .S2     1,B19,B19         ; |DSPHeaders/algoritmos.h:90| (P) <0,25> 
||         MPY     .M1     A8,A5,A4          ; |DSPHeaders/algoritmos.h:92| (P) <0,25> 
||         ADD     .L1X    B5,A28,A3         ; |DSPHeaders/algoritmos.h:91| (P) <0,25> 
||         CMPLT   .L2     B16,0,B20         ; |DSPHeaders/algoritmos.h:89| (P) <0,25> 
|| [ A2]   MV      .D1     A19,A20           ; |DSPHeaders/algoritmos.h:91| (P) <0,25> 

           XOR     .L2     1,B20,B18         ; |DSPHeaders/algoritmos.h:89| (P) <0,26> 
||         MV      .S2X    A9,B4             ; |DSPHeaders/algoritmos.h:93| (P) <0,26>  ^ Define a twin register
||         MPY     .M1     A29,A3,A5         ; |DSPHeaders/algoritmos.h:91| (P) <0,26> 
||         MPY     .M2     B19,B18,B9        ; |DSPHeaders/algoritmos.h:90| (P) <0,26> 

           ADDAH   .D1X    DP,(_su1$14$0),A29 ; |DSPHeaders/algoritmos.h:88| (P) <0,27> 
|| [!A0]   EXTU    .S2     B9,24,24,B4       ; |DSPHeaders/algoritmos.h:93| (P) <0,27>  ^ 
||         ADD     .L2X    A30,B7,B8         ; |DSPHeaders/algoritmos.h:88| (P) <0,27> 
||         MPY     .M2     B18,B17,B7        ; |DSPHeaders/algoritmos.h:89| (P) <0,27> 

           ADD     .S2     B5,B7,B16         ; |DSPHeaders/algoritmos.h:88| (P) <0,28> 
||         CMPGT   .L2X    B6,A19,B0         ; |DSPHeaders/algoritmos.h:90| (P) <0,28> 
||         CMPGT   .L1X    B16,A19,A0        ; |DSPHeaders/algoritmos.h:89| (P) <0,28> 
|| [!A2]   EXTU    .S1     A5,24,24,A20      ; |DSPHeaders/algoritmos.h:91| (P) <0,28> 

   [ A0]   MV      .D2X    A19,B6            ; |DSPHeaders/algoritmos.h:89| (P) <0,29> 
|| [!B0]   EXTU    .S2     B9,24,24,B5       ; |DSPHeaders/algoritmos.h:90| (P) <0,29> 
||         CMPLT   .L2     B8,0,B8           ; |DSPHeaders/algoritmos.h:88| (P) <0,29> 
||         CMPGT   .L1X    B8,A19,A2         ; |DSPHeaders/algoritmos.h:88| (P) <0,29> 

           XOR     .L2     1,B8,B9           ; |DSPHeaders/algoritmos.h:88| (P) <0,30> 
||         STB     .D1T1   A20,*+A16(1)      ; |DSPHeaders/algoritmos.h:91| (P) <0,30> 
|| [ B0]   MV      .S2X    A19,B5            ; |DSPHeaders/algoritmos.h:90| (P) <0,30> 
|| [!A1]   EXTU    .S1     A4,24,24,A18      ; |DSPHeaders/algoritmos.h:92| (P) <0,30> 

   [!A0]   EXTU    .S2     B7,24,24,B6       ; |DSPHeaders/algoritmos.h:89| (P) <0,31> 
||         MPY     .M2     B9,B16,B6         ; |DSPHeaders/algoritmos.h:88| (P) <0,31> 
|| [ A2]   MV      .L2X    A19,B5            ; |DSPHeaders/algoritmos.h:88| (P) <0,31> 
||         STB     .D1T2   B5,*A16           ; |DSPHeaders/algoritmos.h:90| (P) <0,31> 

           ADD     .L2     4,B23,B23         ; |DSPHeaders/algoritmos.h:75| (P) <0,32> 
||         STB     .D1T2   B6,*+A29(1)       ; |DSPHeaders/algoritmos.h:89| (P) <0,32> 
||         MV      .L1X    B4,A9             ; |DSPHeaders/algoritmos.h:93| (P) <0,32>  ^ Define a twin register

   [!A2]   EXTU    .S2     B6,24,24,B5       ; |DSPHeaders/algoritmos.h:88| (P) <0,33> 
||         LDHU    .D2T2   *+DP(_su2$15$0),B4 ; |DSPHeaders/algoritmos.h:95| (P) <0,33> 

           NOP             1

           STB     .D2T1   A18,*+DP(_su3$16$0) ; |DSPHeaders/algoritmos.h:92| (P) <0,35> 
||         STB     .D1T2   B5,*A29           ; |DSPHeaders/algoritmos.h:88| (P) <0,35> 

           LDHU    .D2T1   *+DP(_su3$16$0),A3 ; |DSPHeaders/algoritmos.h:96| (P) <0,36> 
           LDHU    .D2T2   *+DP(_su1$14$0),B5 ; |DSPHeaders/algoritmos.h:94| (P) <0,37> 
           NOP             1
           STH     .D2T2   B4,*B22++(6)      ; |DSPHeaders/algoritmos.h:95| <0,39> 
           NOP             1

           ADD     .D1     6,A25,A25         ; |DSPHeaders/algoritmos.h:75| <0,41> 
||         STH     .D2T1   A3,*B21++(6)      ; |DSPHeaders/algoritmos.h:96| <0,41> 

	.dwpsn	file "DSPHeaders/algoritmos.h",line 97,column 0,is_stmt,isa 0

           SPKERNEL 1,0
||         STH     .D1T2   B5,*A17++(6)      ; |DSPHeaders/algoritmos.h:94| <0,42> 

$C$DW$L$_sem_modificacao$0$3$E:
;** --------------------------------------------------------------------------*
$C$L9:    ; PIPED LOOP EPILOG
;          EXCLUSIVE CPU CYCLES: 35
           NOP             9
           NOP             4
           MV      .L2X    A9,B4
           NOP             2
$C$DW$40	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$40, DW_AT_low_pc(0x00)
	.dwattr $C$DW$40, DW_AT_TI_return
           RET     .S2     B3                ; |DSPHeaders/algoritmos.h:98| 
           STW     .D2T2   B23,*+DP(_k$3$0)
           STH     .D2T1   A27,*+DP(_v128$10$0)
           STH     .D2T1   A26,*+DP(_u128$9$0)
           STW     .D2T1   A25,*+DP(_i$2$0)
	.dwpsn	file "DSPHeaders/algoritmos.h",line 98,column 1,is_stmt,isa 0
           STB     .D2T2   B4,*+DP(_su3$16$0+2)
           ; BRANCH OCCURS {B3}              ; |DSPHeaders/algoritmos.h:98| 

$C$DW$41	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$41, DW_AT_name("/home/fernandofernandes/NetBeansProjects/C.03/DSP/CSequencial_DSP.03/dummy_dsp.asm:$C$L8:1:1418740638")
	.dwattr $C$DW$41, DW_AT_TI_begin_file("DSPHeaders/algoritmos.h")
	.dwattr $C$DW$41, DW_AT_TI_begin_line(0x4b)
	.dwattr $C$DW$41, DW_AT_TI_end_line(0x61)
$C$DW$42	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$42, DW_AT_low_pc($C$DW$L$_sem_modificacao$0$3$B)
	.dwattr $C$DW$42, DW_AT_high_pc($C$DW$L$_sem_modificacao$0$3$E)
	.dwendtag $C$DW$41

	.dwattr $C$DW$37, DW_AT_TI_end_file("DSPHeaders/algoritmos.h")
	.dwattr $C$DW$37, DW_AT_TI_end_line(0x62)
	.dwattr $C$DW$37, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$37

	.sect	".text"
	.clink
	.global	_dummy_execute

$C$DW$43	.dwtag  DW_TAG_subprogram, DW_AT_name("dummy_execute")
	.dwattr $C$DW$43, DW_AT_low_pc(_dummy_execute)
	.dwattr $C$DW$43, DW_AT_high_pc(0x00)
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("_dummy_execute")
	.dwattr $C$DW$43, DW_AT_external
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$43, DW_AT_TI_begin_file("dummy_dsp.c")
	.dwattr $C$DW$43, DW_AT_TI_begin_line(0x25)
	.dwattr $C$DW$43, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$43, DW_AT_TI_max_frame_size(0x2a3040)
	.dwattr $C$DW$43, DW_AT_frame_base[DW_OP_breg31 2764864]
	.dwattr $C$DW$43, DW_AT_TI_skeletal
	.dwpsn	file "dummy_dsp.c",line 37,column 26,is_stmt,address _dummy_execute,isa 0
$C$DW$44	.dwtag  DW_TAG_formal_parameter, DW_AT_name("env")
	.dwattr $C$DW$44, DW_AT_TI_symbol_name("_env")
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$44, DW_AT_location[DW_OP_reg4]

;******************************************************************************
;* FUNCTION NAME: dummy_execute                                               *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,B0,*
;*                           B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B13,SP,FP,A16,*
;*                           A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28, *
;*                           A29,A30,A31,B16,B17,B18,B19,B20,B21,B22,B23,B24, *
;*                           B25,B26,B27,B28,B29,B30,B31                      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,B0,*
;*                           B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B13,DP,SP,FP, *
;*                           A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27, *
;*                           A28,A29,A30,A31,B16,B17,B18,B19,B20,B21,B22,B23, *
;*                           B24,B25,B26,B27,B28,B29,B30,B31                  *
;*   Local Frame Size  : 0 Args + 2764828 Auto + 36 Save = 2764864 byte       *
;******************************************************************************
_dummy_execute:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 6
           MVKL    .S2     0xa8c10,B31
           MVKH    .S2     0xa8c10,B31

           MV      .L1X    SP,FP             ; |dummy_dsp.c:37| 
||         STW     .D2T1   FP,*SP--[B31]     ; |dummy_dsp.c:37| 
||         MV      .L2     SP,B30            ; |dummy_dsp.c:37| 

           STW     .D1T1   A14,*-FP(8)       ; |dummy_dsp.c:37| 
||         STDW    .D2T2   B11:B10,*-B30(16) ; |dummy_dsp.c:37| 

           STDW    .D1T1   A13:A12,*-FP(24)  ; |dummy_dsp.c:37| 
||         STW     .D2T2   B13,*-B30(4)      ; |dummy_dsp.c:37| 

	.dwpsn	file "dummy_dsp.c",line 46,column 0,is_stmt,isa 0
$C$DW$45	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$45, DW_AT_low_pc(0x00)
	.dwattr $C$DW$45, DW_AT_name("_NODE_getMsg")
	.dwattr $C$DW$45, DW_AT_TI_call

           CALL    .S2     _NODE_getMsg      ; |dummy_dsp.c:47| 
||         MVK     .L1     0xffffffff,A14
||         MV      .S1     A4,A12            ; |dummy_dsp.c:37| 
||         MV      .L2     B3,B13            ; |dummy_dsp.c:37| 
||         ZERO    .D2     B10               ; |dummy_dsp.c:41| 
||         STDW    .D1T1   A11:A10,*-FP(32)  ; |dummy_dsp.c:37| 

;** --------------------------------------------------------------------------*
;**   BEGIN LOOP $C$L10
;** --------------------------------------------------------------------------*
$C$L10:    
$C$DW$L$_dummy_execute$2$B:
;          EXCLUSIVE CPU CYCLES: 5
           ADDKPC  .S2     $C$RL2,B3,3       ; |dummy_dsp.c:47| 

           ADDAW   .D2     SP,4,B4           ; |dummy_dsp.c:47| 
||         MV      .L1     A12,A4            ; |dummy_dsp.c:47| 
||         MV      .S1     A14,A6            ; |dummy_dsp.c:47| 

$C$RL2:    ; CALL OCCURS {_NODE_getMsg} {0}  ; |dummy_dsp.c:47| 
$C$DW$L$_dummy_execute$2$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_dummy_execute$3$B:
;          EXCLUSIVE CPU CYCLES: 13
           LDW     .D2T2   *+SP(16),B4       ; |dummy_dsp.c:49| 
           MVKL    .S2     $C$SW1,B5
           ZERO    .L1     A3
           MVKH    .S2     $C$SW1,B5
           MVKH    .S1     0x80000000,A3
           CMPEQ   .L1X    B4,A3,A0          ; |dummy_dsp.c:49| 

   [ A0]   MVK     .S2     0x1,B0            ; |dummy_dsp.c:49| 
|| [!A0]   CMPGTU  .L2     B4,6,B0           ; |dummy_dsp.c:49| 
|| [ A0]   MVK     .L1     0x1,A3            ; |dummy_dsp.c:127| 

   [ B0]   BNOP    .S1     $C$L31,1          ; |dummy_dsp.c:49| 
|| [!B0]   LDW     .D2T2   *+B5[B4],B4       ; |dummy_dsp.c:49| 

   [ A0]   MV      .L2X    A3,B10            ; |dummy_dsp.c:127| 
           NOP             1
   [ B0]   MV      .L1X    B10,A0
   [!B0]   B       .S2     B4                ; |dummy_dsp.c:49| 
           ; BRANCHCC OCCURS {$C$L31} {-8}   ; |dummy_dsp.c:49| 
$C$DW$L$_dummy_execute$3$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_dummy_execute$4$B:
;          EXCLUSIVE CPU CYCLES: 5
           NOP             5
           ; BRANCH OCCURS {B4}              ; |dummy_dsp.c:49| 
	.sect	".switch:_dummy_execute"
	.clink
$C$SW1:	.word	$C$L29	; 0
	.word	$C$L28	; 1
	.word	$C$L27	; 2
	.word	$C$L23	; 3
	.word	$C$L19	; 4
	.word	$C$L15	; 5
	.word	$C$L11	; 6
	.sect	".text"
$C$DW$L$_dummy_execute$4$E:
;** --------------------------------------------------------------------------*
$C$L11:    
$C$DW$L$_dummy_execute$5$B:
;          EXCLUSIVE CPU CYCLES: 9
$C$DW$46	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$46, DW_AT_low_pc(0x00)
	.dwattr $C$DW$46, DW_AT_name("_BCACHE_inv")
	.dwattr $C$DW$46, DW_AT_TI_call

           CALLP   .S2     _BCACHE_inv,B3
||         LDW     .D2T2   *+SP(20),B4       ; |dummy_dsp.c:119| 
||         MV      .L1     A10,A4            ; |dummy_dsp.c:119| 
||         MVK     .S1     0x1,A6            ; |dummy_dsp.c:119| 

$C$RL3:    ; CALL OCCURS {_BCACHE_inv} {0}   ; |dummy_dsp.c:119| 
           MVKL    .S1     0x38400,A3

           MVKH    .S1     0x38400,A3
||         SUB     .L2X    A11,12,B9

           SUB     .L1     A3,1,A3
||         ADD     .L2X    4,A10,B8

$C$DW$L$_dummy_execute$5$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop found in file               : dummy_dsp.c
;*      Loop inlined from                : DSPHeaders/algoritmos.h
;*      Loop source line                 : 45
;*      Loop opening brace source line   : 45
;*      Loop closing brace source line   : 60
;*      Loop Unroll Multiple             : 2x
;*      Known Minimum Trip Count         : 230400                    
;*      Known Maximum Trip Count         : 230400                    
;*      Known Max Trip Count Factor      : 230400
;*      Loop Carried Dependency Bound(^) : 0
;*      Unpartitioned Resource Bound     : 7
;*      Partitioned Resource Bound(*)    : 7
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     2        2     
;*      .S units                     0        0     
;*      .D units                     7*       7*    
;*      .M units                     0        0     
;*      .X cross paths               0        2     
;*      .T address paths             7*       7*    
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          2        2     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        1     
;*      Bound(.L .S .D .LS .LSD)     4        4     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 7  Schedule found with 2 iterations in parallel
;*
;*      Register Usage Table:
;*          +-----------------------------------------------------------------+
;*          |AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA|BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB|
;*          |00000000001111111111222222222233|00000000001111111111222222222233|
;*          |01234567890123456789012345678901|01234567890123456789012345678901|
;*          |--------------------------------+--------------------------------|
;*       0: |   *******      ***             |    ******      ***             |
;*       1: |*  *******      ***             |*   ******      ***             |
;*       2: |   ** ****      ***             |    * ****      ***             |
;*       3: |   ** ****      ***             |    * ****      ***             |
;*       4: |   ** ****      ***             |    * ****      ***             |
;*       5: |   *******      ***             |    ******      ***             |
;*       6: |*  *******      ***             |*   ******      ***             |
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
;*      Min. prof. trip count  (est.) : 3 (after unrolling)
;*
;*      Mem bank conflicts/iter(est.) : { min 3.625, est 3.625, max 3.625 }
;*      Mem bank perf. penalty (est.) : 34.1%
;*
;*      Effective ii                : 10.6
;*
;*
;*      Total cycles (est.)         : 7 + min_trip_cnt * 7 = 1612807        
;*----------------------------------------------------------------------------*
;*       SETUP CODE
;*
;*                  MV              B4,A17
;*                  ADDK            21,A17
;*                  MV              B4,B9
;*                  ADDK            18,B9
;*                  MV              B4,A7
;*                  ADDK            22,A7
;*                  MV              B4,A8
;*                  ADDK            20,A8
;*                  MV              B4,A9
;*                  ADDK            18,A9
;*                  MV              B4,A16
;*                  ADD             15,A16,A16
;*                  MV              B4,B16
;*                  ADD             12,B16,B16
;*                  MV              B4,B17
;*                  ADDK            16,B17
;*                  MV              B4,B18
;*                  ADD             14,B18,B18
;*                  ADD             12,B4,B4
;*                  MV              A4,B8
;*                  ADD             4,B8,B8
;*                  MV              A4,A18
;*                  ADD             6,A18,A18
;*                  MV              A4,B7
;*                  ADD             2,A4,A4
;*                  MV              A3,B6
;*
;*        SINGLE SCHEDULED ITERATION
;*
;*        $C$C162:
;*   0              LDBU    .D1T1   *A18++(8),A5      ; |DSPHeaders/algoritmos.h:52| 
;*     ||           LDBU    .D2T2   *B8++(8),B5       ; |DSPHeaders/algoritmos.h:54| 
;*   1              NOP             1
;*   2              LDBU    .D1T1   *A4++(8),A5       ; |DSPHeaders/algoritmos.h:52| 
;*     ||           LDBU    .D2T2   *B7++(8),B5       ; |DSPHeaders/algoritmos.h:54| 
;*   3              STH     .D2T2   B6,*B17++(12)     ; |DSPHeaders/algoritmos.h:49| 
;*     ||           STH     .D1T1   A3,*A7++(12)      ; |DSPHeaders/algoritmos.h:49| 
;*   4              STH     .D2T2   B6,*B4++(12)      ; |DSPHeaders/algoritmos.h:47| 
;*     ||           STH     .D1T1   A3,*A9++(12)      ; |DSPHeaders/algoritmos.h:47| 
;*   5              STH     .D2T2   B6,*B18++(12)     ; |DSPHeaders/algoritmos.h:48| 
;*     ||           STH     .D1T1   A3,*A8++(12)      ; |DSPHeaders/algoritmos.h:48| 
;*     ||           CMPLT   .L2X    B5,A6,B0          ; |DSPHeaders/algoritmos.h:54| 
;*     ||           ADD     .S2     12,B9,B9          ; |DSPHeaders/algoritmos.h:54| 
;*     ||           CMPLT   .L1     A5,A6,A0          ; |DSPHeaders/algoritmos.h:57| 
;*     ||           ADD     .S1     12,A17,A17        ; |DSPHeaders/algoritmos.h:57| 
;*   6      [!B0]   STB     .D2T2   B5,*-B9(12)       ; |DSPHeaders/algoritmos.h:55| 
;*     ||   [!A0]   STB     .D1T1   A5,*-A17(12)      ; |DSPHeaders/algoritmos.h:58| 
;*   7              CMPLT   .L2X    B5,A6,B0          ; |DSPHeaders/algoritmos.h:54| 
;*     ||           ADD     .S2     12,B16,B16        ; |DSPHeaders/algoritmos.h:54| 
;*     ||           CMPLT   .L1     A5,A6,A0          ; |DSPHeaders/algoritmos.h:57| 
;*     ||           ADD     .S1     12,A16,A16        ; |DSPHeaders/algoritmos.h:57| 
;*   8      [!B0]   STB     .D2T2   B5,*-B16(12)      ; |DSPHeaders/algoritmos.h:55| 
;*     ||   [!A0]   STB     .D1T1   A5,*-A16(12)      ; |DSPHeaders/algoritmos.h:58| 
;*     ||           SPBR            $C$C162
;*   9              NOP             5
;*  14              ; BRANCHCC OCCURS {$C$C162}       ; |DSPHeaders/algoritmos.h:45| 
;*----------------------------------------------------------------------------*
$C$L12:    ; PIPED LOOP PROLOG
;          EXCLUSIVE CPU CYCLES: 8
	.dwpsn	file "DSPHeaders/algoritmos.h",line 45,column 0,is_stmt,isa 0

           SPLOOPD 7       ;14               ; (P) 
||         MVK     .S1     0x80,A6
||         ADD     .L1     6,A10,A18
||         MVC     .S2X    A3,ILC

;** --------------------------------------------------------------------------*
$C$L13:    ; PIPED LOOP KERNEL
$C$DW$L$_dummy_execute$7$B:
;          EXCLUSIVE CPU CYCLES: 7

           SPMASK          L1,S1,L2
||         SUB     .L1     A11,12,A9
||         MV      .L2X    A10,B7            ; |dummy_dsp.c:120| 
||         SUB     .S1     A11,12,A8
||         LDBU    .D2T2   *B8++(8),B5       ; |DSPHeaders/algoritmos.h:54| (P) <0,0> 
||         LDBU    .D1T1   *A18++(8),A5      ; |DSPHeaders/algoritmos.h:52| (P) <0,0> 

           SPMASK          L1,S1,D1,L2
||         ADD     .L1     2,A10,A4
||         SUB     .L2X    A11,12,B17
||         SUB     .D1     A11,12,A7
||         ADDK    .S1     20,A8

           SPMASK          L1,S1,L2,S2
||         ZERO    .L2     B6
||         ADDK    .S1     22,A7
||         ADDK    .S2     16,B17
||         ZERO    .L1     A3
||         LDBU    .D1T1   *A4++(8),A5       ; |DSPHeaders/algoritmos.h:52| (P) <0,2> 
||         LDBU    .D2T2   *B7++(8),B5       ; |DSPHeaders/algoritmos.h:54| (P) <0,2> 

           SPMASK          L1,S1,L2,S2
||         MVKL    .S2     0x2a3000,B19
||         SUB     .L1     A11,12,A17
||         MV      .L2X    A11,B4
||         ADDK    .S1     18,A9
||         STH     .D2T2   B6,*B17++(12)     ; |DSPHeaders/algoritmos.h:49| (P) <0,3> 
||         STH     .D1T1   A3,*A7++(12)      ; |DSPHeaders/algoritmos.h:49| (P) <0,3> 

           SPMASK          S1,L2,S2
||         ADD     .L2X    2,A11,B18
||         ADDK    .S1     21,A17
||         ADDK    .S2     18,B9
||         STH     .D2T2   B6,*B4++(12)      ; |DSPHeaders/algoritmos.h:47| (P) <0,4> 
||         STH     .D1T1   A3,*A9++(12)      ; |DSPHeaders/algoritmos.h:47| (P) <0,4> 

           STH     .D2T2   B6,*B18++(12)     ; |DSPHeaders/algoritmos.h:48| (P) <0,5> 
||         ADD     .S2     12,B9,B9          ; |DSPHeaders/algoritmos.h:54| (P) <0,5> 
||         ADD     .S1     12,A17,A17        ; |DSPHeaders/algoritmos.h:57| (P) <0,5> 
||         STH     .D1T1   A3,*A8++(12)      ; |DSPHeaders/algoritmos.h:48| (P) <0,5> 
||         CMPLT   .L1     A5,A6,A0          ; |DSPHeaders/algoritmos.h:57| (P) <0,5> 
||         CMPLT   .L2X    B5,A6,B0          ; |DSPHeaders/algoritmos.h:54| (P) <0,5> 

           SPMASK          L1,L2,S2
||         ADD     .L1     3,A11,A16
||         MV      .L2X    A11,B16
||         MVKH    .S2     0x2a3000,B19
|| [!A0]   STB     .D1T1   A5,*-A17(12)      ; |DSPHeaders/algoritmos.h:58| (P) <0,6> 
|| [!B0]   STB     .D2T2   B5,*-B9(12)       ; |DSPHeaders/algoritmos.h:55| (P) <0,6> 

           ADD     .S2     12,B16,B16        ; |DSPHeaders/algoritmos.h:54| <0,7> 
||         ADD     .S1     12,A16,A16        ; |DSPHeaders/algoritmos.h:57| <0,7> 
||         CMPLT   .L1     A5,A6,A0          ; |DSPHeaders/algoritmos.h:57| <0,7> 
||         CMPLT   .L2X    B5,A6,B0          ; |DSPHeaders/algoritmos.h:54| <0,7> 

	.dwpsn	file "DSPHeaders/algoritmos.h",line 60,column 0,is_stmt,isa 0

           SPKERNEL 0,0
|| [!A0]   STB     .D1T1   A5,*-A16(12)      ; |DSPHeaders/algoritmos.h:58| <0,8> 
|| [!B0]   STB     .D2T2   B5,*-B16(12)      ; |DSPHeaders/algoritmos.h:55| <0,8> 

$C$DW$L$_dummy_execute$7$E:
;** --------------------------------------------------------------------------*
$C$L14:    ; PIPED LOOP EPILOG
;          EXCLUSIVE CPU CYCLES: 7

           MVK     .D1     0x1,A6            ; |dummy_dsp.c:121| 
||         MV      .D2     B19,B4            ; |dummy_dsp.c:121| 

$C$DW$47	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$47, DW_AT_low_pc(0x04)
	.dwattr $C$DW$47, DW_AT_name("_BCACHE_wbInv")
	.dwattr $C$DW$47, DW_AT_TI_call

           MV      .L1     A11,A4            ; |dummy_dsp.c:121| 
||         CALL    .S2     _BCACHE_wbInv     ; |dummy_dsp.c:121| 

           ADDKPC  .S2     $C$RL4,B3,4       ; |dummy_dsp.c:121| 
$C$RL4:    ; CALL OCCURS {_BCACHE_wbInv} {0}  ; |dummy_dsp.c:121| 
;** --------------------------------------------------------------------------*
$C$DW$L$_dummy_execute$9$B:
;          EXCLUSIVE CPU CYCLES: 7
           MV      .L1     A12,A4            ; |dummy_dsp.c:123| 
$C$DW$48	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$48, DW_AT_low_pc(0x08)
	.dwattr $C$DW$48, DW_AT_name("_NODE_putMsg")
	.dwattr $C$DW$48, DW_AT_TI_call

           ZERO    .L2     B4                ; |dummy_dsp.c:123| 
||         ADDAW   .D1X    SP,4,A6           ; |dummy_dsp.c:123| 
||         CALLP   .S2     _NODE_putMsg,B3
||         ZERO    .D2     B6                ; |dummy_dsp.c:123| 

$C$RL5:    ; CALL OCCURS {_NODE_putMsg} {0}  ; |dummy_dsp.c:123| 
$C$DW$L$_dummy_execute$9$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_dummy_execute$10$B:
;          EXCLUSIVE CPU CYCLES: 6

           BNOP    .S1     $C$L31,5          ; |dummy_dsp.c:124| 
||         MV      .L1X    B10,A0

           ; BRANCH OCCURS {$C$L31}          ; |dummy_dsp.c:124| 
$C$DW$L$_dummy_execute$10$E:
;** --------------------------------------------------------------------------*
$C$L15:    
$C$DW$L$_dummy_execute$11$B:
;          EXCLUSIVE CPU CYCLES: 14
           LDW     .D2T2   *+SP(20),B4       ; |dummy_dsp.c:106| 
$C$DW$49	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$49, DW_AT_low_pc(0x00)
	.dwattr $C$DW$49, DW_AT_name("_BCACHE_inv")
	.dwattr $C$DW$49, DW_AT_TI_call

           CALLP   .S2     _BCACHE_inv,B3
||         LDW     .D2T1   *+SP(24),A13      ; |dummy_dsp.c:105| 
||         MV      .L1     A10,A4            ; |dummy_dsp.c:106| 
||         MVK     .S1     0x1,A6            ; |dummy_dsp.c:106| 

$C$RL6:    ; CALL OCCURS {_BCACHE_inv} {0}   ; |dummy_dsp.c:106| 
           ADDAW   .D1X    SP,8,A3
           ADD     .L2X    4,A10,B8
           ADD     .L2X    2,A3,B18

           MVKL    .S1     0x38400,A5
||         SUB     .L2X    A3,12,B9

           MVKH    .S1     0x38400,A5
||         SUB     .L2X    A3,12,B17

           ADD     .L2X    1,A3,B16
||         SUB     .L1     A3,12,A7
||         SUB     .S1     A3,12,A17
||         SUB     .D1     A3,12,A8

           MV      .L2X    A3,B4
||         SUB     .L1     A3,12,A16
||         SUB     .S1     A3,12,A9
||         SUB     .D1     A5,1,A3

$C$DW$L$_dummy_execute$11$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop found in file               : dummy_dsp.c
;*      Loop inlined from                : DSPHeaders/algoritmos.h
;*      Loop source line                 : 45
;*      Loop opening brace source line   : 45
;*      Loop closing brace source line   : 60
;*      Loop Unroll Multiple             : 2x
;*      Known Minimum Trip Count         : 230400                    
;*      Known Maximum Trip Count         : 230400                    
;*      Known Max Trip Count Factor      : 230400
;*      Loop Carried Dependency Bound(^) : 0
;*      Unpartitioned Resource Bound     : 7
;*      Partitioned Resource Bound(*)    : 7
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     2        2     
;*      .S units                     0        0     
;*      .D units                     7*       7*    
;*      .M units                     0        0     
;*      .X cross paths               0        2     
;*      .T address paths             7*       7*    
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          2        2     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        1     
;*      Bound(.L .S .D .LS .LSD)     4        4     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 7  Schedule found with 2 iterations in parallel
;*
;*      Register Usage Table:
;*          +-----------------------------------------------------------------+
;*          |AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA|BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB|
;*          |00000000001111111111222222222233|00000000001111111111222222222233|
;*          |01234567890123456789012345678901|01234567890123456789012345678901|
;*          |--------------------------------+--------------------------------|
;*       0: |   *******      ***             |    ******      ***             |
;*       1: |*  *******      ***             |*   ******      ***             |
;*       2: |   ** ****      ***             |    * ****      ***             |
;*       3: |   ** ****      ***             |    * ****      ***             |
;*       4: |   ** ****      ***             |    * ****      ***             |
;*       5: |   *******      ***             |    ******      ***             |
;*       6: |*  *******      ***             |*   ******      ***             |
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
;*      Min. prof. trip count  (est.) : 3 (after unrolling)
;*
;*      Mem bank conflicts/iter(est.) : { min 3.500, est 3.500, max 3.500 }
;*      Mem bank perf. penalty (est.) : 33.3%
;*
;*      Effective ii                : 10.5
;*
;*
;*      Total cycles (est.)         : 7 + min_trip_cnt * 7 = 1612807        
;*----------------------------------------------------------------------------*
;*       SETUP CODE
;*
;*                  MV              B4,A17
;*                  ADDK            22,A17
;*                  MV              B4,B9
;*                  ADDK            19,B9
;*                  MV              B4,A7
;*                  ADDK            22,A7
;*                  MV              B4,A8
;*                  ADDK            20,A8
;*                  MV              B4,A9
;*                  ADDK            18,A9
;*                  MV              B4,A16
;*                  ADDK            16,A16
;*                  MV              B4,B16
;*                  ADD             13,B16,B16
;*                  MV              B4,B17
;*                  ADDK            16,B17
;*                  MV              B4,B18
;*                  ADD             14,B18,B18
;*                  ADD             12,B4,B4
;*                  MV              A4,B8
;*                  ADD             4,B8,B8
;*                  MV              A4,A18
;*                  ADD             6,A18,A18
;*                  MV              A4,B7
;*                  ADD             2,A4,A4
;*                  MV              A3,B6
;*
;*        SINGLE SCHEDULED ITERATION
;*
;*        $C$C188:
;*   0              LDBU    .D1T1   *A18++(8),A5      ; |DSPHeaders/algoritmos.h:52| 
;*     ||           LDBU    .D2T2   *B8++(8),B5       ; |DSPHeaders/algoritmos.h:54| 
;*   1              NOP             1
;*   2              LDBU    .D1T1   *A4++(8),A5       ; |DSPHeaders/algoritmos.h:52| 
;*     ||           LDBU    .D2T2   *B7++(8),B5       ; |DSPHeaders/algoritmos.h:54| 
;*   3              STH     .D2T2   B6,*B18++(12)     ; |DSPHeaders/algoritmos.h:48| 
;*     ||           STH     .D1T1   A3,*A8++(12)      ; |DSPHeaders/algoritmos.h:48| 
;*   4              STH     .D2T2   B6,*B4++(12)      ; |DSPHeaders/algoritmos.h:47| 
;*     ||           STH     .D1T1   A3,*A9++(12)      ; |DSPHeaders/algoritmos.h:47| 
;*   5              STH     .D2T2   B6,*B17++(12)     ; |DSPHeaders/algoritmos.h:49| 
;*     ||           STH     .D1T1   A3,*A7++(12)      ; |DSPHeaders/algoritmos.h:49| 
;*     ||           CMPLT   .L2X    B5,A6,B0          ; |DSPHeaders/algoritmos.h:54| 
;*     ||           ADD     .S2     12,B9,B9          ; |DSPHeaders/algoritmos.h:54| 
;*     ||           CMPLT   .L1     A5,A6,A0          ; |DSPHeaders/algoritmos.h:57| 
;*     ||           ADD     .S1     12,A17,A17        ; |DSPHeaders/algoritmos.h:57| 
;*   6      [!B0]   STB     .D2T2   B5,*-B9(12)       ; |DSPHeaders/algoritmos.h:55| 
;*     ||   [!A0]   STB     .D1T1   A5,*-A17(12)      ; |DSPHeaders/algoritmos.h:58| 
;*   7              CMPLT   .L2X    B5,A6,B0          ; |DSPHeaders/algoritmos.h:54| 
;*     ||           ADD     .S2     12,B16,B16        ; |DSPHeaders/algoritmos.h:54| 
;*     ||           CMPLT   .L1     A5,A6,A0          ; |DSPHeaders/algoritmos.h:57| 
;*     ||           ADD     .S1     12,A16,A16        ; |DSPHeaders/algoritmos.h:57| 
;*   8      [!B0]   STB     .D2T2   B5,*-B16(12)      ; |DSPHeaders/algoritmos.h:55| 
;*     ||   [!A0]   STB     .D1T1   A5,*-A16(12)      ; |DSPHeaders/algoritmos.h:58| 
;*     ||           SPBR            $C$C188
;*   9              NOP             5
;*  14              ; BRANCHCC OCCURS {$C$C188}       ; |DSPHeaders/algoritmos.h:45| 
;*----------------------------------------------------------------------------*
$C$L16:    ; PIPED LOOP PROLOG
;          EXCLUSIVE CPU CYCLES: 8
	.dwpsn	file "DSPHeaders/algoritmos.h",line 45,column 0,is_stmt,isa 0

           SPLOOPD 7       ;14               ; (P) 
||         ADD     .L1     6,A10,A18
||         MVC     .S2X    A3,ILC

;** --------------------------------------------------------------------------*
$C$L17:    ; PIPED LOOP KERNEL
$C$DW$L$_dummy_execute$13$B:
;          EXCLUSIVE CPU CYCLES: 7

           SPMASK          S1
||         MVK     .S1     0x80,A6
||         LDBU    .D2T2   *B8++(8),B5       ; |DSPHeaders/algoritmos.h:54| (P) <0,0> 
||         LDBU    .D1T1   *A18++(8),A5      ; |DSPHeaders/algoritmos.h:52| (P) <0,0> 

           SPMASK          L1,S1,L2
||         MV      .L2X    A10,B7            ; |dummy_dsp.c:107| 
||         ADD     .L1     2,A10,A4
||         ADDK    .S1     22,A17

           SPMASK          L1,S1,L2,S2
||         MVKL    .S2     0x2a3000,B19
||         ZERO    .L2     B6
||         ADDK    .S1     20,A8
||         ZERO    .L1     A3
||         LDBU    .D1T1   *A4++(8),A5       ; |DSPHeaders/algoritmos.h:52| (P) <0,2> 
||         LDBU    .D2T2   *B7++(8),B5       ; |DSPHeaders/algoritmos.h:54| (P) <0,2> 

           SPMASK          S1,S2
||         ADDK    .S1     18,A9
||         ADDK    .S2     16,B17
||         STH     .D2T2   B6,*B18++(12)     ; |DSPHeaders/algoritmos.h:48| (P) <0,3> 
||         STH     .D1T1   A3,*A8++(12)      ; |DSPHeaders/algoritmos.h:48| (P) <0,3> 

           SPMASK          S1,S2
||         ADDK    .S1     22,A7
||         ADDK    .S2     19,B9
||         STH     .D2T2   B6,*B4++(12)      ; |DSPHeaders/algoritmos.h:47| (P) <0,4> 
||         STH     .D1T1   A3,*A9++(12)      ; |DSPHeaders/algoritmos.h:47| (P) <0,4> 

           STH     .D2T2   B6,*B17++(12)     ; |DSPHeaders/algoritmos.h:49| (P) <0,5> 
||         ADD     .S2     12,B9,B9          ; |DSPHeaders/algoritmos.h:54| (P) <0,5> 
||         ADD     .S1     12,A17,A17        ; |DSPHeaders/algoritmos.h:57| (P) <0,5> 
||         STH     .D1T1   A3,*A7++(12)      ; |DSPHeaders/algoritmos.h:49| (P) <0,5> 
||         CMPLT   .L1     A5,A6,A0          ; |DSPHeaders/algoritmos.h:57| (P) <0,5> 
||         CMPLT   .L2X    B5,A6,B0          ; |DSPHeaders/algoritmos.h:54| (P) <0,5> 

           SPMASK          S1,S2
||         MVKH    .S2     0x2a3000,B19
||         ADDK    .S1     16,A16
|| [!A0]   STB     .D1T1   A5,*-A17(12)      ; |DSPHeaders/algoritmos.h:58| (P) <0,6> 
|| [!B0]   STB     .D2T2   B5,*-B9(12)       ; |DSPHeaders/algoritmos.h:55| (P) <0,6> 

           ADD     .S2     12,B16,B16        ; |DSPHeaders/algoritmos.h:54| <0,7> 
||         ADD     .S1     12,A16,A16        ; |DSPHeaders/algoritmos.h:57| <0,7> 
||         CMPLT   .L1     A5,A6,A0          ; |DSPHeaders/algoritmos.h:57| <0,7> 
||         CMPLT   .L2X    B5,A6,B0          ; |DSPHeaders/algoritmos.h:54| <0,7> 

	.dwpsn	file "DSPHeaders/algoritmos.h",line 60,column 0,is_stmt,isa 0

           SPKERNEL 0,0
|| [!A0]   STB     .D1T1   A5,*-A16(12)      ; |DSPHeaders/algoritmos.h:58| <0,8> 
|| [!B0]   STB     .D2T2   B5,*-B16(12)      ; |DSPHeaders/algoritmos.h:55| <0,8> 

$C$DW$L$_dummy_execute$13$E:
;** --------------------------------------------------------------------------*
$C$L18:    ; PIPED LOOP EPILOG
;          EXCLUSIVE CPU CYCLES: 7
           MV      .D1     A13,A6            ; |dummy_dsp.c:108| 
$C$DW$50	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$50, DW_AT_low_pc(0x04)
	.dwattr $C$DW$50, DW_AT_name("_NearestNeighbour$0")
	.dwattr $C$DW$50, DW_AT_TI_call

           MV      .L2X    A11,B4            ; |dummy_dsp.c:108| 
||         CALL    .S2     _NearestNeighbour$0 ; |dummy_dsp.c:108| 

           ADDAW   .D1X    SP,8,A4           ; |dummy_dsp.c:108| 
||         ADDKPC  .S2     $C$RL7,B3,4       ; |dummy_dsp.c:108| 

$C$RL7:    ; CALL OCCURS {_NearestNeighbour$0} {0}  ; |dummy_dsp.c:108| 
;** --------------------------------------------------------------------------*
$C$DW$L$_dummy_execute$15$B:
;          EXCLUSIVE CPU CYCLES: 13
           MV      .L1     A11,A4            ; |dummy_dsp.c:109| 
$C$DW$51	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$51, DW_AT_low_pc(0x08)
	.dwattr $C$DW$51, DW_AT_name("_BCACHE_wbInv")
	.dwattr $C$DW$51, DW_AT_TI_call

           MVK     .L1     0x1,A6            ; |dummy_dsp.c:109| 
||         MV      .L2     B19,B4            ; |dummy_dsp.c:109| 
||         CALLP   .S2     _BCACHE_wbInv,B3

$C$RL8:    ; CALL OCCURS {_BCACHE_wbInv} {0}  ; |dummy_dsp.c:109| 
$C$DW$52	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$52, DW_AT_low_pc(0x00)
	.dwattr $C$DW$52, DW_AT_name("_NODE_putMsg")
	.dwattr $C$DW$52, DW_AT_TI_call

           CALLP   .S2     _NODE_putMsg,B3
||         ZERO    .L2     B6                ; |dummy_dsp.c:111| 
||         MV      .L1     A12,A4            ; |dummy_dsp.c:111| 
||         ZERO    .D2     B4                ; |dummy_dsp.c:111| 
||         ADDAW   .D1X    SP,4,A6           ; |dummy_dsp.c:111| 

$C$RL9:    ; CALL OCCURS {_NODE_putMsg} {0}  ; |dummy_dsp.c:111| 
$C$DW$L$_dummy_execute$15$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_dummy_execute$16$B:
;          EXCLUSIVE CPU CYCLES: 6

           BNOP    .S1     $C$L31,5          ; |dummy_dsp.c:113| 
||         MV      .L1X    B10,A0

           ; BRANCH OCCURS {$C$L31}          ; |dummy_dsp.c:113| 
$C$DW$L$_dummy_execute$16$E:
;** --------------------------------------------------------------------------*
$C$L19:    
$C$DW$L$_dummy_execute$17$B:
;          EXCLUSIVE CPU CYCLES: 9
$C$DW$53	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$53, DW_AT_low_pc(0x00)
	.dwattr $C$DW$53, DW_AT_name("_BCACHE_inv")
	.dwattr $C$DW$53, DW_AT_TI_call

           CALLP   .S2     _BCACHE_inv,B3
||         LDW     .D2T2   *+SP(20),B4       ; |dummy_dsp.c:95| 
||         MV      .L1     A10,A4            ; |dummy_dsp.c:95| 
||         MVK     .S1     0x1,A6            ; |dummy_dsp.c:95| 

$C$RL10:   ; CALL OCCURS {_BCACHE_inv} {0}   ; |dummy_dsp.c:95| 
           MVKL    .S1     0x38400,A3

           MVKH    .S1     0x38400,A3
||         ADD     .L2X    4,A10,B8

           SUB     .L1     A3,1,A3
||         MV      .L2X    A11,B4

$C$DW$L$_dummy_execute$17$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop found in file               : dummy_dsp.c
;*      Loop inlined from                : DSPHeaders/algoritmos.h
;*      Loop source line                 : 45
;*      Loop opening brace source line   : 45
;*      Loop closing brace source line   : 60
;*      Loop Unroll Multiple             : 2x
;*      Known Minimum Trip Count         : 230400                    
;*      Known Maximum Trip Count         : 230400                    
;*      Known Max Trip Count Factor      : 230400
;*      Loop Carried Dependency Bound(^) : 0
;*      Unpartitioned Resource Bound     : 7
;*      Partitioned Resource Bound(*)    : 7
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     2        2     
;*      .S units                     0        0     
;*      .D units                     7*       7*    
;*      .M units                     0        0     
;*      .X cross paths               0        2     
;*      .T address paths             7*       7*    
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          2        2     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        1     
;*      Bound(.L .S .D .LS .LSD)     4        4     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 7  Schedule found with 2 iterations in parallel
;*
;*      Register Usage Table:
;*          +-----------------------------------------------------------------+
;*          |AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA|BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB|
;*          |00000000001111111111222222222233|00000000001111111111222222222233|
;*          |01234567890123456789012345678901|01234567890123456789012345678901|
;*          |--------------------------------+--------------------------------|
;*       0: |   *******      ***             |    ******      ***             |
;*       1: |*  *******      ***             |*   ******      ***             |
;*       2: |   ** ****      ***             |    * ****      ***             |
;*       3: |   ** ****      ***             |    * ****      ***             |
;*       4: |   ** ****      ***             |    * ****      ***             |
;*       5: |   *******      ***             |    ******      ***             |
;*       6: |*  *******      ***             |*   ******      ***             |
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
;*      Min. prof. trip count  (est.) : 3 (after unrolling)
;*
;*      Mem bank conflicts/iter(est.) : { min 3.500, est 3.500, max 3.500 }
;*      Mem bank perf. penalty (est.) : 33.3%
;*
;*      Effective ii                : 10.5
;*
;*
;*      Total cycles (est.)         : 7 + min_trip_cnt * 7 = 1612807        
;*----------------------------------------------------------------------------*
;*       SETUP CODE
;*
;*                  MV              B4,A17
;*                  ADDK            22,A17
;*                  MV              B4,B9
;*                  ADDK            19,B9
;*                  MV              B4,A7
;*                  ADDK            22,A7
;*                  MV              B4,A8
;*                  ADDK            20,A8
;*                  MV              B4,A9
;*                  ADDK            18,A9
;*                  MV              B4,A16
;*                  ADDK            16,A16
;*                  MV              B4,B16
;*                  ADD             13,B16,B16
;*                  MV              B4,B17
;*                  ADDK            16,B17
;*                  MV              B4,B18
;*                  ADD             14,B18,B18
;*                  ADD             12,B4,B4
;*                  MV              A4,B8
;*                  ADD             4,B8,B8
;*                  MV              A4,A18
;*                  ADD             6,A18,A18
;*                  MV              A4,B7
;*                  ADD             2,A4,A4
;*                  MV              A3,B6
;*
;*        SINGLE SCHEDULED ITERATION
;*
;*        $C$C214:
;*   0              LDBU    .D1T1   *A18++(8),A5      ; |DSPHeaders/algoritmos.h:52| 
;*     ||           LDBU    .D2T2   *B8++(8),B5       ; |DSPHeaders/algoritmos.h:54| 
;*   1              NOP             1
;*   2              LDBU    .D1T1   *A4++(8),A5       ; |DSPHeaders/algoritmos.h:52| 
;*     ||           LDBU    .D2T2   *B7++(8),B5       ; |DSPHeaders/algoritmos.h:54| 
;*   3              STH     .D2T2   B6,*B18++(12)     ; |DSPHeaders/algoritmos.h:48| 
;*     ||           STH     .D1T1   A3,*A8++(12)      ; |DSPHeaders/algoritmos.h:48| 
;*   4              STH     .D2T2   B6,*B4++(12)      ; |DSPHeaders/algoritmos.h:47| 
;*     ||           STH     .D1T1   A3,*A9++(12)      ; |DSPHeaders/algoritmos.h:47| 
;*   5              STH     .D2T2   B6,*B17++(12)     ; |DSPHeaders/algoritmos.h:49| 
;*     ||           STH     .D1T1   A3,*A7++(12)      ; |DSPHeaders/algoritmos.h:49| 
;*     ||           CMPLT   .L2X    B5,A6,B0          ; |DSPHeaders/algoritmos.h:54| 
;*     ||           ADD     .S2     12,B9,B9          ; |DSPHeaders/algoritmos.h:54| 
;*     ||           CMPLT   .L1     A5,A6,A0          ; |DSPHeaders/algoritmos.h:57| 
;*     ||           ADD     .S1     12,A17,A17        ; |DSPHeaders/algoritmos.h:57| 
;*   6      [!B0]   STB     .D2T2   B5,*-B9(12)       ; |DSPHeaders/algoritmos.h:55| 
;*     ||   [!A0]   STB     .D1T1   A5,*-A17(12)      ; |DSPHeaders/algoritmos.h:58| 
;*   7              CMPLT   .L2X    B5,A6,B0          ; |DSPHeaders/algoritmos.h:54| 
;*     ||           ADD     .S2     12,B16,B16        ; |DSPHeaders/algoritmos.h:54| 
;*     ||           CMPLT   .L1     A5,A6,A0          ; |DSPHeaders/algoritmos.h:57| 
;*     ||           ADD     .S1     12,A16,A16        ; |DSPHeaders/algoritmos.h:57| 
;*   8      [!B0]   STB     .D2T2   B5,*-B16(12)      ; |DSPHeaders/algoritmos.h:55| 
;*     ||   [!A0]   STB     .D1T1   A5,*-A16(12)      ; |DSPHeaders/algoritmos.h:58| 
;*     ||           SPBR            $C$C214
;*   9              NOP             5
;*  14              ; BRANCHCC OCCURS {$C$C214}       ; |DSPHeaders/algoritmos.h:45| 
;*----------------------------------------------------------------------------*
$C$L20:    ; PIPED LOOP PROLOG
;          EXCLUSIVE CPU CYCLES: 8
	.dwpsn	file "DSPHeaders/algoritmos.h",line 45,column 0,is_stmt,isa 0

           SPLOOPD 7       ;14               ; (P) 
||         MVK     .S1     0x80,A6
||         ADD     .L1     6,A10,A18
||         MVC     .S2X    A3,ILC

;** --------------------------------------------------------------------------*
$C$L21:    ; PIPED LOOP KERNEL
$C$DW$L$_dummy_execute$19$B:
;          EXCLUSIVE CPU CYCLES: 7

           SPMASK          L1,S1,L2
||         ADD     .L2X    2,A11,B18
||         SUB     .L1     A11,12,A9
||         SUB     .S1     A11,12,A17
||         LDBU    .D2T2   *B8++(8),B5       ; |DSPHeaders/algoritmos.h:54| (P) <0,0> 
||         LDBU    .D1T1   *A18++(8),A5      ; |DSPHeaders/algoritmos.h:52| (P) <0,0> 

           SPMASK          L1,S1,D1,L2,S2
||         MVKL    .S2     0x2a3000,B19
||         ADD     .L1     2,A10,A4
||         MV      .L2X    A10,B7            ; |dummy_dsp.c:96| 
||         SUB     .D1     A11,12,A8
||         ADDK    .S1     22,A17

           SPMASK          L1,S1,L2,S2
||         ZERO    .L2     B6
||         SUB     .S2X    A11,12,B17
||         ADDK    .S1     20,A8
||         ZERO    .L1     A3
||         LDBU    .D1T1   *A4++(8),A5       ; |DSPHeaders/algoritmos.h:52| (P) <0,2> 
||         LDBU    .D2T2   *B7++(8),B5       ; |DSPHeaders/algoritmos.h:54| (P) <0,2> 

           SPMASK          L1,S1,L2,S2
||         SUB     .L1     A11,12,A7
||         SUB     .L2X    A11,12,B9
||         ADDK    .S2     16,B17
||         ADDK    .S1     18,A9
||         STH     .D2T2   B6,*B18++(12)     ; |DSPHeaders/algoritmos.h:48| (P) <0,3> 
||         STH     .D1T1   A3,*A8++(12)      ; |DSPHeaders/algoritmos.h:48| (P) <0,3> 

           SPMASK          L1,S1,S2
||         SUB     .L1     A11,12,A16
||         ADDK    .S1     22,A7
||         ADDK    .S2     19,B9
||         STH     .D2T2   B6,*B4++(12)      ; |DSPHeaders/algoritmos.h:47| (P) <0,4> 
||         STH     .D1T1   A3,*A9++(12)      ; |DSPHeaders/algoritmos.h:47| (P) <0,4> 

           STH     .D2T2   B6,*B17++(12)     ; |DSPHeaders/algoritmos.h:49| (P) <0,5> 
||         ADD     .S2     12,B9,B9          ; |DSPHeaders/algoritmos.h:54| (P) <0,5> 
||         ADD     .S1     12,A17,A17        ; |DSPHeaders/algoritmos.h:57| (P) <0,5> 
||         STH     .D1T1   A3,*A7++(12)      ; |DSPHeaders/algoritmos.h:49| (P) <0,5> 
||         CMPLT   .L1     A5,A6,A0          ; |DSPHeaders/algoritmos.h:57| (P) <0,5> 
||         CMPLT   .L2X    B5,A6,B0          ; |DSPHeaders/algoritmos.h:54| (P) <0,5> 

           SPMASK          S1,L2,S2
||         ADD     .L2X    1,A11,B16
||         MVKH    .S2     0x2a3000,B19
||         ADDK    .S1     16,A16
|| [!A0]   STB     .D1T1   A5,*-A17(12)      ; |DSPHeaders/algoritmos.h:58| (P) <0,6> 
|| [!B0]   STB     .D2T2   B5,*-B9(12)       ; |DSPHeaders/algoritmos.h:55| (P) <0,6> 

           ADD     .S2     12,B16,B16        ; |DSPHeaders/algoritmos.h:54| <0,7> 
||         ADD     .S1     12,A16,A16        ; |DSPHeaders/algoritmos.h:57| <0,7> 
||         CMPLT   .L1     A5,A6,A0          ; |DSPHeaders/algoritmos.h:57| <0,7> 
||         CMPLT   .L2X    B5,A6,B0          ; |DSPHeaders/algoritmos.h:54| <0,7> 

	.dwpsn	file "DSPHeaders/algoritmos.h",line 60,column 0,is_stmt,isa 0

           SPKERNEL 0,0
|| [!A0]   STB     .D1T1   A5,*-A16(12)      ; |DSPHeaders/algoritmos.h:58| <0,8> 
|| [!B0]   STB     .D2T2   B5,*-B16(12)      ; |DSPHeaders/algoritmos.h:55| <0,8> 

$C$DW$L$_dummy_execute$19$E:
;** --------------------------------------------------------------------------*
$C$L22:    ; PIPED LOOP EPILOG
;          EXCLUSIVE CPU CYCLES: 7

           MVK     .D1     0x1,A6            ; |dummy_dsp.c:97| 
||         MV      .D2     B19,B4            ; |dummy_dsp.c:97| 

$C$DW$54	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$54, DW_AT_low_pc(0x04)
	.dwattr $C$DW$54, DW_AT_name("_BCACHE_wbInv")
	.dwattr $C$DW$54, DW_AT_TI_call

           MV      .L1     A11,A4            ; |dummy_dsp.c:97| 
||         CALL    .S2     _BCACHE_wbInv     ; |dummy_dsp.c:97| 

           ADDKPC  .S2     $C$RL11,B3,4      ; |dummy_dsp.c:97| 
$C$RL11:   ; CALL OCCURS {_BCACHE_wbInv} {0}  ; |dummy_dsp.c:97| 
;** --------------------------------------------------------------------------*
$C$DW$L$_dummy_execute$21$B:
;          EXCLUSIVE CPU CYCLES: 7
           MV      .L1     A12,A4            ; |dummy_dsp.c:99| 
$C$DW$55	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$55, DW_AT_low_pc(0x08)
	.dwattr $C$DW$55, DW_AT_name("_NODE_putMsg")
	.dwattr $C$DW$55, DW_AT_TI_call

           ZERO    .L2     B4                ; |dummy_dsp.c:99| 
||         ADDAW   .D1X    SP,4,A6           ; |dummy_dsp.c:99| 
||         CALLP   .S2     _NODE_putMsg,B3
||         ZERO    .D2     B6                ; |dummy_dsp.c:99| 

$C$RL12:   ; CALL OCCURS {_NODE_putMsg} {0}  ; |dummy_dsp.c:99| 
$C$DW$L$_dummy_execute$21$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_dummy_execute$22$B:
;          EXCLUSIVE CPU CYCLES: 6

           BNOP    .S1     $C$L31,5          ; |dummy_dsp.c:100| 
||         MV      .L1X    B10,A0

           ; BRANCH OCCURS {$C$L31}          ; |dummy_dsp.c:100| 
$C$DW$L$_dummy_execute$22$E:
;** --------------------------------------------------------------------------*
$C$L23:    
$C$DW$L$_dummy_execute$23$B:
;          EXCLUSIVE CPU CYCLES: 9
$C$DW$56	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$56, DW_AT_low_pc(0x00)
	.dwattr $C$DW$56, DW_AT_name("_BCACHE_inv")
	.dwattr $C$DW$56, DW_AT_TI_call

           CALLP   .S2     _BCACHE_inv,B3
||         LDW     .D2T2   *+SP(20),B4       ; |dummy_dsp.c:84| 
||         MV      .L1     A10,A4            ; |dummy_dsp.c:84| 
||         MVK     .S1     0x1,A6            ; |dummy_dsp.c:84| 

$C$RL13:   ; CALL OCCURS {_BCACHE_inv} {0}   ; |dummy_dsp.c:84| 
           MVKL    .S2     0x70800,B4
           MVKH    .S2     0x70800,B4
           SUB     .L2     B4,1,B4
$C$DW$L$_dummy_execute$23$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop found in file               : dummy_dsp.c
;*      Loop inlined from                : DSPHeaders/algoritmos.h
;*      Loop source line                 : 21
;*      Loop opening brace source line   : 21
;*      Loop closing brace source line   : 36
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
;*                  MV              A7,A5
;*                  ADD             10,A5,A5
;*                  MV              A7,A6
;*                  ADD             8,A6,A6
;*                  ADD             6,A7,A7
;*
;*        SINGLE SCHEDULED ITERATION
;*
;*        $C$C241:
;*   0              LDW     .D1T1   *A8++,A3          ; |DSPHeaders/algoritmos.h:22| 
;*   1              NOP             5
;*   6              STW     .D2T1   A3,*+SP(4)        ; |DSPHeaders/algoritmos.h:22|  ^ 
;*   7              LDBU    .D2T2   *+SP(4),B5        ; |DSPHeaders/algoritmos.h:24|  ^ 
;*   8              NOP             1
;*   9              LDBU    .D2T1   *+SP(6),A4        ; |DSPHeaders/algoritmos.h:28|  ^ 
;*  10              NOP             5
;*  15              STB     .D2T2   B5,*+SP(10)       ; |DSPHeaders/algoritmos.h:27|  ^ 
;*  16              STB     .D2T2   B5,*+SP(8)        ; |DSPHeaders/algoritmos.h:24|  ^ 
;*  17              STB     .D2T2   B5,*+SP(9)        ; |DSPHeaders/algoritmos.h:25|  ^ 
;*  18              NOP             2
;*  20              LDHU    .D2T2   *+SP(8),B4        ; |DSPHeaders/algoritmos.h:33|  ^ 
;*  21              NOP             1
;*  22              STB     .D2T1   A4,*+SP(12)       ; |DSPHeaders/algoritmos.h:30|  ^ 
;*  23              STB     .D2T1   A4,*+SP(13)       ; |DSPHeaders/algoritmos.h:31|  ^ 
;*  24              LDHU    .D2T2   *+SP(12),B4       ; |DSPHeaders/algoritmos.h:35|  ^ 
;*  25              STB     .D2T1   A4,*+SP(11)       ; |DSPHeaders/algoritmos.h:28|  ^ 
;*     ||           STH     .D1T2   B4,*A7++(6)       ; |DSPHeaders/algoritmos.h:33| 
;*  26              LDHU    .D2T1   *+SP(10),A3       ; |DSPHeaders/algoritmos.h:34|  ^ 
;*  27              NOP             3
;*  30              STH     .D1T2   B4,*A5++(6)       ; |DSPHeaders/algoritmos.h:35| 
;*  31              STH     .D1T1   A3,*A6++(6)       ; |DSPHeaders/algoritmos.h:34| 
;*     ||           SPBR            $C$C241
;*  32              NOP             4
;*  36              ; BRANCHCC OCCURS {$C$C241}       ; |DSPHeaders/algoritmos.h:21| 
;*----------------------------------------------------------------------------*
$C$L24:    ; PIPED LOOP PROLOG
;          EXCLUSIVE CPU CYCLES: 25
	.dwpsn	file "DSPHeaders/algoritmos.h",line 21,column 0,is_stmt,isa 0

           SPLOOPD 12      ;36               ; (P) 
||         MV      .L1     A10,A8            ; |dummy_dsp.c:85| 
||         MVC     .S2     B4,ILC

;** --------------------------------------------------------------------------*
$C$L25:    ; PIPED LOOP KERNEL
$C$DW$L$_dummy_execute$25$B:
;          EXCLUSIVE CPU CYCLES: 12
           LDW     .D1T1   *A8++,A3          ; |DSPHeaders/algoritmos.h:22| (P) <0,0> 
           NOP             5
           STW     .D2T1   A3,*+SP(4)        ; |DSPHeaders/algoritmos.h:22| (P) <0,6>  ^ 
           LDBU    .D2T2   *+SP(4),B5        ; |DSPHeaders/algoritmos.h:24| (P) <0,7>  ^ 
           NOP             1
           LDBU    .D2T1   *+SP(6),A4        ; |DSPHeaders/algoritmos.h:28| (P) <0,9>  ^ 
           NOP             5
           STB     .D2T2   B5,*+SP(10)       ; |DSPHeaders/algoritmos.h:27| (P) <0,15>  ^ 
           STB     .D2T2   B5,*+SP(8)        ; |DSPHeaders/algoritmos.h:24| (P) <0,16>  ^ 
           STB     .D2T2   B5,*+SP(9)        ; |DSPHeaders/algoritmos.h:25| (P) <0,17>  ^ 
           NOP             2
           LDHU    .D2T2   *+SP(8),B4        ; |DSPHeaders/algoritmos.h:33| (P) <0,20>  ^ 
           NOP             1

           SPMASK          S2
||         MVKL    .S2     0x2a3000,B6
||         STB     .D2T1   A4,*+SP(12)       ; |DSPHeaders/algoritmos.h:30| (P) <0,22>  ^ 

           SPMASK          L1,S1,D1,S2
||         MV      .L1     A11,A7
||         ADD     .S1     4,A11,A5
||         ADD     .D1     2,A11,A6
||         MVKH    .S2     0x2a3000,B6
||         STB     .D2T1   A4,*+SP(13)       ; |DSPHeaders/algoritmos.h:31| (P) <0,23>  ^ 

           LDHU    .D2T2   *+SP(12),B4       ; |DSPHeaders/algoritmos.h:35| <0,24>  ^ 

           STH     .D1T2   B4,*A7++(6)       ; |DSPHeaders/algoritmos.h:33| <0,25> 
||         STB     .D2T1   A4,*+SP(11)       ; |DSPHeaders/algoritmos.h:28| <0,25>  ^ 

           LDHU    .D2T1   *+SP(10),A3       ; |DSPHeaders/algoritmos.h:34| <0,26>  ^ 
           NOP             3
           STH     .D1T2   B4,*A5++(6)       ; |DSPHeaders/algoritmos.h:35| <0,30> 
	.dwpsn	file "DSPHeaders/algoritmos.h",line 36,column 0,is_stmt,isa 0

           SPKERNEL 1,0
||         STH     .D1T1   A3,*A6++(6)       ; |DSPHeaders/algoritmos.h:34| <0,31> 

$C$DW$L$_dummy_execute$25$E:
;** --------------------------------------------------------------------------*
$C$L26:    ; PIPED LOOP EPILOG
;          EXCLUSIVE CPU CYCLES: 21
           NOP             1
           MV      .L1     A11,A4            ; |dummy_dsp.c:86| 
           NOP             1
$C$DW$57	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$57, DW_AT_low_pc(0x00)
	.dwattr $C$DW$57, DW_AT_name("_BCACHE_wbInv")
	.dwattr $C$DW$57, DW_AT_TI_call
           CALL    .S2     _BCACHE_wbInv     ; |dummy_dsp.c:86| 
           ADDKPC  .S2     $C$RL14,B3,1      ; |dummy_dsp.c:86| 
           MV      .L2     B6,B4             ; |dummy_dsp.c:86| 
           NOP             1
           MVK     .L1     0x1,A6            ; |dummy_dsp.c:86| 
$C$RL14:   ; CALL OCCURS {_BCACHE_wbInv} {0}  ; |dummy_dsp.c:86| 
;** --------------------------------------------------------------------------*
$C$DW$L$_dummy_execute$27$B:
;          EXCLUSIVE CPU CYCLES: 7
           MV      .L1     A12,A4            ; |dummy_dsp.c:88| 
$C$DW$58	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$58, DW_AT_low_pc(0x08)
	.dwattr $C$DW$58, DW_AT_name("_NODE_putMsg")
	.dwattr $C$DW$58, DW_AT_TI_call

           ZERO    .L2     B4                ; |dummy_dsp.c:88| 
||         ADDAW   .D1X    SP,4,A6           ; |dummy_dsp.c:88| 
||         CALLP   .S2     _NODE_putMsg,B3
||         ZERO    .D2     B6                ; |dummy_dsp.c:88| 

$C$RL15:   ; CALL OCCURS {_NODE_putMsg} {0}  ; |dummy_dsp.c:88| 
$C$DW$L$_dummy_execute$27$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_dummy_execute$28$B:
;          EXCLUSIVE CPU CYCLES: 6

           BNOP    .S1     $C$L31,5          ; |dummy_dsp.c:89| 
||         MV      .L1X    B10,A0

           ; BRANCH OCCURS {$C$L31}          ; |dummy_dsp.c:89| 
$C$DW$L$_dummy_execute$28$E:
;** --------------------------------------------------------------------------*
$C$L27:    
$C$DW$L$_dummy_execute$29$B:
;          EXCLUSIVE CPU CYCLES: 34
           LDW     .D2T2   *+SP(20),B4       ; |dummy_dsp.c:72| 
$C$DW$59	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$59, DW_AT_low_pc(0x00)
	.dwattr $C$DW$59, DW_AT_name("_BCACHE_inv")
	.dwattr $C$DW$59, DW_AT_TI_call

           CALLP   .S2     _BCACHE_inv,B3
||         LDW     .D2T2   *+SP(24),B11      ; |dummy_dsp.c:71| 
||         MV      .L1     A10,A4            ; |dummy_dsp.c:72| 
||         MVK     .S1     0x1,A6            ; |dummy_dsp.c:72| 

$C$RL16:   ; CALL OCCURS {_BCACHE_inv} {0}   ; |dummy_dsp.c:72| 
$C$DW$60	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$60, DW_AT_low_pc(0x00)
	.dwattr $C$DW$60, DW_AT_name("_sem_modificacao$0")
	.dwattr $C$DW$60, DW_AT_TI_call

           CALLP   .S2     _sem_modificacao$0,B3
||         MV      .L1     A10,A4            ; |dummy_dsp.c:73| 
||         ADDAW   .D2     SP,8,B4           ; |dummy_dsp.c:73| 

$C$RL17:   ; CALL OCCURS {_sem_modificacao$0} {0}  ; |dummy_dsp.c:73| 
           ADDAW   .D1X    SP,8,A4           ; |dummy_dsp.c:74| 
$C$DW$61	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$61, DW_AT_low_pc(0x00)
	.dwattr $C$DW$61, DW_AT_name("_NearestNeighbour$0")
	.dwattr $C$DW$61, DW_AT_TI_call

           CALLP   .S2     _NearestNeighbour$0,B3
||         MV      .L1X    B11,A6            ; |dummy_dsp.c:74| 
||         MV      .L2X    A11,B4            ; |dummy_dsp.c:74| 

$C$RL18:   ; CALL OCCURS {_NearestNeighbour$0} {0}  ; |dummy_dsp.c:74| 
           MVKL    .S2     0x2a3000,B4
           MVKH    .S2     0x2a3000,B4
$C$DW$62	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$62, DW_AT_low_pc(0x00)
	.dwattr $C$DW$62, DW_AT_name("_BCACHE_wbInv")
	.dwattr $C$DW$62, DW_AT_TI_call

           CALLP   .S2     _BCACHE_wbInv,B3
||         MV      .L1     A11,A4            ; |dummy_dsp.c:75| 
||         MVK     .S1     0x1,A6            ; |dummy_dsp.c:75| 

$C$RL19:   ; CALL OCCURS {_BCACHE_wbInv} {0}  ; |dummy_dsp.c:75| 
$C$DW$63	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$63, DW_AT_low_pc(0x00)
	.dwattr $C$DW$63, DW_AT_name("_NODE_putMsg")
	.dwattr $C$DW$63, DW_AT_TI_call

           CALLP   .S2     _NODE_putMsg,B3
||         ZERO    .L2     B6                ; |dummy_dsp.c:76| 
||         MV      .L1     A12,A4            ; |dummy_dsp.c:76| 
||         ZERO    .D2     B4                ; |dummy_dsp.c:76| 
||         ADDAW   .D1X    SP,4,A6           ; |dummy_dsp.c:76| 

$C$RL20:   ; CALL OCCURS {_NODE_putMsg} {0}  ; |dummy_dsp.c:76| 
$C$DW$L$_dummy_execute$29$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_dummy_execute$30$B:
;          EXCLUSIVE CPU CYCLES: 6

           BNOP    .S1     $C$L31,5          ; |dummy_dsp.c:78| 
||         MV      .L1X    B10,A0

           ; BRANCH OCCURS {$C$L31}          ; |dummy_dsp.c:78| 
$C$DW$L$_dummy_execute$30$E:
;** --------------------------------------------------------------------------*
$C$L28:    
$C$DW$L$_dummy_execute$31$B:
;          EXCLUSIVE CPU CYCLES: 26
$C$DW$64	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$64, DW_AT_low_pc(0x00)
	.dwattr $C$DW$64, DW_AT_name("_BCACHE_inv")
	.dwattr $C$DW$64, DW_AT_TI_call

           CALLP   .S2     _BCACHE_inv,B3
||         LDW     .D2T2   *+SP(20),B4       ; |dummy_dsp.c:61| 
||         MV      .L1     A10,A4            ; |dummy_dsp.c:61| 
||         MVK     .S1     0x1,A6            ; |dummy_dsp.c:61| 

$C$RL21:   ; CALL OCCURS {_BCACHE_inv} {0}   ; |dummy_dsp.c:61| 
$C$DW$65	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$65, DW_AT_low_pc(0x00)
	.dwattr $C$DW$65, DW_AT_name("_sem_modificacao$0")
	.dwattr $C$DW$65, DW_AT_TI_call

           CALLP   .S2     _sem_modificacao$0,B3
||         MV      .L1     A10,A4            ; |dummy_dsp.c:62| 
||         MV      .L2X    A11,B4            ; |dummy_dsp.c:62| 

$C$RL22:   ; CALL OCCURS {_sem_modificacao$0} {0}  ; |dummy_dsp.c:62| 
           MVKL    .S2     0x2a3000,B4
           MVKH    .S2     0x2a3000,B4
$C$DW$66	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$66, DW_AT_low_pc(0x00)
	.dwattr $C$DW$66, DW_AT_name("_BCACHE_wbInv")
	.dwattr $C$DW$66, DW_AT_TI_call

           CALLP   .S2     _BCACHE_wbInv,B3
||         MVK     .L1     0x1,A6            ; |dummy_dsp.c:63| 
||         MV      .S1     A11,A4            ; |dummy_dsp.c:63| 

$C$RL23:   ; CALL OCCURS {_BCACHE_wbInv} {0}  ; |dummy_dsp.c:63| 
$C$DW$67	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$67, DW_AT_low_pc(0x00)
	.dwattr $C$DW$67, DW_AT_name("_NODE_putMsg")
	.dwattr $C$DW$67, DW_AT_TI_call

           CALLP   .S2     _NODE_putMsg,B3
||         ZERO    .L2     B6                ; |dummy_dsp.c:65| 
||         MV      .L1     A12,A4            ; |dummy_dsp.c:65| 
||         ZERO    .D2     B4                ; |dummy_dsp.c:65| 
||         ADDAW   .D1X    SP,4,A6           ; |dummy_dsp.c:65| 

$C$RL24:   ; CALL OCCURS {_NODE_putMsg} {0}  ; |dummy_dsp.c:65| 
$C$DW$L$_dummy_execute$31$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_dummy_execute$32$B:
;          EXCLUSIVE CPU CYCLES: 6

           B       .S1     $C$L32            ; |dummy_dsp.c:66| 
||         MV      .L1X    B10,A0

   [!A0]   BNOP    .S1     $C$L10,4          ; |dummy_dsp.c:46| 
           ; BRANCH OCCURS {$C$L32}          ; |dummy_dsp.c:66| 
$C$DW$L$_dummy_execute$32$E:
;** --------------------------------------------------------------------------*
$C$L29:    
$C$DW$L$_dummy_execute$33$B:
;          EXCLUSIVE CPU CYCLES: 2
           LDW     .D2T1   *+SP(20),A10      ; |dummy_dsp.c:52| 
           LDW     .D2T1   *+SP(24),A11      ; |dummy_dsp.c:53| 
$C$DW$L$_dummy_execute$33$E:
;** --------------------------------------------------------------------------*
$C$L30:    
$C$DW$L$_dummy_execute$34$B:
;          EXCLUSIVE CPU CYCLES: 1
           MV      .L1X    B10,A0
$C$DW$L$_dummy_execute$34$E:
;** --------------------------------------------------------------------------*
$C$L31:    
$C$DW$L$_dummy_execute$35$B:
;          EXCLUSIVE CPU CYCLES: 5
   [!A0]   BNOP    .S1     $C$L10,4          ; |dummy_dsp.c:46| 
$C$DW$L$_dummy_execute$35$E:
;** --------------------------------------------------------------------------*
$C$L32:    
$C$DW$L$_dummy_execute$36$B:
;          EXCLUSIVE CPU CYCLES: 1
	.dwpsn	file "dummy_dsp.c",line 130,column 0,is_stmt,isa 0
$C$DW$68	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$68, DW_AT_low_pc(0x00)
	.dwattr $C$DW$68, DW_AT_name("_NODE_getMsg")
	.dwattr $C$DW$68, DW_AT_TI_call

   [!A0]   CALL    .S1     _NODE_getMsg      ; |dummy_dsp.c:47| 
|| [ A0]   MV      .L2     B13,B3            ; |dummy_dsp.c:133| 

           ; BRANCHCC OCCURS {$C$L10}        ; |dummy_dsp.c:46| 
$C$DW$L$_dummy_execute$36$E:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 10
           LDW     .D1T2   *-FP(4),B13       ; |dummy_dsp.c:133| 
           LDW     .D1T1   *-FP(8),A14       ; |dummy_dsp.c:133| 
           LDDW    .D1T2   *-FP(16),B11:B10  ; |dummy_dsp.c:133| 
           LDDW    .D1T1   *-FP(24),A13:A12  ; |dummy_dsp.c:133| 
$C$DW$69	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$69, DW_AT_low_pc(0x00)
	.dwattr $C$DW$69, DW_AT_TI_return

           RET     .S2     B3                ; |dummy_dsp.c:133| 
||         LDDW    .D1T1   *-FP(32),A11:A10  ; |dummy_dsp.c:133| 

           MV      .L2X    FP,SP             ; |dummy_dsp.c:133| 
||         LDW     .D1T1   *FP,FP            ; |dummy_dsp.c:133| 

           ZERO    .L1     A4
           SET     .S1     A4,0xf,0xf,A4
	.dwpsn	file "dummy_dsp.c",line 133,column 1,is_stmt,isa 0
           NOP             2
           ; BRANCH OCCURS {B3}              ; |dummy_dsp.c:133| 

$C$DW$70	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$70, DW_AT_name("/home/fernandofernandes/NetBeansProjects/C.03/DSP/CSequencial_DSP.03/dummy_dsp.asm:$C$L10:1:1418740638")
	.dwattr $C$DW$70, DW_AT_TI_begin_file("dummy_dsp.c")
	.dwattr $C$DW$70, DW_AT_TI_begin_line(0x2e)
	.dwattr $C$DW$70, DW_AT_TI_end_line(0x82)
$C$DW$71	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$71, DW_AT_low_pc($C$DW$L$_dummy_execute$2$B)
	.dwattr $C$DW$71, DW_AT_high_pc($C$DW$L$_dummy_execute$2$E)
$C$DW$72	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$72, DW_AT_low_pc($C$DW$L$_dummy_execute$33$B)
	.dwattr $C$DW$72, DW_AT_high_pc($C$DW$L$_dummy_execute$33$E)
$C$DW$73	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$73, DW_AT_low_pc($C$DW$L$_dummy_execute$29$B)
	.dwattr $C$DW$73, DW_AT_high_pc($C$DW$L$_dummy_execute$29$E)
$C$DW$74	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$74, DW_AT_low_pc($C$DW$L$_dummy_execute$23$B)
	.dwattr $C$DW$74, DW_AT_high_pc($C$DW$L$_dummy_execute$23$E)
$C$DW$75	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$75, DW_AT_low_pc($C$DW$L$_dummy_execute$27$B)
	.dwattr $C$DW$75, DW_AT_high_pc($C$DW$L$_dummy_execute$27$E)
$C$DW$76	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$76, DW_AT_low_pc($C$DW$L$_dummy_execute$17$B)
	.dwattr $C$DW$76, DW_AT_high_pc($C$DW$L$_dummy_execute$17$E)
$C$DW$77	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$77, DW_AT_low_pc($C$DW$L$_dummy_execute$21$B)
	.dwattr $C$DW$77, DW_AT_high_pc($C$DW$L$_dummy_execute$21$E)
$C$DW$78	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$78, DW_AT_low_pc($C$DW$L$_dummy_execute$11$B)
	.dwattr $C$DW$78, DW_AT_high_pc($C$DW$L$_dummy_execute$11$E)
$C$DW$79	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$79, DW_AT_low_pc($C$DW$L$_dummy_execute$15$B)
	.dwattr $C$DW$79, DW_AT_high_pc($C$DW$L$_dummy_execute$15$E)
$C$DW$80	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$80, DW_AT_low_pc($C$DW$L$_dummy_execute$5$B)
	.dwattr $C$DW$80, DW_AT_high_pc($C$DW$L$_dummy_execute$5$E)
$C$DW$81	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$81, DW_AT_low_pc($C$DW$L$_dummy_execute$9$B)
	.dwattr $C$DW$81, DW_AT_high_pc($C$DW$L$_dummy_execute$9$E)
$C$DW$82	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$82, DW_AT_low_pc($C$DW$L$_dummy_execute$10$B)
	.dwattr $C$DW$82, DW_AT_high_pc($C$DW$L$_dummy_execute$10$E)
$C$DW$83	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$83, DW_AT_low_pc($C$DW$L$_dummy_execute$16$B)
	.dwattr $C$DW$83, DW_AT_high_pc($C$DW$L$_dummy_execute$16$E)
$C$DW$84	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$84, DW_AT_low_pc($C$DW$L$_dummy_execute$22$B)
	.dwattr $C$DW$84, DW_AT_high_pc($C$DW$L$_dummy_execute$22$E)
$C$DW$85	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$85, DW_AT_low_pc($C$DW$L$_dummy_execute$28$B)
	.dwattr $C$DW$85, DW_AT_high_pc($C$DW$L$_dummy_execute$28$E)
$C$DW$86	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$86, DW_AT_low_pc($C$DW$L$_dummy_execute$30$B)
	.dwattr $C$DW$86, DW_AT_high_pc($C$DW$L$_dummy_execute$30$E)
$C$DW$87	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$87, DW_AT_low_pc($C$DW$L$_dummy_execute$34$B)
	.dwattr $C$DW$87, DW_AT_high_pc($C$DW$L$_dummy_execute$34$E)
$C$DW$88	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$88, DW_AT_low_pc($C$DW$L$_dummy_execute$3$B)
	.dwattr $C$DW$88, DW_AT_high_pc($C$DW$L$_dummy_execute$3$E)
$C$DW$89	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$89, DW_AT_low_pc($C$DW$L$_dummy_execute$4$B)
	.dwattr $C$DW$89, DW_AT_high_pc($C$DW$L$_dummy_execute$4$E)
$C$DW$90	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$90, DW_AT_low_pc($C$DW$L$_dummy_execute$31$B)
	.dwattr $C$DW$90, DW_AT_high_pc($C$DW$L$_dummy_execute$31$E)
$C$DW$91	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$91, DW_AT_low_pc($C$DW$L$_dummy_execute$32$B)
	.dwattr $C$DW$91, DW_AT_high_pc($C$DW$L$_dummy_execute$32$E)
$C$DW$92	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$92, DW_AT_low_pc($C$DW$L$_dummy_execute$35$B)
	.dwattr $C$DW$92, DW_AT_high_pc($C$DW$L$_dummy_execute$35$E)
$C$DW$93	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$93, DW_AT_low_pc($C$DW$L$_dummy_execute$36$B)
	.dwattr $C$DW$93, DW_AT_high_pc($C$DW$L$_dummy_execute$36$E)

$C$DW$94	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$94, DW_AT_name("/home/fernandofernandes/NetBeansProjects/C.03/DSP/CSequencial_DSP.03/dummy_dsp.asm:$C$L25:2:1418740638")
	.dwattr $C$DW$94, DW_AT_TI_begin_file("DSPHeaders/algoritmos.h")
	.dwattr $C$DW$94, DW_AT_TI_begin_line(0x15)
	.dwattr $C$DW$94, DW_AT_TI_end_line(0x24)
$C$DW$95	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$95, DW_AT_low_pc($C$DW$L$_dummy_execute$25$B)
	.dwattr $C$DW$95, DW_AT_high_pc($C$DW$L$_dummy_execute$25$E)
	.dwendtag $C$DW$94


$C$DW$96	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$96, DW_AT_name("/home/fernandofernandes/NetBeansProjects/C.03/DSP/CSequencial_DSP.03/dummy_dsp.asm:$C$L21:2:1418740638")
	.dwattr $C$DW$96, DW_AT_TI_begin_file("DSPHeaders/algoritmos.h")
	.dwattr $C$DW$96, DW_AT_TI_begin_line(0x2d)
	.dwattr $C$DW$96, DW_AT_TI_end_line(0x3c)
$C$DW$97	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$97, DW_AT_low_pc($C$DW$L$_dummy_execute$19$B)
	.dwattr $C$DW$97, DW_AT_high_pc($C$DW$L$_dummy_execute$19$E)
	.dwendtag $C$DW$96


$C$DW$98	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$98, DW_AT_name("/home/fernandofernandes/NetBeansProjects/C.03/DSP/CSequencial_DSP.03/dummy_dsp.asm:$C$L17:2:1418740638")
	.dwattr $C$DW$98, DW_AT_TI_begin_file("DSPHeaders/algoritmos.h")
	.dwattr $C$DW$98, DW_AT_TI_begin_line(0x2d)
	.dwattr $C$DW$98, DW_AT_TI_end_line(0x3c)
$C$DW$99	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$99, DW_AT_low_pc($C$DW$L$_dummy_execute$13$B)
	.dwattr $C$DW$99, DW_AT_high_pc($C$DW$L$_dummy_execute$13$E)
	.dwendtag $C$DW$98


$C$DW$100	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$100, DW_AT_name("/home/fernandofernandes/NetBeansProjects/C.03/DSP/CSequencial_DSP.03/dummy_dsp.asm:$C$L13:2:1418740638")
	.dwattr $C$DW$100, DW_AT_TI_begin_file("DSPHeaders/algoritmos.h")
	.dwattr $C$DW$100, DW_AT_TI_begin_line(0x2d)
	.dwattr $C$DW$100, DW_AT_TI_end_line(0x3c)
$C$DW$101	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$101, DW_AT_low_pc($C$DW$L$_dummy_execute$7$B)
	.dwattr $C$DW$101, DW_AT_high_pc($C$DW$L$_dummy_execute$7$E)
	.dwendtag $C$DW$100

	.dwendtag $C$DW$70

	.dwattr $C$DW$43, DW_AT_TI_end_file("dummy_dsp.c")
	.dwattr $C$DW$43, DW_AT_TI_end_line(0x85)
	.dwattr $C$DW$43, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$43

	.sect	".text"
	.clink
	.global	_dummy_delete

$C$DW$102	.dwtag  DW_TAG_subprogram, DW_AT_name("dummy_delete")
	.dwattr $C$DW$102, DW_AT_low_pc(_dummy_delete)
	.dwattr $C$DW$102, DW_AT_high_pc(0x00)
	.dwattr $C$DW$102, DW_AT_TI_symbol_name("_dummy_delete")
	.dwattr $C$DW$102, DW_AT_external
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$102, DW_AT_TI_begin_file("dummy_dsp.c")
	.dwattr $C$DW$102, DW_AT_TI_begin_line(0x20)
	.dwattr $C$DW$102, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$102, DW_AT_TI_max_frame_size(0x00)
	.dwattr $C$DW$102, DW_AT_frame_base[DW_OP_breg31 0]
	.dwattr $C$DW$102, DW_AT_TI_skeletal
	.dwpsn	file "dummy_dsp.c",line 32,column 20,is_stmt,address _dummy_delete,isa 0

;******************************************************************************
;* FUNCTION NAME: dummy_delete                                                *
;*                                                                            *
;*   Regs Modified     : A4                                                   *
;*   Regs Used         : A4,B3                                                *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_dummy_delete:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 6
$C$DW$103	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$103, DW_AT_low_pc(0x00)
	.dwattr $C$DW$103, DW_AT_TI_return
           RETNOP  .S2     B3,3              ; |dummy_dsp.c:34| 
           ZERO    .L1     A4
	.dwpsn	file "dummy_dsp.c",line 34,column 1,is_stmt,isa 0
           SET     .S1     A4,0xf,0xf,A4
           ; BRANCH OCCURS {B3}              ; |dummy_dsp.c:34| 
	.dwattr $C$DW$102, DW_AT_TI_end_file("dummy_dsp.c")
	.dwattr $C$DW$102, DW_AT_TI_end_line(0x22)
	.dwattr $C$DW$102, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$102

	.sect	".text"
	.clink
	.global	_dummy_create

$C$DW$104	.dwtag  DW_TAG_subprogram, DW_AT_name("dummy_create")
	.dwattr $C$DW$104, DW_AT_low_pc(_dummy_create)
	.dwattr $C$DW$104, DW_AT_high_pc(0x00)
	.dwattr $C$DW$104, DW_AT_TI_symbol_name("_dummy_create")
	.dwattr $C$DW$104, DW_AT_external
	.dwattr $C$DW$104, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$104, DW_AT_TI_begin_file("dummy_dsp.c")
	.dwattr $C$DW$104, DW_AT_TI_begin_line(0x1b)
	.dwattr $C$DW$104, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$104, DW_AT_TI_max_frame_size(0x00)
	.dwattr $C$DW$104, DW_AT_frame_base[DW_OP_breg31 0]
	.dwattr $C$DW$104, DW_AT_TI_skeletal
	.dwpsn	file "dummy_dsp.c",line 27,column 20,is_stmt,address _dummy_create,isa 0

;******************************************************************************
;* FUNCTION NAME: dummy_create                                                *
;*                                                                            *
;*   Regs Modified     : A4                                                   *
;*   Regs Used         : A4,B3                                                *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_dummy_create:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 6
$C$DW$105	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$105, DW_AT_low_pc(0x00)
	.dwattr $C$DW$105, DW_AT_TI_return
           RETNOP  .S2     B3,3              ; |dummy_dsp.c:29| 
           ZERO    .L1     A4
	.dwpsn	file "dummy_dsp.c",line 29,column 1,is_stmt,isa 0
           SET     .S1     A4,0xf,0xf,A4
           ; BRANCH OCCURS {B3}              ; |dummy_dsp.c:29| 
	.dwattr $C$DW$104, DW_AT_TI_end_file("dummy_dsp.c")
	.dwattr $C$DW$104, DW_AT_TI_end_line(0x1d)
	.dwattr $C$DW$104, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$104

;*****************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                             *
;*****************************************************************************
	.global	_NODE_getMsg
	.global	_NODE_putMsg
	.global	_BCACHE_inv
	.global	_BCACHE_wbInv
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

$C$DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$20, DW_AT_byte_size(0x0c)
$C$DW$106	.dwtag  DW_TAG_member
	.dwattr $C$DW$106, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$106, DW_AT_name("cmd")
	.dwattr $C$DW$106, DW_AT_TI_symbol_name("_cmd")
	.dwattr $C$DW$106, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$106, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$107	.dwtag  DW_TAG_member
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$107, DW_AT_name("arg_1")
	.dwattr $C$DW$107, DW_AT_TI_symbol_name("_arg_1")
	.dwattr $C$DW$107, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$107, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$108	.dwtag  DW_TAG_member
	.dwattr $C$DW$108, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$108, DW_AT_name("arg_2")
	.dwattr $C$DW$108, DW_AT_TI_symbol_name("_arg_2")
	.dwattr $C$DW$108, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$108, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$20

$C$DW$T$22	.dwtag  DW_TAG_typedef, DW_AT_name("dsp_msg_t")
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$22, DW_AT_language(DW_LANG_C)
$C$DW$T$23	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$23, DW_AT_address_class(0x20)
$C$DW$T$2	.dwtag  DW_TAG_unspecified_type
	.dwattr $C$DW$T$2, DW_AT_name("void")
$C$DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$3, DW_AT_type(*$C$DW$T$2)
	.dwattr $C$DW$T$3, DW_AT_address_class(0x20)
$C$DW$T$25	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$2)
$C$DW$T$26	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$26, DW_AT_address_class(0x20)
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
$C$DW$T$30	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$T$6)
$C$DW$T$31	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$31, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$31, DW_AT_address_class(0x20)
$C$DW$T$32	.dwtag  DW_TAG_restrict_type
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$T$31)
$C$DW$T$33	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$33, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$33, DW_AT_address_class(0x20)
$C$DW$T$34	.dwtag  DW_TAG_restrict_type
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$T$33)
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
$C$DW$T$45	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$45, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$45, DW_AT_address_class(0x20)
$C$DW$T$10	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$10, DW_AT_name("int")
	.dwattr $C$DW$T$10, DW_AT_byte_size(0x04)
$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x04)
$C$DW$T$54	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$54, DW_AT_type(*$C$DW$T$11)
$C$DW$T$55	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$55, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$T$55, DW_AT_address_class(0x20)
$C$DW$T$27	.dwtag  DW_TAG_typedef, DW_AT_name("size_t")
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$27, DW_AT_language(DW_LANG_C)
$C$DW$T$19	.dwtag  DW_TAG_typedef, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$19, DW_AT_language(DW_LANG_C)
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

