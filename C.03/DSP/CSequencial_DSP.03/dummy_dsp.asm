;******************************************************************************
;* TMS320C6x C/C++ Codegen                                        Unix v7.6.0 *
;* Date/Time created: Fri Dec 19 20:01:14 2014                                *
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

$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("NODE_getMsg")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_NODE_getMsg")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$3)
$C$DW$3	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$23)
$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$11)
	.dwendtag $C$DW$1


$C$DW$5	.dwtag  DW_TAG_subprogram, DW_AT_name("NODE_putMsg")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("_NODE_putMsg")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$5, DW_AT_declaration
	.dwattr $C$DW$5, DW_AT_external
$C$DW$6	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$3)
$C$DW$7	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$3)
$C$DW$8	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$23)
$C$DW$9	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$11)
	.dwendtag $C$DW$5


$C$DW$10	.dwtag  DW_TAG_subprogram, DW_AT_name("BCACHE_inv")
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("_BCACHE_inv")
	.dwattr $C$DW$10, DW_AT_declaration
	.dwattr $C$DW$10, DW_AT_external
$C$DW$11	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$3)
$C$DW$12	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$25)
$C$DW$13	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$9)
	.dwendtag $C$DW$10


$C$DW$14	.dwtag  DW_TAG_subprogram, DW_AT_name("BCACHE_wbInv")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_BCACHE_wbInv")
	.dwattr $C$DW$14, DW_AT_declaration
	.dwattr $C$DW$14, DW_AT_external
$C$DW$15	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$3)
$C$DW$16	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$25)
$C$DW$17	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$9)
	.dwendtag $C$DW$14


$C$DW$18	.dwtag  DW_TAG_subprogram, DW_AT_name("imagem_to_cinza")
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("_imagem_to_cinza")
	.dwattr $C$DW$18, DW_AT_declaration
	.dwattr $C$DW$18, DW_AT_external
$C$DW$19	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$30)
$C$DW$20	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$32)
	.dwendtag $C$DW$18


$C$DW$21	.dwtag  DW_TAG_subprogram, DW_AT_name("limiar_imagem")
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("_limiar_imagem")
	.dwattr $C$DW$21, DW_AT_declaration
	.dwattr $C$DW$21, DW_AT_external
$C$DW$22	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$30)
$C$DW$23	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$32)
$C$DW$24	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$28)
	.dwendtag $C$DW$21


$C$DW$25	.dwtag  DW_TAG_subprogram, DW_AT_name("sem_modificacao")
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("_sem_modificacao")
	.dwattr $C$DW$25, DW_AT_declaration
	.dwattr $C$DW$25, DW_AT_external
$C$DW$26	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$30)
$C$DW$27	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$32)
	.dwendtag $C$DW$25


$C$DW$28	.dwtag  DW_TAG_subprogram, DW_AT_name("NearestNeighbour")
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("_NearestNeighbour")
	.dwattr $C$DW$28, DW_AT_declaration
	.dwattr $C$DW$28, DW_AT_external
$C$DW$29	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$32)
$C$DW$30	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$32)
$C$DW$31	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$11)
	.dwendtag $C$DW$28

;	/opt/c6000_7.6.0/bin/opt6x /tmp/15257mhu6OD /tmp/15257fXibYq 
	.sect	".text"
	.clink
	.global	_dummy_execute

$C$DW$32	.dwtag  DW_TAG_subprogram, DW_AT_name("dummy_execute")
	.dwattr $C$DW$32, DW_AT_low_pc(_dummy_execute)
	.dwattr $C$DW$32, DW_AT_high_pc(0x00)
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("_dummy_execute")
	.dwattr $C$DW$32, DW_AT_external
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$32, DW_AT_TI_begin_file("dummy_dsp.c")
	.dwattr $C$DW$32, DW_AT_TI_begin_line(0x26)
	.dwattr $C$DW$32, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$32, DW_AT_TI_max_frame_size(0x30)
	.dwattr $C$DW$32, DW_AT_frame_base[DW_OP_breg31 48]
	.dwattr $C$DW$32, DW_AT_TI_skeletal
	.dwpsn	file "dummy_dsp.c",line 38,column 26,is_stmt,address _dummy_execute,isa 0
$C$DW$33	.dwtag  DW_TAG_formal_parameter, DW_AT_name("env")
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("_env")
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$33, DW_AT_location[DW_OP_reg4]

;******************************************************************************
;* FUNCTION NAME: dummy_execute                                               *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,B0,*
;*                           B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,SP,A16,A17,   *
;*                           A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29, *
;*                           A30,A31,B16,B17,B18,B19,B20,B21,B22,B23,B24,B25, *
;*                           B26,B27,B28,B29,B30,B31                          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,B0,*
;*                           B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,DP,SP,A16,A17,*
;*                           A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29, *
;*                           A30,A31,B16,B17,B18,B19,B20,B21,B22,B23,B24,B25, *
;*                           B26,B27,B28,B29,B30,B31                          *
;*   Local Frame Size  : 0 Args + 12 Auto + 32 Save = 44 byte                 *
;******************************************************************************
_dummy_execute:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 5
           STW     .D2T1   A14,*SP--(8)      ; |dummy_dsp.c:38| 
           STDW    .D2T2   B11:B10,*SP--     ; |dummy_dsp.c:38| 
           STDW    .D2T1   A13:A12,*SP--     ; |dummy_dsp.c:38| 
           STDW    .D2T1   A11:A10,*SP--     ; |dummy_dsp.c:38| 
	.dwpsn	file "dummy_dsp.c",line 49,column 0,is_stmt,isa 0
$C$DW$34	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$34, DW_AT_low_pc(0x00)
	.dwattr $C$DW$34, DW_AT_name("_NODE_getMsg")
	.dwattr $C$DW$34, DW_AT_TI_call

           CALL    .S2     _NODE_getMsg      ; |dummy_dsp.c:50| 
||         SUB     .D2     SP,16,SP          ; |dummy_dsp.c:38| 
||         MVK     .L1     0xffffffff,A13
||         MV      .S1     A4,A12            ; |dummy_dsp.c:38| 
||         MV      .L2     B3,B11            ; |dummy_dsp.c:38| 
||         ZERO    .D1     A14               ; |dummy_dsp.c:42| 

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*      Disqualified loop: Loop contains non-pipelinable instructions
;*      Disqualified loop: Loop contains control code
;*----------------------------------------------------------------------------*
$C$L1:    
$C$DW$L$_dummy_execute$2$B:
;          EXCLUSIVE CPU CYCLES: 5
           ADDKPC  .S2     $C$RL0,B3,3       ; |dummy_dsp.c:50| 

           MV      .L1     A12,A4            ; |dummy_dsp.c:50| 
||         ADD     .L2     4,SP,B4           ; |dummy_dsp.c:50| 
||         MV      .S1     A13,A6            ; |dummy_dsp.c:50| 

$C$RL0:    ; CALL OCCURS {_NODE_getMsg} {0}  ; |dummy_dsp.c:50| 
$C$DW$L$_dummy_execute$2$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_dummy_execute$3$B:
;          EXCLUSIVE CPU CYCLES: 13
           LDW     .D2T2   *+SP(4),B4        ; |dummy_dsp.c:52| 
           MVKL    .S2     $C$SW1,B5
           ZERO    .L1     A3
           MVKH    .S2     $C$SW1,B5
           MVKH    .S1     0x80000000,A3
           CMPEQ   .L1X    B4,A3,A0          ; |dummy_dsp.c:52| 

   [ A0]   MVK     .S2     0x1,B0            ; |dummy_dsp.c:52| 
|| [!A0]   CMPGTU  .L2     B4,6,B0           ; |dummy_dsp.c:52| 
|| [ A0]   MVK     .L1     0x1,A3            ; |dummy_dsp.c:131| 

   [ B0]   BNOP    .S1     $C$L10,3          ; |dummy_dsp.c:52| 
|| [!B0]   LDW     .D2T2   *+B5[B4],B4       ; |dummy_dsp.c:52| 
|| [ A0]   MV      .L1     A3,A14            ; |dummy_dsp.c:131| 

   [ B0]   MV      .L1     A14,A0
   [!B0]   B       .S2     B4                ; |dummy_dsp.c:52| 
           ; BRANCHCC OCCURS {$C$L10} {-8}   ; |dummy_dsp.c:52| 
$C$DW$L$_dummy_execute$3$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_dummy_execute$4$B:
;          EXCLUSIVE CPU CYCLES: 5
           NOP             5
           ; BRANCH OCCURS {B4}              ; |dummy_dsp.c:52| 
	.sect	".switch:_dummy_execute"
	.clink
$C$SW1:	.word	$C$L8	; 0
	.word	$C$L7	; 1
	.word	$C$L6	; 2
	.word	$C$L5	; 3
	.word	$C$L4	; 4
	.word	$C$L3	; 5
	.word	$C$L2	; 6
	.sect	".text"
$C$DW$L$_dummy_execute$4$E:
;** --------------------------------------------------------------------------*
$C$L2:    
$C$DW$L$_dummy_execute$5$B:
;          EXCLUSIVE CPU CYCLES: 26
$C$DW$35	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$35, DW_AT_low_pc(0x00)
	.dwattr $C$DW$35, DW_AT_name("_BCACHE_inv")
	.dwattr $C$DW$35, DW_AT_TI_call

           CALLP   .S2     _BCACHE_inv,B3
||         LDW     .D2T2   *+SP(8),B4        ; |dummy_dsp.c:124| 
||         MV      .L1     A11,A4            ; |dummy_dsp.c:124| 
||         MVK     .S1     0x1,A6            ; |dummy_dsp.c:124| 

$C$RL1:    ; CALL OCCURS {_BCACHE_inv} {0}   ; |dummy_dsp.c:124| 
$C$DW$36	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$36, DW_AT_low_pc(0x00)
	.dwattr $C$DW$36, DW_AT_name("_limiar_imagem")
	.dwattr $C$DW$36, DW_AT_TI_call

           CALLP   .S2     _limiar_imagem,B3
||         MV      .L1     A11,A4            ; |dummy_dsp.c:125| 
||         MV      .L2X    A10,B4            ; |dummy_dsp.c:125| 
||         ZERO    .S1     A6                ; |dummy_dsp.c:125| 

$C$RL2:    ; CALL OCCURS {_limiar_imagem} {0}  ; |dummy_dsp.c:125| 
           MVKL    .S2     0x2a3000,B4
           MVKH    .S2     0x2a3000,B4
$C$DW$37	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$37, DW_AT_low_pc(0x00)
	.dwattr $C$DW$37, DW_AT_name("_BCACHE_wbInv")
	.dwattr $C$DW$37, DW_AT_TI_call

           CALLP   .S2     _BCACHE_wbInv,B3
||         MV      .L1     A10,A4            ; |dummy_dsp.c:126| 
||         MVK     .S1     0x1,A6            ; |dummy_dsp.c:126| 

$C$RL3:    ; CALL OCCURS {_BCACHE_wbInv} {0}  ; |dummy_dsp.c:126| 
$C$DW$38	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$38, DW_AT_low_pc(0x00)
	.dwattr $C$DW$38, DW_AT_name("_NODE_putMsg")
	.dwattr $C$DW$38, DW_AT_TI_call

           CALLP   .S2     _NODE_putMsg,B3
||         ZERO    .L2     B6                ; |dummy_dsp.c:127| 
||         MV      .L1     A12,A4            ; |dummy_dsp.c:127| 
||         ZERO    .D2     B4                ; |dummy_dsp.c:127| 
||         ADD     .S1X    4,SP,A6           ; |dummy_dsp.c:127| 

$C$RL4:    ; CALL OCCURS {_NODE_putMsg} {0}  ; |dummy_dsp.c:127| 
$C$DW$L$_dummy_execute$5$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_dummy_execute$6$B:
;          EXCLUSIVE CPU CYCLES: 6

           BNOP    .S1     $C$L10,5          ; |dummy_dsp.c:128| 
||         MV      .L1     A14,A0

           ; BRANCH OCCURS {$C$L10}          ; |dummy_dsp.c:128| 
$C$DW$L$_dummy_execute$6$E:
;** --------------------------------------------------------------------------*
$C$L3:    
$C$DW$L$_dummy_execute$7$B:
;          EXCLUSIVE CPU CYCLES: 33
           LDW     .D2T2   *+SP(8),B4        ; |dummy_dsp.c:111| 
$C$DW$39	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$39, DW_AT_low_pc(0x00)
	.dwattr $C$DW$39, DW_AT_name("_BCACHE_inv")
	.dwattr $C$DW$39, DW_AT_TI_call

           CALLP   .S2     _BCACHE_inv,B3
||         LDW     .D2T2   *+SP(12),B10      ; |dummy_dsp.c:110| 
||         MV      .L1     A11,A4            ; |dummy_dsp.c:111| 
||         MVK     .S1     0x1,A6            ; |dummy_dsp.c:111| 

$C$RL5:    ; CALL OCCURS {_BCACHE_inv} {0}   ; |dummy_dsp.c:111| 
$C$DW$40	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$40, DW_AT_low_pc(0x00)
	.dwattr $C$DW$40, DW_AT_name("_limiar_imagem")
	.dwattr $C$DW$40, DW_AT_TI_call

           CALLP   .S2     _limiar_imagem,B3
||         MV      .L1     A11,A4            ; |dummy_dsp.c:113| 
||         MV      .L2X    A10,B4            ; |dummy_dsp.c:113| 
||         MVK     .S1     0x1,A6            ; |dummy_dsp.c:113| 

$C$RL6:    ; CALL OCCURS {_limiar_imagem} {0}  ; |dummy_dsp.c:113| 
$C$DW$41	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$41, DW_AT_low_pc(0x00)
	.dwattr $C$DW$41, DW_AT_name("_NearestNeighbour")
	.dwattr $C$DW$41, DW_AT_TI_call

           CALLP   .S2     _NearestNeighbour,B3
||         MV      .L1X    B10,A6            ; |dummy_dsp.c:114| 
||         MV      .S1     A10,A4            ; |dummy_dsp.c:114| 
||         MV      .L2X    A10,B4            ; |dummy_dsp.c:114| 

$C$RL7:    ; CALL OCCURS {_NearestNeighbour} {0}  ; |dummy_dsp.c:114| 
           MVKL    .S2     0x2a3000,B4
           MVKH    .S2     0x2a3000,B4
$C$DW$42	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$42, DW_AT_low_pc(0x00)
	.dwattr $C$DW$42, DW_AT_name("_BCACHE_wbInv")
	.dwattr $C$DW$42, DW_AT_TI_call

           CALLP   .S2     _BCACHE_wbInv,B3
||         MV      .L1     A10,A4            ; |dummy_dsp.c:117| 
||         MVK     .S1     0x1,A6            ; |dummy_dsp.c:117| 

$C$RL8:    ; CALL OCCURS {_BCACHE_wbInv} {0}  ; |dummy_dsp.c:117| 
$C$DW$43	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$43, DW_AT_low_pc(0x00)
	.dwattr $C$DW$43, DW_AT_name("_NODE_putMsg")
	.dwattr $C$DW$43, DW_AT_TI_call

           CALLP   .S2     _NODE_putMsg,B3
||         ZERO    .L2     B6                ; |dummy_dsp.c:118| 
||         MV      .L1     A12,A4            ; |dummy_dsp.c:118| 
||         ZERO    .D2     B4                ; |dummy_dsp.c:118| 
||         ADD     .S1X    4,SP,A6           ; |dummy_dsp.c:118| 

$C$RL9:    ; CALL OCCURS {_NODE_putMsg} {0}  ; |dummy_dsp.c:118| 
$C$DW$L$_dummy_execute$7$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_dummy_execute$8$B:
;          EXCLUSIVE CPU CYCLES: 6

           BNOP    .S1     $C$L10,5          ; |dummy_dsp.c:119| 
||         MV      .L1     A14,A0

           ; BRANCH OCCURS {$C$L10}          ; |dummy_dsp.c:119| 
$C$DW$L$_dummy_execute$8$E:
;** --------------------------------------------------------------------------*
$C$L4:    
$C$DW$L$_dummy_execute$9$B:
;          EXCLUSIVE CPU CYCLES: 26
$C$DW$44	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$44, DW_AT_low_pc(0x00)
	.dwattr $C$DW$44, DW_AT_name("_BCACHE_inv")
	.dwattr $C$DW$44, DW_AT_TI_call

           CALLP   .S2     _BCACHE_inv,B3
||         LDW     .D2T2   *+SP(8),B4        ; |dummy_dsp.c:100| 
||         MV      .L1     A11,A4            ; |dummy_dsp.c:100| 
||         MVK     .S1     0x1,A6            ; |dummy_dsp.c:100| 

$C$RL10:   ; CALL OCCURS {_BCACHE_inv} {0}   ; |dummy_dsp.c:100| 
$C$DW$45	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$45, DW_AT_low_pc(0x00)
	.dwattr $C$DW$45, DW_AT_name("_limiar_imagem")
	.dwattr $C$DW$45, DW_AT_TI_call

           CALLP   .S2     _limiar_imagem,B3
||         MV      .L1     A11,A4            ; |dummy_dsp.c:101| 
||         MV      .L2X    A10,B4            ; |dummy_dsp.c:101| 
||         MVK     .S1     0x1,A6            ; |dummy_dsp.c:101| 

$C$RL11:   ; CALL OCCURS {_limiar_imagem} {0}  ; |dummy_dsp.c:101| 
           MVKL    .S2     0x2a3000,B4
           MVKH    .S2     0x2a3000,B4
$C$DW$46	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$46, DW_AT_low_pc(0x00)
	.dwattr $C$DW$46, DW_AT_name("_BCACHE_wbInv")
	.dwattr $C$DW$46, DW_AT_TI_call

           CALLP   .S2     _BCACHE_wbInv,B3
||         MV      .L1     A10,A4            ; |dummy_dsp.c:102| 
||         MVK     .S1     0x1,A6            ; |dummy_dsp.c:102| 

$C$RL12:   ; CALL OCCURS {_BCACHE_wbInv} {0}  ; |dummy_dsp.c:102| 
$C$DW$47	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$47, DW_AT_low_pc(0x00)
	.dwattr $C$DW$47, DW_AT_name("_NODE_putMsg")
	.dwattr $C$DW$47, DW_AT_TI_call

           CALLP   .S2     _NODE_putMsg,B3
||         ZERO    .L2     B6                ; |dummy_dsp.c:104| 
||         MV      .L1     A12,A4            ; |dummy_dsp.c:104| 
||         ZERO    .D2     B4                ; |dummy_dsp.c:104| 
||         ADD     .S1X    4,SP,A6           ; |dummy_dsp.c:104| 

$C$RL13:   ; CALL OCCURS {_NODE_putMsg} {0}  ; |dummy_dsp.c:104| 
$C$DW$L$_dummy_execute$9$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_dummy_execute$10$B:
;          EXCLUSIVE CPU CYCLES: 6

           BNOP    .S1     $C$L10,5          ; |dummy_dsp.c:105| 
||         MV      .L1     A14,A0

           ; BRANCH OCCURS {$C$L10}          ; |dummy_dsp.c:105| 
$C$DW$L$_dummy_execute$10$E:
;** --------------------------------------------------------------------------*
$C$L5:    
$C$DW$L$_dummy_execute$11$B:
;          EXCLUSIVE CPU CYCLES: 26
$C$DW$48	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$48, DW_AT_low_pc(0x00)
	.dwattr $C$DW$48, DW_AT_name("_BCACHE_inv")
	.dwattr $C$DW$48, DW_AT_TI_call

           CALLP   .S2     _BCACHE_inv,B3
||         LDW     .D2T2   *+SP(8),B4        ; |dummy_dsp.c:89| 
||         MV      .L1     A11,A4            ; |dummy_dsp.c:89| 
||         MVK     .S1     0x1,A6            ; |dummy_dsp.c:89| 

$C$RL14:   ; CALL OCCURS {_BCACHE_inv} {0}   ; |dummy_dsp.c:89| 
$C$DW$49	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$49, DW_AT_low_pc(0x00)
	.dwattr $C$DW$49, DW_AT_name("_imagem_to_cinza")
	.dwattr $C$DW$49, DW_AT_TI_call

           CALLP   .S2     _imagem_to_cinza,B3
||         MV      .L1     A11,A4            ; |dummy_dsp.c:90| 
||         MV      .L2X    A10,B4            ; |dummy_dsp.c:90| 

$C$RL15:   ; CALL OCCURS {_imagem_to_cinza} {0}  ; |dummy_dsp.c:90| 
           MVKL    .S2     0x2a3000,B4
           MVKH    .S2     0x2a3000,B4
$C$DW$50	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$50, DW_AT_low_pc(0x00)
	.dwattr $C$DW$50, DW_AT_name("_BCACHE_wbInv")
	.dwattr $C$DW$50, DW_AT_TI_call

           CALLP   .S2     _BCACHE_wbInv,B3
||         MVK     .L1     0x1,A6            ; |dummy_dsp.c:91| 
||         MV      .S1     A10,A4            ; |dummy_dsp.c:91| 

$C$RL16:   ; CALL OCCURS {_BCACHE_wbInv} {0}  ; |dummy_dsp.c:91| 
$C$DW$51	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$51, DW_AT_low_pc(0x00)
	.dwattr $C$DW$51, DW_AT_name("_NODE_putMsg")
	.dwattr $C$DW$51, DW_AT_TI_call

           CALLP   .S2     _NODE_putMsg,B3
||         ZERO    .L2     B6                ; |dummy_dsp.c:93| 
||         MV      .L1     A12,A4            ; |dummy_dsp.c:93| 
||         ZERO    .D2     B4                ; |dummy_dsp.c:93| 
||         ADD     .S1X    4,SP,A6           ; |dummy_dsp.c:93| 

$C$RL17:   ; CALL OCCURS {_NODE_putMsg} {0}  ; |dummy_dsp.c:93| 
$C$DW$L$_dummy_execute$11$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_dummy_execute$12$B:
;          EXCLUSIVE CPU CYCLES: 6

           BNOP    .S1     $C$L10,5          ; |dummy_dsp.c:94| 
||         MV      .L1     A14,A0

           ; BRANCH OCCURS {$C$L10}          ; |dummy_dsp.c:94| 
$C$DW$L$_dummy_execute$12$E:
;** --------------------------------------------------------------------------*
$C$L6:    
$C$DW$L$_dummy_execute$13$B:
;          EXCLUSIVE CPU CYCLES: 33
           LDW     .D2T2   *+SP(8),B4        ; |dummy_dsp.c:74| 
$C$DW$52	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$52, DW_AT_low_pc(0x00)
	.dwattr $C$DW$52, DW_AT_name("_BCACHE_inv")
	.dwattr $C$DW$52, DW_AT_TI_call

           CALLP   .S2     _BCACHE_inv,B3
||         LDW     .D2T2   *+SP(12),B10      ; |dummy_dsp.c:73| 
||         MV      .L1     A11,A4            ; |dummy_dsp.c:74| 
||         MVK     .S1     0x1,A6            ; |dummy_dsp.c:74| 

$C$RL18:   ; CALL OCCURS {_BCACHE_inv} {0}   ; |dummy_dsp.c:74| 
$C$DW$53	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$53, DW_AT_low_pc(0x00)
	.dwattr $C$DW$53, DW_AT_name("_sem_modificacao")
	.dwattr $C$DW$53, DW_AT_TI_call

           CALLP   .S2     _sem_modificacao,B3
||         MV      .L1     A11,A4            ; |dummy_dsp.c:76| 
||         MV      .L2X    A10,B4            ; |dummy_dsp.c:76| 

$C$RL19:   ; CALL OCCURS {_sem_modificacao} {0}  ; |dummy_dsp.c:76| 
$C$DW$54	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$54, DW_AT_low_pc(0x00)
	.dwattr $C$DW$54, DW_AT_name("_NearestNeighbour")
	.dwattr $C$DW$54, DW_AT_TI_call

           CALLP   .S2     _NearestNeighbour,B3
||         MV      .L1X    B10,A6            ; |dummy_dsp.c:77| 
||         MV      .S1     A10,A4            ; |dummy_dsp.c:77| 
||         MV      .L2X    A10,B4            ; |dummy_dsp.c:77| 

$C$RL20:   ; CALL OCCURS {_NearestNeighbour} {0}  ; |dummy_dsp.c:77| 
           MVKL    .S2     0x2a3000,B4
           MVKH    .S2     0x2a3000,B4
$C$DW$55	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$55, DW_AT_low_pc(0x00)
	.dwattr $C$DW$55, DW_AT_name("_BCACHE_wbInv")
	.dwattr $C$DW$55, DW_AT_TI_call

           CALLP   .S2     _BCACHE_wbInv,B3
||         MV      .L1     A10,A4            ; |dummy_dsp.c:79| 
||         MVK     .S1     0x1,A6            ; |dummy_dsp.c:79| 

$C$RL21:   ; CALL OCCURS {_BCACHE_wbInv} {0}  ; |dummy_dsp.c:79| 
$C$DW$56	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$56, DW_AT_low_pc(0x00)
	.dwattr $C$DW$56, DW_AT_name("_NODE_putMsg")
	.dwattr $C$DW$56, DW_AT_TI_call

           CALLP   .S2     _NODE_putMsg,B3
||         ZERO    .L2     B6                ; |dummy_dsp.c:81| 
||         MV      .L1     A12,A4            ; |dummy_dsp.c:81| 
||         ZERO    .D2     B4                ; |dummy_dsp.c:81| 
||         ADD     .S1X    4,SP,A6           ; |dummy_dsp.c:81| 

$C$RL22:   ; CALL OCCURS {_NODE_putMsg} {0}  ; |dummy_dsp.c:81| 
$C$DW$L$_dummy_execute$13$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_dummy_execute$14$B:
;          EXCLUSIVE CPU CYCLES: 6

           BNOP    .S1     $C$L10,5          ; |dummy_dsp.c:82| 
||         MV      .L1     A14,A0

           ; BRANCH OCCURS {$C$L10}          ; |dummy_dsp.c:82| 
$C$DW$L$_dummy_execute$14$E:
;** --------------------------------------------------------------------------*
$C$L7:    
$C$DW$L$_dummy_execute$15$B:
;          EXCLUSIVE CPU CYCLES: 26
$C$DW$57	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$57, DW_AT_low_pc(0x00)
	.dwattr $C$DW$57, DW_AT_name("_BCACHE_inv")
	.dwattr $C$DW$57, DW_AT_TI_call

           CALLP   .S2     _BCACHE_inv,B3
||         LDW     .D2T2   *+SP(8),B4        ; |dummy_dsp.c:63| 
||         MV      .L1     A11,A4            ; |dummy_dsp.c:63| 
||         MVK     .S1     0x1,A6            ; |dummy_dsp.c:63| 

$C$RL23:   ; CALL OCCURS {_BCACHE_inv} {0}   ; |dummy_dsp.c:63| 
$C$DW$58	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$58, DW_AT_low_pc(0x00)
	.dwattr $C$DW$58, DW_AT_name("_sem_modificacao")
	.dwattr $C$DW$58, DW_AT_TI_call

           CALLP   .S2     _sem_modificacao,B3
||         MV      .L1     A11,A4            ; |dummy_dsp.c:64| 
||         MV      .L2X    A10,B4            ; |dummy_dsp.c:64| 

$C$RL24:   ; CALL OCCURS {_sem_modificacao} {0}  ; |dummy_dsp.c:64| 
           MVKL    .S2     0x2a3000,B4
           MVKH    .S2     0x2a3000,B4
$C$DW$59	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$59, DW_AT_low_pc(0x00)
	.dwattr $C$DW$59, DW_AT_name("_BCACHE_wbInv")
	.dwattr $C$DW$59, DW_AT_TI_call

           CALLP   .S2     _BCACHE_wbInv,B3
||         MVK     .L1     0x1,A6            ; |dummy_dsp.c:65| 
||         MV      .S1     A10,A4            ; |dummy_dsp.c:65| 

$C$RL25:   ; CALL OCCURS {_BCACHE_wbInv} {0}  ; |dummy_dsp.c:65| 
$C$DW$60	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$60, DW_AT_low_pc(0x00)
	.dwattr $C$DW$60, DW_AT_name("_NODE_putMsg")
	.dwattr $C$DW$60, DW_AT_TI_call

           CALLP   .S2     _NODE_putMsg,B3
||         ZERO    .L2     B6                ; |dummy_dsp.c:67| 
||         MV      .L1     A12,A4            ; |dummy_dsp.c:67| 
||         ZERO    .D2     B4                ; |dummy_dsp.c:67| 
||         ADD     .S1X    4,SP,A6           ; |dummy_dsp.c:67| 

$C$RL26:   ; CALL OCCURS {_NODE_putMsg} {0}  ; |dummy_dsp.c:67| 
$C$DW$L$_dummy_execute$15$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_dummy_execute$16$B:
;          EXCLUSIVE CPU CYCLES: 6

           B       .S1     $C$L11            ; |dummy_dsp.c:68| 
||         MV      .L1     A14,A0

   [!A0]   BNOP    .S1     $C$L1,4           ; |dummy_dsp.c:49| 
           ; BRANCH OCCURS {$C$L11}          ; |dummy_dsp.c:68| 
$C$DW$L$_dummy_execute$16$E:
;** --------------------------------------------------------------------------*
$C$L8:    
$C$DW$L$_dummy_execute$17$B:
;          EXCLUSIVE CPU CYCLES: 2
           LDW     .D2T1   *+SP(8),A11       ; |dummy_dsp.c:55| 
           LDW     .D2T1   *+SP(12),A10      ; |dummy_dsp.c:56| 
$C$DW$L$_dummy_execute$17$E:
;** --------------------------------------------------------------------------*
$C$L9:    
$C$DW$L$_dummy_execute$18$B:
;          EXCLUSIVE CPU CYCLES: 1
           MV      .L1     A14,A0
$C$DW$L$_dummy_execute$18$E:
;** --------------------------------------------------------------------------*
$C$L10:    
$C$DW$L$_dummy_execute$19$B:
;          EXCLUSIVE CPU CYCLES: 5
   [!A0]   BNOP    .S1     $C$L1,4           ; |dummy_dsp.c:49| 
$C$DW$L$_dummy_execute$19$E:
;** --------------------------------------------------------------------------*
$C$L11:    
$C$DW$L$_dummy_execute$20$B:
;          EXCLUSIVE CPU CYCLES: 1
	.dwpsn	file "dummy_dsp.c",line 134,column 0,is_stmt,isa 0
$C$DW$61	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$61, DW_AT_low_pc(0x00)
	.dwattr $C$DW$61, DW_AT_name("_NODE_getMsg")
	.dwattr $C$DW$61, DW_AT_TI_call

   [!A0]   CALL    .S1     _NODE_getMsg      ; |dummy_dsp.c:50| 
|| [ A0]   ADDK    .S2     16,SP             ; |dummy_dsp.c:137| 

           ; BRANCHCC OCCURS {$C$L1}         ; |dummy_dsp.c:49| 
$C$DW$L$_dummy_execute$20$E:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 8

           LDDW    .D2T1   *++SP,A11:A10     ; |dummy_dsp.c:137| 
||         MV      .L2     B11,B3            ; |dummy_dsp.c:137| 

           LDDW    .D2T1   *++SP,A13:A12     ; |dummy_dsp.c:137| 
$C$DW$62	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$62, DW_AT_low_pc(0x04)
	.dwattr $C$DW$62, DW_AT_TI_return

           LDDW    .D2T2   *++SP,B11:B10     ; |dummy_dsp.c:137| 
||         RET     .S2     B3                ; |dummy_dsp.c:137| 

           LDW     .D2T1   *++SP(8),A14      ; |dummy_dsp.c:137| 
           ZERO    .L1     A4
           SET     .S1     A4,0xf,0xf,A4
	.dwpsn	file "dummy_dsp.c",line 137,column 1,is_stmt,isa 0
           NOP             2
           ; BRANCH OCCURS {B3}              ; |dummy_dsp.c:137| 

$C$DW$63	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$63, DW_AT_name("/home/fernandofernandes/NetBeansProjects/C.03/DSP/CSequencial_DSP.03/dummy_dsp.asm:$C$L1:1:1419026474")
	.dwattr $C$DW$63, DW_AT_TI_begin_file("dummy_dsp.c")
	.dwattr $C$DW$63, DW_AT_TI_begin_line(0x31)
	.dwattr $C$DW$63, DW_AT_TI_end_line(0x86)
$C$DW$64	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$64, DW_AT_low_pc($C$DW$L$_dummy_execute$2$B)
	.dwattr $C$DW$64, DW_AT_high_pc($C$DW$L$_dummy_execute$2$E)
$C$DW$65	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$65, DW_AT_low_pc($C$DW$L$_dummy_execute$17$B)
	.dwattr $C$DW$65, DW_AT_high_pc($C$DW$L$_dummy_execute$17$E)
$C$DW$66	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$66, DW_AT_low_pc($C$DW$L$_dummy_execute$13$B)
	.dwattr $C$DW$66, DW_AT_high_pc($C$DW$L$_dummy_execute$13$E)
$C$DW$67	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$67, DW_AT_low_pc($C$DW$L$_dummy_execute$11$B)
	.dwattr $C$DW$67, DW_AT_high_pc($C$DW$L$_dummy_execute$11$E)
$C$DW$68	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$68, DW_AT_low_pc($C$DW$L$_dummy_execute$9$B)
	.dwattr $C$DW$68, DW_AT_high_pc($C$DW$L$_dummy_execute$9$E)
$C$DW$69	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$69, DW_AT_low_pc($C$DW$L$_dummy_execute$7$B)
	.dwattr $C$DW$69, DW_AT_high_pc($C$DW$L$_dummy_execute$7$E)
$C$DW$70	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$70, DW_AT_low_pc($C$DW$L$_dummy_execute$5$B)
	.dwattr $C$DW$70, DW_AT_high_pc($C$DW$L$_dummy_execute$5$E)
$C$DW$71	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$71, DW_AT_low_pc($C$DW$L$_dummy_execute$6$B)
	.dwattr $C$DW$71, DW_AT_high_pc($C$DW$L$_dummy_execute$6$E)
$C$DW$72	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$72, DW_AT_low_pc($C$DW$L$_dummy_execute$8$B)
	.dwattr $C$DW$72, DW_AT_high_pc($C$DW$L$_dummy_execute$8$E)
$C$DW$73	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$73, DW_AT_low_pc($C$DW$L$_dummy_execute$10$B)
	.dwattr $C$DW$73, DW_AT_high_pc($C$DW$L$_dummy_execute$10$E)
$C$DW$74	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$74, DW_AT_low_pc($C$DW$L$_dummy_execute$12$B)
	.dwattr $C$DW$74, DW_AT_high_pc($C$DW$L$_dummy_execute$12$E)
$C$DW$75	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$75, DW_AT_low_pc($C$DW$L$_dummy_execute$14$B)
	.dwattr $C$DW$75, DW_AT_high_pc($C$DW$L$_dummy_execute$14$E)
$C$DW$76	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$76, DW_AT_low_pc($C$DW$L$_dummy_execute$18$B)
	.dwattr $C$DW$76, DW_AT_high_pc($C$DW$L$_dummy_execute$18$E)
$C$DW$77	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$77, DW_AT_low_pc($C$DW$L$_dummy_execute$3$B)
	.dwattr $C$DW$77, DW_AT_high_pc($C$DW$L$_dummy_execute$3$E)
$C$DW$78	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$78, DW_AT_low_pc($C$DW$L$_dummy_execute$4$B)
	.dwattr $C$DW$78, DW_AT_high_pc($C$DW$L$_dummy_execute$4$E)
$C$DW$79	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$79, DW_AT_low_pc($C$DW$L$_dummy_execute$15$B)
	.dwattr $C$DW$79, DW_AT_high_pc($C$DW$L$_dummy_execute$15$E)
$C$DW$80	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$80, DW_AT_low_pc($C$DW$L$_dummy_execute$16$B)
	.dwattr $C$DW$80, DW_AT_high_pc($C$DW$L$_dummy_execute$16$E)
$C$DW$81	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$81, DW_AT_low_pc($C$DW$L$_dummy_execute$19$B)
	.dwattr $C$DW$81, DW_AT_high_pc($C$DW$L$_dummy_execute$19$E)
$C$DW$82	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$82, DW_AT_low_pc($C$DW$L$_dummy_execute$20$B)
	.dwattr $C$DW$82, DW_AT_high_pc($C$DW$L$_dummy_execute$20$E)
	.dwendtag $C$DW$63

	.dwattr $C$DW$32, DW_AT_TI_end_file("dummy_dsp.c")
	.dwattr $C$DW$32, DW_AT_TI_end_line(0x89)
	.dwattr $C$DW$32, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$32

	.sect	".text"
	.clink
	.global	_dummy_delete

$C$DW$83	.dwtag  DW_TAG_subprogram, DW_AT_name("dummy_delete")
	.dwattr $C$DW$83, DW_AT_low_pc(_dummy_delete)
	.dwattr $C$DW$83, DW_AT_high_pc(0x00)
	.dwattr $C$DW$83, DW_AT_TI_symbol_name("_dummy_delete")
	.dwattr $C$DW$83, DW_AT_external
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$83, DW_AT_TI_begin_file("dummy_dsp.c")
	.dwattr $C$DW$83, DW_AT_TI_begin_line(0x21)
	.dwattr $C$DW$83, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$83, DW_AT_TI_max_frame_size(0x00)
	.dwattr $C$DW$83, DW_AT_frame_base[DW_OP_breg31 0]
	.dwattr $C$DW$83, DW_AT_TI_skeletal
	.dwpsn	file "dummy_dsp.c",line 33,column 20,is_stmt,address _dummy_delete,isa 0

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
$C$DW$84	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$84, DW_AT_low_pc(0x00)
	.dwattr $C$DW$84, DW_AT_TI_return
           RETNOP  .S2     B3,3              ; |dummy_dsp.c:35| 
           ZERO    .L1     A4
	.dwpsn	file "dummy_dsp.c",line 35,column 1,is_stmt,isa 0
           SET     .S1     A4,0xf,0xf,A4
           ; BRANCH OCCURS {B3}              ; |dummy_dsp.c:35| 
	.dwattr $C$DW$83, DW_AT_TI_end_file("dummy_dsp.c")
	.dwattr $C$DW$83, DW_AT_TI_end_line(0x23)
	.dwattr $C$DW$83, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$83

	.sect	".text"
	.clink
	.global	_dummy_create

$C$DW$85	.dwtag  DW_TAG_subprogram, DW_AT_name("dummy_create")
	.dwattr $C$DW$85, DW_AT_low_pc(_dummy_create)
	.dwattr $C$DW$85, DW_AT_high_pc(0x00)
	.dwattr $C$DW$85, DW_AT_TI_symbol_name("_dummy_create")
	.dwattr $C$DW$85, DW_AT_external
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$85, DW_AT_TI_begin_file("dummy_dsp.c")
	.dwattr $C$DW$85, DW_AT_TI_begin_line(0x1c)
	.dwattr $C$DW$85, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$85, DW_AT_TI_max_frame_size(0x00)
	.dwattr $C$DW$85, DW_AT_frame_base[DW_OP_breg31 0]
	.dwattr $C$DW$85, DW_AT_TI_skeletal
	.dwpsn	file "dummy_dsp.c",line 28,column 20,is_stmt,address _dummy_create,isa 0

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
$C$DW$86	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$86, DW_AT_low_pc(0x00)
	.dwattr $C$DW$86, DW_AT_TI_return
           RETNOP  .S2     B3,3              ; |dummy_dsp.c:30| 
           ZERO    .L1     A4
	.dwpsn	file "dummy_dsp.c",line 30,column 1,is_stmt,isa 0
           SET     .S1     A4,0xf,0xf,A4
           ; BRANCH OCCURS {B3}              ; |dummy_dsp.c:30| 
	.dwattr $C$DW$85, DW_AT_TI_end_file("dummy_dsp.c")
	.dwattr $C$DW$85, DW_AT_TI_end_line(0x1e)
	.dwattr $C$DW$85, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$85

;*****************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                             *
;*****************************************************************************
	.global	_NODE_getMsg
	.global	_NODE_putMsg
	.global	_BCACHE_inv
	.global	_BCACHE_wbInv
	.global	_imagem_to_cinza
	.global	_limiar_imagem
	.global	_sem_modificacao
	.global	_NearestNeighbour

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
$C$DW$87	.dwtag  DW_TAG_member
	.dwattr $C$DW$87, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$87, DW_AT_name("cmd")
	.dwattr $C$DW$87, DW_AT_TI_symbol_name("_cmd")
	.dwattr $C$DW$87, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$87, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$88	.dwtag  DW_TAG_member
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$88, DW_AT_name("arg_1")
	.dwattr $C$DW$88, DW_AT_TI_symbol_name("_arg_1")
	.dwattr $C$DW$88, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$88, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$89	.dwtag  DW_TAG_member
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$89, DW_AT_name("arg_2")
	.dwattr $C$DW$89, DW_AT_TI_symbol_name("_arg_2")
	.dwattr $C$DW$89, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$89, DW_AT_accessibility(DW_ACCESS_public)
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
$C$DW$T$28	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$6)
$C$DW$T$29	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$29, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$29, DW_AT_address_class(0x20)
$C$DW$T$30	.dwtag  DW_TAG_restrict_type
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$T$29)
$C$DW$T$31	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$31, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$31, DW_AT_address_class(0x20)
$C$DW$T$32	.dwtag  DW_TAG_restrict_type
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$T$31)
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
$C$DW$T$10	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$10, DW_AT_name("int")
	.dwattr $C$DW$T$10, DW_AT_byte_size(0x04)
$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x04)
$C$DW$T$25	.dwtag  DW_TAG_typedef, DW_AT_name("size_t")
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$25, DW_AT_language(DW_LANG_C)
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

