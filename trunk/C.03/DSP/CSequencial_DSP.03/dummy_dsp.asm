;******************************************************************************
;* TMS320C6x C/C++ Codegen                                        Unix v7.6.0 *
;* Date/Time created: Fri Dec 19 16:06:42 2014                                *
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
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$32)
$C$DW$27	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$32)
	.dwendtag $C$DW$25

;	/opt/c6000_7.6.0/bin/opt6x /tmp/06163SsodzA /tmp/06163TdZflw 
	.sect	".text"
	.clink
	.global	_dummy_execute

$C$DW$28	.dwtag  DW_TAG_subprogram, DW_AT_name("dummy_execute")
	.dwattr $C$DW$28, DW_AT_low_pc(_dummy_execute)
	.dwattr $C$DW$28, DW_AT_high_pc(0x00)
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("_dummy_execute")
	.dwattr $C$DW$28, DW_AT_external
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$28, DW_AT_TI_begin_file("dummy_dsp.c")
	.dwattr $C$DW$28, DW_AT_TI_begin_line(0x25)
	.dwattr $C$DW$28, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$28, DW_AT_TI_max_frame_size(0x30)
	.dwattr $C$DW$28, DW_AT_frame_base[DW_OP_breg31 48]
	.dwattr $C$DW$28, DW_AT_TI_skeletal
	.dwpsn	file "dummy_dsp.c",line 37,column 26,is_stmt,address _dummy_execute,isa 0
$C$DW$29	.dwtag  DW_TAG_formal_parameter, DW_AT_name("env")
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("_env")
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$29, DW_AT_location[DW_OP_reg4]

;******************************************************************************
;* FUNCTION NAME: dummy_execute                                               *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,B0,*
;*                           B1,B2,B3,B4,B5,B6,B7,B8,B9,B13,SP,A16,A17,A18,   *
;*                           A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29,A30, *
;*                           A31,B16,B17,B18,B19,B20,B21,B22,B23,B24,B25,B26, *
;*                           B27,B28,B29,B30,B31                              *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,B0,*
;*                           B1,B2,B3,B4,B5,B6,B7,B8,B9,B13,DP,SP,A16,A17,A18,*
;*                           A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29,A30, *
;*                           A31,B16,B17,B18,B19,B20,B21,B22,B23,B24,B25,B26, *
;*                           B27,B28,B29,B30,B31                              *
;*   Local Frame Size  : 0 Args + 12 Auto + 32 Save = 44 byte                 *
;******************************************************************************
_dummy_execute:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 4
           STW     .D2T2   B13,*SP--(8)      ; |dummy_dsp.c:37| 
           STDW    .D2T1   A13:A12,*SP--     ; |dummy_dsp.c:37| 
           STDW    .D2T1   A11:A10,*SP--     ; |dummy_dsp.c:37| 
	.dwpsn	file "dummy_dsp.c",line 44,column 0,is_stmt,isa 0
$C$DW$30	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$30, DW_AT_low_pc(0x00)
	.dwattr $C$DW$30, DW_AT_name("_NODE_getMsg")
	.dwattr $C$DW$30, DW_AT_TI_call

           CALL    .S2     _NODE_getMsg      ; |dummy_dsp.c:45| 
||         MV      .L1     A4,A14            ; |dummy_dsp.c:37| 
||         STW     .D2T1   A14,*SP--(24)     ; |dummy_dsp.c:37| 
||         ZERO    .S1     A11               ; |dummy_dsp.c:41| 
||         MVK     .D1     0xffffffff,A13
||         MV      .L2     B3,B13            ; |dummy_dsp.c:37| 

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*      Disqualified loop: Loop contains non-pipelinable instructions
;*      Disqualified loop: Loop contains control code
;*----------------------------------------------------------------------------*
$C$L1:    
$C$DW$L$_dummy_execute$2$B:
;          EXCLUSIVE CPU CYCLES: 5
           ADDKPC  .S2     $C$RL0,B3,3       ; |dummy_dsp.c:45| 

           MV      .L1     A14,A4            ; |dummy_dsp.c:45| 
||         ADD     .L2     4,SP,B4           ; |dummy_dsp.c:45| 
||         MV      .S1     A13,A6            ; |dummy_dsp.c:45| 

$C$RL0:    ; CALL OCCURS {_NODE_getMsg} {0}  ; |dummy_dsp.c:45| 
$C$DW$L$_dummy_execute$2$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_dummy_execute$3$B:
;          EXCLUSIVE CPU CYCLES: 13
           LDW     .D2T2   *+SP(4),B4        ; |dummy_dsp.c:47| 
           MVKL    .S2     $C$SW1,B5
           ZERO    .L1     A3
           MVKH    .S2     $C$SW1,B5
           MVKH    .S1     0x80000000,A3
           CMPEQ   .L1X    B4,A3,A0          ; |dummy_dsp.c:47| 

   [ A0]   MVK     .S2     0x1,B0            ; |dummy_dsp.c:47| 
|| [!A0]   CMPGTU  .L2     B4,4,B0           ; |dummy_dsp.c:47| 
|| [ A0]   MVK     .L1     0x1,A3            ; |dummy_dsp.c:100| 

   [ B0]   BNOP    .S1     $C$L8,3           ; |dummy_dsp.c:47| 
|| [!B0]   LDW     .D2T2   *+B5[B4],B4       ; |dummy_dsp.c:47| 
|| [ A0]   MV      .L1     A3,A11            ; |dummy_dsp.c:100| 

   [ B0]   MV      .L1     A11,A0
   [!B0]   B       .S2     B4                ; |dummy_dsp.c:47| 
           ; BRANCHCC OCCURS {$C$L8} {-6}    ; |dummy_dsp.c:47| 
$C$DW$L$_dummy_execute$3$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_dummy_execute$4$B:
;          EXCLUSIVE CPU CYCLES: 5
           NOP             5
           ; BRANCH OCCURS {B4}              ; |dummy_dsp.c:47| 
	.sect	".switch:_dummy_execute"
	.clink
$C$SW1:	.word	$C$L6	; 0
	.word	$C$L5	; 1
	.word	$C$L4	; 2
	.word	$C$L3	; 3
	.word	$C$L2	; 4
	.sect	".text"
$C$DW$L$_dummy_execute$4$E:
;** --------------------------------------------------------------------------*
$C$L2:    
$C$DW$L$_dummy_execute$5$B:
;          EXCLUSIVE CPU CYCLES: 26
$C$DW$31	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$31, DW_AT_low_pc(0x00)
	.dwattr $C$DW$31, DW_AT_name("_BCACHE_inv")
	.dwattr $C$DW$31, DW_AT_TI_call

           CALLP   .S2     _BCACHE_inv,B3
||         LDW     .D2T2   *+SP(8),B4        ; |dummy_dsp.c:92| 
||         MV      .L1     A12,A4            ; |dummy_dsp.c:92| 
||         MVK     .S1     0x1,A6            ; |dummy_dsp.c:92| 

$C$RL1:    ; CALL OCCURS {_BCACHE_inv} {0}   ; |dummy_dsp.c:92| 
$C$DW$32	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$32, DW_AT_low_pc(0x00)
	.dwattr $C$DW$32, DW_AT_name("_sem_modificacao")
	.dwattr $C$DW$32, DW_AT_TI_call

           CALLP   .S2     _sem_modificacao,B3
||         MV      .L1     A12,A4            ; |dummy_dsp.c:93| 
||         MV      .L2X    A10,B4            ; |dummy_dsp.c:93| 

$C$RL2:    ; CALL OCCURS {_sem_modificacao} {0}  ; |dummy_dsp.c:93| 
           MVKL    .S2     0x2a3000,B4
           MVKH    .S2     0x2a3000,B4
$C$DW$33	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$33, DW_AT_low_pc(0x00)
	.dwattr $C$DW$33, DW_AT_name("_BCACHE_wbInv")
	.dwattr $C$DW$33, DW_AT_TI_call

           CALLP   .S2     _BCACHE_wbInv,B3
||         MVK     .L1     0x1,A6            ; |dummy_dsp.c:94| 
||         MV      .S1     A10,A4            ; |dummy_dsp.c:94| 

$C$RL3:    ; CALL OCCURS {_BCACHE_wbInv} {0}  ; |dummy_dsp.c:94| 
$C$DW$34	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$34, DW_AT_low_pc(0x00)
	.dwattr $C$DW$34, DW_AT_name("_NODE_putMsg")
	.dwattr $C$DW$34, DW_AT_TI_call

           CALLP   .S2     _NODE_putMsg,B3
||         ZERO    .L2     B6                ; |dummy_dsp.c:96| 
||         MV      .L1     A14,A4            ; |dummy_dsp.c:96| 
||         ZERO    .D2     B4                ; |dummy_dsp.c:96| 
||         ADD     .S1X    4,SP,A6           ; |dummy_dsp.c:96| 

$C$RL4:    ; CALL OCCURS {_NODE_putMsg} {0}  ; |dummy_dsp.c:96| 
$C$DW$L$_dummy_execute$5$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_dummy_execute$6$B:
;          EXCLUSIVE CPU CYCLES: 6

           BNOP    .S1     $C$L8,5           ; |dummy_dsp.c:97| 
||         MV      .L1     A11,A0

           ; BRANCH OCCURS {$C$L8}           ; |dummy_dsp.c:97| 
$C$DW$L$_dummy_execute$6$E:
;** --------------------------------------------------------------------------*
$C$L3:    
$C$DW$L$_dummy_execute$7$B:
;          EXCLUSIVE CPU CYCLES: 26
$C$DW$35	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$35, DW_AT_low_pc(0x00)
	.dwattr $C$DW$35, DW_AT_name("_BCACHE_inv")
	.dwattr $C$DW$35, DW_AT_TI_call

           CALLP   .S2     _BCACHE_inv,B3
||         LDW     .D2T2   *+SP(8),B4        ; |dummy_dsp.c:81| 
||         MV      .L1     A12,A4            ; |dummy_dsp.c:81| 
||         MVK     .S1     0x1,A6            ; |dummy_dsp.c:81| 

$C$RL5:    ; CALL OCCURS {_BCACHE_inv} {0}   ; |dummy_dsp.c:81| 
$C$DW$36	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$36, DW_AT_low_pc(0x00)
	.dwattr $C$DW$36, DW_AT_name("_limiar_imagem")
	.dwattr $C$DW$36, DW_AT_TI_call

           CALLP   .S2     _limiar_imagem,B3
||         MV      .L1     A12,A4            ; |dummy_dsp.c:82| 
||         MV      .L2X    A10,B4            ; |dummy_dsp.c:82| 
||         ZERO    .S1     A6                ; |dummy_dsp.c:82| 

$C$RL6:    ; CALL OCCURS {_limiar_imagem} {0}  ; |dummy_dsp.c:82| 
           MVKL    .S2     0x2a3000,B4
           MVKH    .S2     0x2a3000,B4
$C$DW$37	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$37, DW_AT_low_pc(0x00)
	.dwattr $C$DW$37, DW_AT_name("_BCACHE_wbInv")
	.dwattr $C$DW$37, DW_AT_TI_call

           CALLP   .S2     _BCACHE_wbInv,B3
||         MV      .L1     A10,A4            ; |dummy_dsp.c:83| 
||         MVK     .S1     0x1,A6            ; |dummy_dsp.c:83| 

$C$RL7:    ; CALL OCCURS {_BCACHE_wbInv} {0}  ; |dummy_dsp.c:83| 
$C$DW$38	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$38, DW_AT_low_pc(0x00)
	.dwattr $C$DW$38, DW_AT_name("_NODE_putMsg")
	.dwattr $C$DW$38, DW_AT_TI_call

           CALLP   .S2     _NODE_putMsg,B3
||         ZERO    .L2     B6                ; |dummy_dsp.c:85| 
||         MV      .L1     A14,A4            ; |dummy_dsp.c:85| 
||         ZERO    .D2     B4                ; |dummy_dsp.c:85| 
||         ADD     .S1X    4,SP,A6           ; |dummy_dsp.c:85| 

$C$RL8:    ; CALL OCCURS {_NODE_putMsg} {0}  ; |dummy_dsp.c:85| 
$C$DW$L$_dummy_execute$7$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_dummy_execute$8$B:
;          EXCLUSIVE CPU CYCLES: 6

           BNOP    .S1     $C$L8,5           ; |dummy_dsp.c:86| 
||         MV      .L1     A11,A0

           ; BRANCH OCCURS {$C$L8}           ; |dummy_dsp.c:86| 
$C$DW$L$_dummy_execute$8$E:
;** --------------------------------------------------------------------------*
$C$L4:    
$C$DW$L$_dummy_execute$9$B:
;          EXCLUSIVE CPU CYCLES: 26
$C$DW$39	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$39, DW_AT_low_pc(0x00)
	.dwattr $C$DW$39, DW_AT_name("_BCACHE_inv")
	.dwattr $C$DW$39, DW_AT_TI_call

           CALLP   .S2     _BCACHE_inv,B3
||         LDW     .D2T2   *+SP(8),B4        ; |dummy_dsp.c:70| 
||         MV      .L1     A12,A4            ; |dummy_dsp.c:70| 
||         MVK     .S1     0x1,A6            ; |dummy_dsp.c:70| 

$C$RL9:    ; CALL OCCURS {_BCACHE_inv} {0}   ; |dummy_dsp.c:70| 
$C$DW$40	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$40, DW_AT_low_pc(0x00)
	.dwattr $C$DW$40, DW_AT_name("_limiar_imagem")
	.dwattr $C$DW$40, DW_AT_TI_call

           CALLP   .S2     _limiar_imagem,B3
||         MV      .L1     A12,A4            ; |dummy_dsp.c:71| 
||         MV      .L2X    A10,B4            ; |dummy_dsp.c:71| 
||         MVK     .S1     0x1,A6            ; |dummy_dsp.c:71| 

$C$RL10:   ; CALL OCCURS {_limiar_imagem} {0}  ; |dummy_dsp.c:71| 
           MVKL    .S2     0x2a3000,B4
           MVKH    .S2     0x2a3000,B4
$C$DW$41	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$41, DW_AT_low_pc(0x00)
	.dwattr $C$DW$41, DW_AT_name("_BCACHE_wbInv")
	.dwattr $C$DW$41, DW_AT_TI_call

           CALLP   .S2     _BCACHE_wbInv,B3
||         MV      .L1     A10,A4            ; |dummy_dsp.c:72| 
||         MVK     .S1     0x1,A6            ; |dummy_dsp.c:72| 

$C$RL11:   ; CALL OCCURS {_BCACHE_wbInv} {0}  ; |dummy_dsp.c:72| 
$C$DW$42	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$42, DW_AT_low_pc(0x00)
	.dwattr $C$DW$42, DW_AT_name("_NODE_putMsg")
	.dwattr $C$DW$42, DW_AT_TI_call

           CALLP   .S2     _NODE_putMsg,B3
||         ZERO    .L2     B6                ; |dummy_dsp.c:74| 
||         MV      .L1     A14,A4            ; |dummy_dsp.c:74| 
||         ZERO    .D2     B4                ; |dummy_dsp.c:74| 
||         ADD     .S1X    4,SP,A6           ; |dummy_dsp.c:74| 

$C$RL12:   ; CALL OCCURS {_NODE_putMsg} {0}  ; |dummy_dsp.c:74| 
$C$DW$L$_dummy_execute$9$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_dummy_execute$10$B:
;          EXCLUSIVE CPU CYCLES: 6

           BNOP    .S1     $C$L8,5           ; |dummy_dsp.c:75| 
||         MV      .L1     A11,A0

           ; BRANCH OCCURS {$C$L8}           ; |dummy_dsp.c:75| 
$C$DW$L$_dummy_execute$10$E:
;** --------------------------------------------------------------------------*
$C$L5:    
$C$DW$L$_dummy_execute$11$B:
;          EXCLUSIVE CPU CYCLES: 26
$C$DW$43	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$43, DW_AT_low_pc(0x00)
	.dwattr $C$DW$43, DW_AT_name("_BCACHE_inv")
	.dwattr $C$DW$43, DW_AT_TI_call

           CALLP   .S2     _BCACHE_inv,B3
||         LDW     .D2T2   *+SP(8),B4        ; |dummy_dsp.c:59| 
||         MV      .L1     A12,A4            ; |dummy_dsp.c:59| 
||         MVK     .S1     0x1,A6            ; |dummy_dsp.c:59| 

$C$RL13:   ; CALL OCCURS {_BCACHE_inv} {0}   ; |dummy_dsp.c:59| 
$C$DW$44	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$44, DW_AT_low_pc(0x00)
	.dwattr $C$DW$44, DW_AT_name("_imagem_to_cinza")
	.dwattr $C$DW$44, DW_AT_TI_call

           CALLP   .S2     _imagem_to_cinza,B3
||         MV      .L1     A12,A4            ; |dummy_dsp.c:60| 
||         MV      .L2X    A10,B4            ; |dummy_dsp.c:60| 

$C$RL14:   ; CALL OCCURS {_imagem_to_cinza} {0}  ; |dummy_dsp.c:60| 
           MVKL    .S2     0x2a3000,B4
           MVKH    .S2     0x2a3000,B4
$C$DW$45	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$45, DW_AT_low_pc(0x00)
	.dwattr $C$DW$45, DW_AT_name("_BCACHE_wbInv")
	.dwattr $C$DW$45, DW_AT_TI_call

           CALLP   .S2     _BCACHE_wbInv,B3
||         MVK     .L1     0x1,A6            ; |dummy_dsp.c:61| 
||         MV      .S1     A10,A4            ; |dummy_dsp.c:61| 

$C$RL15:   ; CALL OCCURS {_BCACHE_wbInv} {0}  ; |dummy_dsp.c:61| 
$C$DW$46	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$46, DW_AT_low_pc(0x00)
	.dwattr $C$DW$46, DW_AT_name("_NODE_putMsg")
	.dwattr $C$DW$46, DW_AT_TI_call

           CALLP   .S2     _NODE_putMsg,B3
||         ZERO    .L2     B6                ; |dummy_dsp.c:63| 
||         MV      .L1     A14,A4            ; |dummy_dsp.c:63| 
||         ZERO    .D2     B4                ; |dummy_dsp.c:63| 
||         ADD     .S1X    4,SP,A6           ; |dummy_dsp.c:63| 

$C$RL16:   ; CALL OCCURS {_NODE_putMsg} {0}  ; |dummy_dsp.c:63| 
$C$DW$L$_dummy_execute$11$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_dummy_execute$12$B:
;          EXCLUSIVE CPU CYCLES: 6

           B       .S1     $C$L9             ; |dummy_dsp.c:64| 
||         MV      .L1     A11,A0

   [!A0]   BNOP    .S1     $C$L1,4           ; |dummy_dsp.c:44| 
           ; BRANCH OCCURS {$C$L9}           ; |dummy_dsp.c:64| 
$C$DW$L$_dummy_execute$12$E:
;** --------------------------------------------------------------------------*
$C$L6:    
$C$DW$L$_dummy_execute$13$B:
;          EXCLUSIVE CPU CYCLES: 2
           LDW     .D2T1   *+SP(8),A12       ; |dummy_dsp.c:50| 
           LDW     .D2T1   *+SP(12),A10      ; |dummy_dsp.c:51| 
$C$DW$L$_dummy_execute$13$E:
;** --------------------------------------------------------------------------*
$C$L7:    
$C$DW$L$_dummy_execute$14$B:
;          EXCLUSIVE CPU CYCLES: 1
           MV      .L1     A11,A0
$C$DW$L$_dummy_execute$14$E:
;** --------------------------------------------------------------------------*
$C$L8:    
$C$DW$L$_dummy_execute$15$B:
;          EXCLUSIVE CPU CYCLES: 5
   [!A0]   BNOP    .S1     $C$L1,4           ; |dummy_dsp.c:44| 
$C$DW$L$_dummy_execute$15$E:
;** --------------------------------------------------------------------------*
$C$L9:    
$C$DW$L$_dummy_execute$16$B:
;          EXCLUSIVE CPU CYCLES: 1
	.dwpsn	file "dummy_dsp.c",line 103,column 0,is_stmt,isa 0
$C$DW$47	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$47, DW_AT_low_pc(0x00)
	.dwattr $C$DW$47, DW_AT_name("_NODE_getMsg")
	.dwattr $C$DW$47, DW_AT_TI_call

   [!A0]   CALL    .S1     _NODE_getMsg      ; |dummy_dsp.c:45| 
|| [ A0]   LDW     .D2T1   *++SP(24),A14     ; |dummy_dsp.c:106| 

           ; BRANCHCC OCCURS {$C$L1}         ; |dummy_dsp.c:44| 
$C$DW$L$_dummy_execute$16$E:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 7

           MV      .L2     B13,B3            ; |dummy_dsp.c:106| 
||         LDDW    .D2T1   *++SP,A11:A10     ; |dummy_dsp.c:106| 

$C$DW$48	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$48, DW_AT_low_pc(0x00)
	.dwattr $C$DW$48, DW_AT_TI_return

           RET     .S2     B3                ; |dummy_dsp.c:106| 
||         LDDW    .D2T1   *++SP,A13:A12     ; |dummy_dsp.c:106| 

           LDW     .D2T2   *++SP(8),B13      ; |dummy_dsp.c:106| 
           ZERO    .L1     A4
           SET     .S1     A4,0xf,0xf,A4
	.dwpsn	file "dummy_dsp.c",line 106,column 1,is_stmt,isa 0
           NOP             2
           ; BRANCH OCCURS {B3}              ; |dummy_dsp.c:106| 

$C$DW$49	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$49, DW_AT_name("/home/fernandofernandes/tcc/DSP/Usando YUYV - RGB/CSequencial_DSP.03/dummy_dsp.asm:$C$L1:1:1419012402")
	.dwattr $C$DW$49, DW_AT_TI_begin_file("dummy_dsp.c")
	.dwattr $C$DW$49, DW_AT_TI_begin_line(0x2c)
	.dwattr $C$DW$49, DW_AT_TI_end_line(0x67)
$C$DW$50	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$50, DW_AT_low_pc($C$DW$L$_dummy_execute$2$B)
	.dwattr $C$DW$50, DW_AT_high_pc($C$DW$L$_dummy_execute$2$E)
$C$DW$51	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$51, DW_AT_low_pc($C$DW$L$_dummy_execute$13$B)
	.dwattr $C$DW$51, DW_AT_high_pc($C$DW$L$_dummy_execute$13$E)
$C$DW$52	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$52, DW_AT_low_pc($C$DW$L$_dummy_execute$9$B)
	.dwattr $C$DW$52, DW_AT_high_pc($C$DW$L$_dummy_execute$9$E)
$C$DW$53	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$53, DW_AT_low_pc($C$DW$L$_dummy_execute$7$B)
	.dwattr $C$DW$53, DW_AT_high_pc($C$DW$L$_dummy_execute$7$E)
$C$DW$54	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$54, DW_AT_low_pc($C$DW$L$_dummy_execute$5$B)
	.dwattr $C$DW$54, DW_AT_high_pc($C$DW$L$_dummy_execute$5$E)
$C$DW$55	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$55, DW_AT_low_pc($C$DW$L$_dummy_execute$6$B)
	.dwattr $C$DW$55, DW_AT_high_pc($C$DW$L$_dummy_execute$6$E)
$C$DW$56	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$56, DW_AT_low_pc($C$DW$L$_dummy_execute$8$B)
	.dwattr $C$DW$56, DW_AT_high_pc($C$DW$L$_dummy_execute$8$E)
$C$DW$57	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$57, DW_AT_low_pc($C$DW$L$_dummy_execute$10$B)
	.dwattr $C$DW$57, DW_AT_high_pc($C$DW$L$_dummy_execute$10$E)
$C$DW$58	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$58, DW_AT_low_pc($C$DW$L$_dummy_execute$14$B)
	.dwattr $C$DW$58, DW_AT_high_pc($C$DW$L$_dummy_execute$14$E)
$C$DW$59	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$59, DW_AT_low_pc($C$DW$L$_dummy_execute$3$B)
	.dwattr $C$DW$59, DW_AT_high_pc($C$DW$L$_dummy_execute$3$E)
$C$DW$60	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$60, DW_AT_low_pc($C$DW$L$_dummy_execute$4$B)
	.dwattr $C$DW$60, DW_AT_high_pc($C$DW$L$_dummy_execute$4$E)
$C$DW$61	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$61, DW_AT_low_pc($C$DW$L$_dummy_execute$11$B)
	.dwattr $C$DW$61, DW_AT_high_pc($C$DW$L$_dummy_execute$11$E)
$C$DW$62	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$62, DW_AT_low_pc($C$DW$L$_dummy_execute$12$B)
	.dwattr $C$DW$62, DW_AT_high_pc($C$DW$L$_dummy_execute$12$E)
$C$DW$63	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$63, DW_AT_low_pc($C$DW$L$_dummy_execute$15$B)
	.dwattr $C$DW$63, DW_AT_high_pc($C$DW$L$_dummy_execute$15$E)
$C$DW$64	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$64, DW_AT_low_pc($C$DW$L$_dummy_execute$16$B)
	.dwattr $C$DW$64, DW_AT_high_pc($C$DW$L$_dummy_execute$16$E)
	.dwendtag $C$DW$49

	.dwattr $C$DW$28, DW_AT_TI_end_file("dummy_dsp.c")
	.dwattr $C$DW$28, DW_AT_TI_end_line(0x6a)
	.dwattr $C$DW$28, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$28

	.sect	".text"
	.clink
	.global	_dummy_delete

$C$DW$65	.dwtag  DW_TAG_subprogram, DW_AT_name("dummy_delete")
	.dwattr $C$DW$65, DW_AT_low_pc(_dummy_delete)
	.dwattr $C$DW$65, DW_AT_high_pc(0x00)
	.dwattr $C$DW$65, DW_AT_TI_symbol_name("_dummy_delete")
	.dwattr $C$DW$65, DW_AT_external
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$65, DW_AT_TI_begin_file("dummy_dsp.c")
	.dwattr $C$DW$65, DW_AT_TI_begin_line(0x20)
	.dwattr $C$DW$65, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$65, DW_AT_TI_max_frame_size(0x00)
	.dwattr $C$DW$65, DW_AT_frame_base[DW_OP_breg31 0]
	.dwattr $C$DW$65, DW_AT_TI_skeletal
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
$C$DW$66	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$66, DW_AT_low_pc(0x00)
	.dwattr $C$DW$66, DW_AT_TI_return
           RETNOP  .S2     B3,3              ; |dummy_dsp.c:34| 
           ZERO    .L1     A4
	.dwpsn	file "dummy_dsp.c",line 34,column 1,is_stmt,isa 0
           SET     .S1     A4,0xf,0xf,A4
           ; BRANCH OCCURS {B3}              ; |dummy_dsp.c:34| 
	.dwattr $C$DW$65, DW_AT_TI_end_file("dummy_dsp.c")
	.dwattr $C$DW$65, DW_AT_TI_end_line(0x22)
	.dwattr $C$DW$65, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$65

	.sect	".text"
	.clink
	.global	_dummy_create

$C$DW$67	.dwtag  DW_TAG_subprogram, DW_AT_name("dummy_create")
	.dwattr $C$DW$67, DW_AT_low_pc(_dummy_create)
	.dwattr $C$DW$67, DW_AT_high_pc(0x00)
	.dwattr $C$DW$67, DW_AT_TI_symbol_name("_dummy_create")
	.dwattr $C$DW$67, DW_AT_external
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$67, DW_AT_TI_begin_file("dummy_dsp.c")
	.dwattr $C$DW$67, DW_AT_TI_begin_line(0x1b)
	.dwattr $C$DW$67, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$67, DW_AT_TI_max_frame_size(0x00)
	.dwattr $C$DW$67, DW_AT_frame_base[DW_OP_breg31 0]
	.dwattr $C$DW$67, DW_AT_TI_skeletal
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
$C$DW$68	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$68, DW_AT_low_pc(0x00)
	.dwattr $C$DW$68, DW_AT_TI_return
           RETNOP  .S2     B3,3              ; |dummy_dsp.c:29| 
           ZERO    .L1     A4
	.dwpsn	file "dummy_dsp.c",line 29,column 1,is_stmt,isa 0
           SET     .S1     A4,0xf,0xf,A4
           ; BRANCH OCCURS {B3}              ; |dummy_dsp.c:29| 
	.dwattr $C$DW$67, DW_AT_TI_end_file("dummy_dsp.c")
	.dwattr $C$DW$67, DW_AT_TI_end_line(0x1d)
	.dwattr $C$DW$67, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$67

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
$C$DW$69	.dwtag  DW_TAG_member
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$69, DW_AT_name("cmd")
	.dwattr $C$DW$69, DW_AT_TI_symbol_name("_cmd")
	.dwattr $C$DW$69, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$69, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$70	.dwtag  DW_TAG_member
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$70, DW_AT_name("arg_1")
	.dwattr $C$DW$70, DW_AT_TI_symbol_name("_arg_1")
	.dwattr $C$DW$70, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$70, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$71	.dwtag  DW_TAG_member
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$71, DW_AT_name("arg_2")
	.dwattr $C$DW$71, DW_AT_TI_symbol_name("_arg_2")
	.dwattr $C$DW$71, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$71, DW_AT_accessibility(DW_ACCESS_public)
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

