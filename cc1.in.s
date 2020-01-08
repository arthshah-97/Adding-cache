gcc2_compiled.:
___gnu_compiled_c:
.text
	.align 4
	.proc	0110
_label_rtx:
	!#PROLOGUE# 0
	save %sp,-112,%sp
	!#PROLOGUE# 1
	st %i0,[%fp+68]
	ld [%fp+68],%o0
	ldub [%o0+12],%o1
	and %o1,0xff,%o0
	cmp %o0,40
	be L2
	nop
	call _abort,0
	nop
L2:
	ld [%fp+68],%o0
	ld [%o0+64],%o1
	cmp %o1,0
	be L3
	nop
	ld [%fp+68],%o0
	ld [%o0+64],%i0
	b L1
	nop
L3:
	call _gen_label_rtx,0
	nop
	ld [%fp+68],%o1
	st %o0,[%o1+64]
	mov %o0,%i0
	b L1
	nop
L1:
	ret
	restore
	.align 4
	.global _emit_jump
	.proc	020
_emit_jump:
	!#PROLOGUE# 0
	save %sp,-112,%sp
	!#PROLOGUE# 1
	st %i0,[%fp+68]
	call _do_pending_stack_adjust,0
	nop
	ld [%fp+68],%o0
	call _gen_jump,0
	nop
	mov %o0,%o1
	mov %o1,%o0
	call _emit_jump_insn,0
	nop
	call _emit_barrier,0
	nop
L4:
	ret
	restore
	.align 4
	.global _expand_label
	.proc	020
_expand_label:
	!#PROLOGUE# 0
	save %sp,-120,%sp
	!#PROLOGUE# 1
	st %i0,[%fp+68]
	call _do_pending_stack_adjust,0
	nop
	ld [%fp+68],%o0
	call _label_rtx,0
	nop
	mov %o0,%o1
	mov %o1,%o0
	call _emit_label,0
	nop
	sethi %hi(_stack_block_stack),%o0
	ld [%o0+%lo(_stack_block_stack)],%o1
	cmp %o1,0
	be L6
	nop
	mov 8,%o0
	call _oballoc,0
	nop
	st %o0,[%fp-20]
	ld [%fp-20],%o0
	sethi %hi(_stack_block_stack),%o2
	ld [%o2+%lo(_stack_block_stack)],%o1
	ld [%o1+36],%o2
	st %o2,[%o0]
	sethi %hi(_stack_block_stack),%o1
	ld [%o1+%lo(_stack_block_stack)],%o0
	ld [%fp-20],%o1
	st %o1,[%o0+36]
	ld [%fp-20],%o0
	ld [%fp+68],%o1
	st %o1,[%o0+4]
L6:
L5:
	ret
	restore
	.align 4
	.global _expand_goto
	.proc	020
_expand_goto:
	!#PROLOGUE# 0
	save %sp,-112,%sp
	!#PROLOGUE# 1
	st %i0,[%fp+68]
	ld [%fp+68],%o0
	call _label_rtx,0
	nop
	mov %o0,%o1
	ld [%fp+68],%o0
	mov 0,%o2
	call _expand_goto_internal,0
	nop
L7:
	ret
	restore
	.align 8
LC0:
	.ascii "jump to `%s' invalidly jumps into binding contour\0"
	.align 4
	.proc	020
_expand_goto_internal:
	!#PROLOGUE# 0
	save %sp,-120,%sp
	!#PROLOGUE# 1
	st %i0,[%fp+68]
	st %i1,[%fp+72]
	st %i2,[%fp+76]
	st %g0,[%fp-24]
	ld [%fp+72],%o0
	lduh [%o0],%o1
	sll %o1,16,%o2
	srl %o2,16,%o0
	cmp %o0,17
	be L9
	nop
	call _abort,0
	nop
L9:
	ld [%fp+72],%o0
	ld [%o0+8],%o1
	cmp %o1,0
	be L10
	nop
	sethi %hi(_block_stack),%o0
	ld [%o0+%lo(_block_stack)],%o1
	st %o1,[%fp-20]
L11:
	ld [%fp-20],%o0
	cmp %o0,0
	be L12
	nop
	ld [%fp-20],%o0
	ld [%o0+20],%o1
	ld [%fp+72],%o0
	ld [%o1+4],%o1
	ld [%o0+4],%o0
	cmp %o1,%o0
	bge L14
	nop
	b L12
	nop
L14:
	ld [%fp-20],%o0
	ld [%o0+16],%o1
	cmp %o1,0
	be L15
	nop
	ld [%fp-20],%o0
	ld [%o0+16],%o1
	st %o1,[%fp-24]
L15:
	ld [%fp-20],%o0
	ld [%o0+28],%o1
	cmp %o1,0
	be L16
	nop
	ld [%fp-20],%o1
	ld [%o1+28],%o0
	mov 0,%o1
	call _expand_cleanups,0
	nop
L16:
L13:
	ld [%fp-20],%o0
	ld [%o0+4],%o1
	st %o1,[%fp-20]
	b L11
	nop
L12:
	ld [%fp-24],%o0
	cmp %o0,0
	be L17
	nop
	sethi %hi(_stack_pointer_rtx),%o1
	ld [%o1+%lo(_stack_pointer_rtx)],%o0
	ld [%fp-24],%o1
	call _emit_move_insn,0
	nop
L17:
	ld [%fp+68],%o0
	cmp %o0,0
	be L18
	nop
	ld [%fp+68],%o0
	ld [%o0+12],%o1
	sethi %hi(524288),%o2
	and %o1,%o2,%o0
	cmp %o0,0
	be L18
	nop
	ld [%fp+68],%o0
	ld [%o0+36],%o1
	sethi %hi(LC0),%o2
	or %o2,%lo(LC0),%o0
	ld [%o1+20],%o1
	call _error,0
	nop
L18:
	b L19
	nop
L10:
	ld [%fp+68],%o0
	ld [%fp+72],%o1
	ld [%fp+76],%o2
	call _expand_fixup,0
	nop
	cmp %o0,0
	bne L20
	nop
	ld [%fp+68],%o0
	cmp %o0,0
	be L21
	nop
	ld [%fp+68],%o0
	ld [%o0+12],%o1
	sethi %hi(16384),%o2
	or %o1,%o2,%o1
	st %o1,[%o0+12]
L21:
L20:
L19:
	ld [%fp+72],%o0
	call _emit_jump,0
	nop
L8:
	ret
	restore
	.align 4
	.proc	04
_expand_fixup:
	!#PROLOGUE# 0
	save %sp,-128,%sp
	!#PROLOGUE# 1
	st %i0,[%fp+68]
	st %i1,[%fp+72]
	st %i2,[%fp+76]
	sethi %hi(_cond_stack),%o0
	ld [%o0+%lo(_cond_stack)],%o1
	cmp %o1,0
	be L23
	nop
	sethi %hi(_cond_stack),%o1
	ld [%o1+%lo(_cond_stack)],%o0
	ld [%fp+72],%o1
	ld [%o0+16],%o0
	cmp %o1,%o0
	be L24
	nop
	sethi %hi(_cond_stack),%o1
	ld [%o1+%lo(_cond_stack)],%o0
	ld [%fp+72],%o1
	ld [%o0+20],%o0
	cmp %o1,%o0
	be L24
	nop
	b L23
	nop
L24:
	sethi %hi(_cond_stack),%o0
	ld [%o0+%lo(_cond_stack)],%o1
	st %o1,[%fp-24]
	b L25
	nop
L23:
	sethi %hi(_loop_stack),%o0
	ld [%o0+%lo(_loop_stack)],%o1
	cmp %o1,0
	be L26
	nop
	sethi %hi(_loop_stack),%o1
	ld [%o1+%lo(_loop_stack)],%o0
	ld [%fp+72],%o1
	ld [%o0+16],%o0
	cmp %o1,%o0
	be L27
	nop
	sethi %hi(_loop_stack),%o1
	ld [%o1+%lo(_loop_stack)],%o0
	ld [%fp+72],%o1
	ld [%o0+20],%o0
	cmp %o1,%o0
	be L27
	nop
	sethi %hi(_loop_stack),%o1
	ld [%o1+%lo(_loop_stack)],%o0
	ld [%fp+72],%o1
	ld [%o0+24],%o0
	cmp %o1,%o0
	be L27
	nop
	b L26
	nop
L27:
	sethi %hi(_loop_stack),%o0
	ld [%o0+%lo(_loop_stack)],%o1
	st %o1,[%fp-24]
	b L28
	nop
L26:
	st %g0,[%fp-24]
L28:
L25:
	ld [%fp-24],%o0
	cmp %o0,0
	be L29
	nop
	ld [%fp-24],%o0
	ld [%o0],%o1
	st %o1,[%fp-28]
	sethi %hi(_block_stack),%o0
	ld [%o0+%lo(_block_stack)],%o1
	st %o1,[%fp-20]
L30:
	ld [%fp-28],%o0
	cmp %o0,0
	be L31
	nop
	ld [%fp-28],%o0
	ld [%fp-20],%o1
	cmp %o0,%o1
	be L31
	nop
	ld [%fp-28],%o0
	ld [%o0],%o1
	st %o1,[%fp-28]
	b L30
	nop
L31:
	ld [%fp-28],%o0
	cmp %o0,0
	be L32
	nop
	mov 0,%i0
	b L22
	nop
L32:
	sethi %hi(_block_stack),%o1
	ld [%o1+%lo(_block_stack)],%o0
	ld [%o0+4],%o1
	st %o1,[%fp-28]
	sethi %hi(_block_stack),%o0
	ld [%o0+%lo(_block_stack)],%o1
	st %o1,[%fp-20]
L33:
	ld [%fp-20],%o0
	ld [%fp-24],%o1
	cmp %o0,%o1
	be L34
	nop
	ld [%fp-20],%o0
	ld [%fp-28],%o1
	cmp %o0,%o1
	bne L36
	nop
	ld [%fp-28],%o0
	ld [%o0+4],%o1
	st %o1,[%fp-28]
L36:
L35:
	ld [%fp-20],%o0
	ld [%o0],%o1
	st %o1,[%fp-20]
	b L33
	nop
L34:
	ld [%fp-28],%o0
	st %o0,[%fp-24]
L29:
	nop
	sethi %hi(_block_stack),%o0
	ld [%o0+%lo(_block_stack)],%o1
	st %o1,[%fp-20]
L37:
	ld [%fp-20],%o0
	ld [%fp-24],%o1
	cmp %o0,%o1
	be L38
	nop
	ld [%fp-20],%o0
	ld [%o0+16],%o1
	cmp %o1,0
	bne L41
	nop
	ld [%fp-20],%o0
	ld [%o0+28],%o1
	cmp %o1,0
	bne L41
	nop
	b L40
	nop
L41:
	b L38
	nop
L40:
L39:
	ld [%fp-20],%o0
	ld [%o0+4],%o1
	st %o1,[%fp-20]
	b L37
	nop
L38:
	ld [%fp-20],%o0
	ld [%fp-24],%o1
	cmp %o0,%o1
	be L42
	nop
	mov 24,%o0
	call _oballoc,0
	nop
	st %o0,[%fp-28]
	call _do_pending_stack_adjust,0
	nop
	ld [%fp-28],%l0
	ld [%fp+76],%l1
	ld [%fp+76],%o0
	cmp %o0,0
	bne L43
	nop
	call _get_last_insn,0
	nop
	mov %o0,%l1
L43:
	st %l1,[%l0+4]
	ld [%fp-28],%o0
	ld [%fp+68],%o1
	st %o1,[%o0+8]
	ld [%fp-28],%o0
	ld [%fp+72],%o1
	st %o1,[%o0+12]
	ld [%fp-28],%o0
	st %g0,[%o0+16]
	ld [%fp-28],%l0
	ld [%fp-20],%o0
	ld [%o0+32],%o1
	cmp %o1,0
	bne L46
	nop
	ld [%fp-20],%o0
	ld [%o0+28],%o1
	cmp %o1,0
	bne L46
	nop
	b L44
	nop
L46:
	ld [%fp-20],%o1
	ld [%fp-20],%o2
	mov 0,%o0
	ld [%o1+28],%o1
	ld [%o2+32],%o2
	call _tree_cons,0
	nop
	b L45
	nop
L44:
	mov 0,%o0
L45:
	st %o0,[%l0+20]
	ld [%fp-28],%o0
	sethi %hi(_goto_fixup_chain),%o1
	ld [%o1+%lo(_goto_fixup_chain)],%o2
	st %o2,[%o0]
	sethi %hi(_goto_fixup_chain),%o0
	ld [%fp-28],%o1
	st %o1,[%o0+%lo(_goto_fixup_chain)]
L42:
	ld [%fp-20],%o0
	xor %o0,0,%o1
	subcc %g0,%o1,%g0
	addx %g0,0,%o0
	mov %o0,%i0
	b L22
	nop
L22:
	ret
	restore
	.align 8
LC1:
	.ascii "label `%s' used before containing binding contour\0"
	.align 4
	.proc	020
_fixup_gotos:
	!#PROLOGUE# 0
	save %sp,-120,%sp
	!#PROLOGUE# 1
	st %i0,[%fp+68]
	st %i1,[%fp+72]
	st %i2,[%fp+76]
	st %i3,[%fp+80]
	st %i4,[%fp+84]
	mov 0,%l1
	sethi %hi(_goto_fixup_chain),%o0
	ld [%o0+%lo(_goto_fixup_chain)],%l0
L48:
	cmp %l0,0
	be L49
	nop
	ld [%l0+4],%o0
	cmp %o0,0
	bne L51
	nop
	cmp %l1,0
	be L52
	nop
	ld [%l0],%o0
	st %o0,[%l1]
L52:
	b L53
	nop
L51:
	ld [%l0+12],%o0
	ld [%o0+8],%o1
	cmp %o1,0
	be L54
	nop
	ld [%l0+8],%o0
	cmp %o0,0
	be L55
	nop
	ld [%fp+84],%o0
	cmp %o0,0
	bne L56
	nop
	ld [%fp+72],%o0
	cmp %o0,0
	bne L56
	nop
	ld [%fp+76],%o0
	cmp %o0,0
	bne L56
	nop
	b L55
	nop
L56:
	ld [%fp+80],%o0
	ld [%l0+4],%o1
	ld [%o0+4],%o0
	ld [%o1+4],%o1
	cmp %o0,%o1
	ble L55
	nop
	ld [%l0+8],%o0
	ld [%o0+12],%o1
	sethi %hi(16384),%o2
	and %o1,%o2,%o0
	cmp %o0,0
	bne L55
	nop
	ld [%l0+8],%o0
	sethi %hi(LC1),%o2
	or %o2,%lo(LC1),%o1
	call _error_with_decl,0
	nop
	ld [%l0+8],%o0
	ld [%o0+12],%o1
	sethi %hi(16384),%o2
	or %o1,%o2,%o1
	st %o1,[%o0+12]
L55:
	ld [%l0+20],%o0
	cmp %o0,0
	be L57
	nop
	ld [%l0+20],%o0
	st %o0,[%fp-20]
L58:
	ld [%fp-20],%o0
	cmp %o0,0
	be L59
	nop
	ld [%fp-20],%o0
	ld [%o0+12],%o1
	sethi %hi(16384),%o2
	and %o1,%o2,%o0
	cmp %o0,0
	be L61
	nop
	ld [%fp-20],%o0
	ld [%o0+20],%o1
	cmp %o1,0
	be L61
	nop
	ld [%fp-20],%o0
	add %l0,4,%o1
	ld [%o0+20],%o0
	call _fixup_cleanups,0
	nop
L61:
L60:
	ld [%fp-20],%o0
	ld [%o0+4],%o1
	st %o1,[%fp-20]
	b L58
	nop
L59:
L57:
	ld [%l0+16],%o0
	cmp %o0,0
	be L62
	nop
	sethi %hi(_stack_pointer_rtx),%o1
	ld [%o1+%lo(_stack_pointer_rtx)],%o0
	ld [%l0+16],%o1
	call _gen_move_insn,0
	nop
	mov %o0,%o1
	mov %o1,%o0
	ld [%l0+4],%o1
	call _emit_insn_after,0
	nop
L62:
	st %g0,[%l0+4]
	b L63
	nop
L54:
	ld [%fp+68],%o0
	cmp %o0,0
	be L64
	nop
	ld [%l0+20],%o0
	st %o0,[%fp-20]
L65:
	ld [%fp-20],%o0
	cmp %o0,0
	be L66
	nop
	ld [%fp-20],%o0
	ld [%fp+68],%o1
	ld [%o0+4],%o0
	ld [%o1+32],%o1
	cmp %o0,%o1
	bne L68
	nop
	ld [%fp-20],%o0
	ld [%o0+12],%o1
	sethi %hi(16384),%o2
	or %o1,%o2,%o1
	st %o1,[%o0+12]
L68:
L67:
	ld [%fp-20],%o0
	ld [%o0+4],%o1
	st %o1,[%fp-20]
	b L65
	nop
L66:
	ld [%fp+72],%o0
	cmp %o0,0
	be L69
	nop
	ld [%fp+72],%o0
	st %o0,[%l0+16]
L69:
L64:
L63:
L53:
L50:
	mov %l0,%l1
	ld [%l0],%l0
	b L48
	nop
L49:
L47:
	ret
	restore
	.align 4
	.global _expand_asm
	.proc	020
_expand_asm:
	!#PROLOGUE# 0
	save %sp,-112,%sp
	!#PROLOGUE# 1
	st %i0,[%fp+68]
	ld [%fp+68],%o2
	mov 21,%o0
	mov 0,%o1
	ld [%o2+24],%o2
	call _gen_rtx,0
	nop
	mov %o0,%o1
	mov %o1,%o0
	call _emit_insn,0
	nop
	sethi %hi(_last_expr_type),%o0
	st %g0,[%o0+%lo(_last_expr_type)]
L70:
	ret
	restore
	.align 8
LC2:
	.ascii "input operand constraint contains `+'\0"
	.align 8
LC3:
	.ascii "output operand constraint lacks `='\0"
	.align 8
LC4:
	.ascii "more than %d operands in `asm'\0"
	.align 8
LC5:
	.ascii "\0"
	.align 8
LC6:
	.ascii "hard register `%s' listed as input operand to `asm'\0"
	.align 8
LC7:
	.ascii "input operand constraint contains `%c'\0"
	.align 8
LC8:
	.ascii "unknown register name `%s' in `asm'\0"
	.align 4
	.global _expand_asm_operands
	.proc	020
_expand_asm_operands:
	!#PROLOGUE# 0
	save %sp,-192,%sp
	!#PROLOGUE# 1
	st %i0,[%fp+68]
	st %i1,[%fp+72]
	st %i2,[%fp+76]
	st %i3,[%fp+80]
	st %i4,[%fp+84]
	st %i5,[%fp+88]
	ld [%fp+76],%o0
	call _list_length,0
	nop
	st %o0,[%fp-32]
	ld [%fp+72],%o0
	call _list_length,0
	nop
	st %o0,[%fp-36]
	ld [%fp+80],%o0
	call _list_length,0
	nop
	st %o0,[%fp-40]
	ld [%fp-36],%o0
	mov %o0,%o1
	sll %o1,2,%o2
	add %o2,7,%o0
	add %sp,108,%o2
	sub %o2,%sp,%o1
	add %o0,%o1,%o2
	mov %o2,%o0
	add %o0,7,%o0
	srl %o0,3,%o1
	mov %o1,%o0
	sll %o0,3,%o1
	sub %sp,%o1,%sp
	add %sp,108,%o1
	mov %o1,%o0
	add %o0,7,%o0
	srl %o0,3,%o1
	mov %o1,%o0
	sll %o0,3,%o1
	st %o1,[%fp-48]
	sethi %hi(_last_expr_type),%o0
	st %g0,[%o0+%lo(_last_expr_type)]
	mov 0,%l0
	ld [%fp+72],%o0
	st %o0,[%fp-44]
L72:
	ld [%fp-44],%o0
	cmp %o0,0
	be L73
	nop
	ld [%fp-44],%o0
	ld [%o0+20],%o1
	st %o1,[%fp-56]
	ld [%fp-56],%o0
	sethi %hi(_error_mark_node),%o1
	ld [%o0+8],%o0
	ld [%o1+%lo(_error_mark_node)],%o1
	cmp %o0,%o1
	bne L75
	nop
	b L71
	nop
L75:
	st %g0,[%fp-64]
	st %g0,[%fp-60]
L76:
	ld [%fp-44],%o0
	ld [%o0+16],%o1
	ld [%fp-60],%o0
	ld [%o1+20],%o1
	cmp %o0,%o1
	bge L77
	nop
	ld [%fp-44],%o0
	ld [%o0+16],%o1
	ld [%o1+24],%o0
	ld [%fp-60],%o1
	add %o0,%o1,%o0
	ldub [%o0],%o1
	sll %o1,24,%o2
	sra %o2,24,%o0
	cmp %o0,43
	bne L79
	nop
	sethi %hi(LC2),%o1
	or %o1,%lo(LC2),%o0
	call _error,0
	nop
	b L71
	nop
L79:
	ld [%fp-44],%o0
	ld [%o0+16],%o1
	ld [%o1+24],%o0
	ld [%fp-60],%o1
	add %o0,%o1,%o0
	ldub [%o0],%o1
	sll %o1,24,%o2
	sra %o2,24,%o0
	cmp %o0,61
	bne L80
	nop
	mov 1,%o0
	st %o0,[%fp-64]
L80:
L78:
	ld [%fp-60],%o1
	add %o1,1,%o0
	mov %o0,%o1
	st %o1,[%fp-60]
	b L76
	nop
L77:
	ld [%fp-64],%o0
	cmp %o0,0
	bne L81
	nop
	sethi %hi(LC3),%o1
	or %o1,%lo(LC3),%o0
	call _error,0
	nop
	b L71
	nop
L81:
	ld [%fp-56],%o0
	ldub [%o0+12],%o1
	and %o1,0xff,%o0
	cmp %o0,43
	be L82
	nop
	ld [%fp-56],%o0
	ldub [%o0+12],%o1
	and %o1,0xff,%o0
	cmp %o0,44
	be L82
	nop
	ld [%fp-56],%o0
	ldub [%o0+12],%o1
	and %o1,0xff,%o0
	cmp %o0,49
	be L82
	nop
	ld [%fp-56],%o0
	ld [%o0+8],%o1
	ldub [%o1+28],%o0
	and %o0,0xff,%o1
	mov %o1,%o0
	call _gen_reg_rtx,0
	nop
	st %o0,[%fp-68]
	mov 112,%o0
	ld [%fp-56],%o1
	ld [%fp-68],%o2
	call _build_nt,0
	nop
	st %o0,[%fp-72]
	sethi %hi(_save_expr_regs),%o3
	mov 2,%o0
	mov 0,%o1
	ld [%fp-68],%o2
	ld [%o3+%lo(_save_expr_regs)],%o3
	call _gen_rtx,0
	nop
	sethi %hi(_save_expr_regs),%o1
	st %o0,[%o1+%lo(_save_expr_regs)]
	ld [%fp-44],%o0
	ld [%fp-72],%o1
	st %o1,[%o0+20]
	ld [%fp-72],%o0
	ld [%fp-56],%o1
	ld [%o1+8],%o2
	st %o2,[%o0+8]
L82:
	ld [%fp-44],%o1
	ld [%o1+20],%o0
	mov 0,%o1
	mov 0,%o2
	mov 0,%o3
	call _expand_expr,0
	nop
	mov %l0,%o1
	sll %o1,2,%o2
	ld [%fp-48],%o3
	add %o2,%o3,%o1
	st %o0,[%o1]
L74:
	ld [%fp-44],%o0
	ld [%o0+4],%o1
	st %o1,[%fp-44]
	add %l0,1,%l0
	b L72
	nop
L73:
	ld [%fp-32],%o0
	ld [%fp-36],%o1
	add %o0,%o1,%o0
	cmp %o0,5
	ble L83
	nop
	sethi %hi(LC4),%o1
	or %o1,%lo(LC4),%o0
	mov 5,%o1
	call _error,0
	nop
	b L71
	nop
L83:
	ld [%fp-32],%o0
	call _rtvec_alloc,0
	nop
	st %o0,[%fp-20]
	ld [%fp-32],%o0
	call _rtvec_alloc,0
	nop
	st %o0,[%fp-24]
	ld [%fp+68],%o2
	ld [%fp-24],%o0
	st %o0,[%sp+92]
	ld [%fp+88],%o0
	st %o0,[%sp+96]
	ld [%fp+92],%o0
	st %o0,[%sp+100]
	mov 22,%o0
	mov 0,%o1
	ld [%o2+24],%o2
	sethi %hi(LC5),%o4
	or %o4,%lo(LC5),%o3
	mov 0,%o4
	ld [%fp-20],%o5
	call _gen_rtx,0
	nop
	st %o0,[%fp-28]
	ld [%fp-28],%o0
	ld [%fp+84],%o1
	and %o1,1,%o2
	sll %o2,4,%o1
	ld [%o0],%o3
	and %o3,-17,%o2
	or %o2,%o1,%o2
	st %o2,[%o0]
	mov 0,%l0
	ld [%fp+76],%o0
	st %o0,[%fp-44]
L84:
	ld [%fp-44],%o0
	cmp %o0,0
	be L85
	nop
	ld [%fp-44],%o0
	ld [%o0+20],%o1
	sethi %hi(_error_mark_node),%o0
	ld [%o1+8],%o1
	ld [%o0+%lo(_error_mark_node)],%o0
	cmp %o1,%o0
	bne L87
	nop
	b L71
	nop
L87:
	ld [%fp-44],%o0
	ld [%o0+16],%o1
	cmp %o1,0
	bne L88
	nop
	ld [%fp-44],%o0
	ld [%o0+20],%o1
	sethi %hi(LC6),%o2
	or %o2,%lo(LC6),%o0
	ld [%o1+24],%o1
	call _error,0
	nop
	b L71
	nop
L88:
	nop
	st %g0,[%fp-72]
L89:
	ld [%fp-44],%o0
	ld [%o0+16],%o1
	ld [%fp-72],%o0
	ld [%o1+20],%o1
	cmp %o0,%o1
	bge L90
	nop
	ld [%fp-44],%o0
	ld [%o0+16],%o1
	ld [%o1+24],%o0
	ld [%fp-72],%o1
	add %o0,%o1,%o0
	ldub [%o0],%o1
	sll %o1,24,%o2
	sra %o2,24,%o0
	cmp %o0,61
	be L93
	nop
	ld [%fp-44],%o0
	ld [%o0+16],%o1
	ld [%o1+24],%o0
	ld [%fp-72],%o1
	add %o0,%o1,%o0
	ldub [%o0],%o1
	sll %o1,24,%o2
	sra %o2,24,%o0
	cmp %o0,43
	be L93
	nop
	b L92
	nop
L93:
	ld [%fp-44],%o0
	ld [%o0+16],%o1
	ld [%o1+24],%o0
	ld [%fp-72],%o1
	add %o0,%o1,%o0
	ldub [%o0],%o1
	sll %o1,24,%o0
	sra %o0,24,%o1
	sethi %hi(LC7),%o2
	or %o2,%lo(LC7),%o0
	call _error,0
	nop
	b L71
	nop
L92:
L91:
	ld [%fp-72],%o1
	add %o1,1,%o0
	mov %o0,%o1
	st %o1,[%fp-72]
	b L89
	nop
L90:
	ld [%fp-44],%o1
	ld [%o1+20],%o0
	mov 0,%o1
	mov 0,%o2
	mov 0,%o3
	call _expand_expr,0
	nop
	ld [%fp-28],%o2
	ld [%o2+16],%o1
	mov %l0,%o2
	sll %o2,2,%o3
	add %o1,%o3,%o1
	st %o0,[%o1+4]
	ld [%fp-44],%o0
	ld [%o0+20],%o1
	ld [%o1+8],%o0
	ldub [%o0+28],%o2
	and %o2,0xff,%o1
	ld [%fp-44],%o0
	ld [%o0+16],%o2
	mov 21,%o0
	ld [%o2+24],%o2
	call _gen_rtx,0
	nop
	ld [%fp-28],%o2
	ld [%o2+20],%o1
	mov %l0,%o2
	sll %o2,2,%o3
	add %o1,%o3,%o1
	st %o0,[%o1+4]
	add %l0,1,%l0
L86:
	ld [%fp-44],%o0
	ld [%o0+4],%o1
	st %o1,[%fp-44]
	b L84
	nop
L85:
	nop
	mov 0,%l0
L94:
	ld [%fp-32],%o0
	cmp %l0,%o0
	bge L95
	nop
	ld [%fp-28],%o1
	ld [%o1+16],%o0
	mov %l0,%o1
	sll %o1,2,%o2
	add %o0,%o2,%o1
	ld [%o1+4],%o0
	mov 0,%o1
	call _protect_from_queue,0
	nop
	ld [%fp-28],%o2
	ld [%o2+16],%o1
	mov %l0,%o2
	sll %o2,2,%o3
	add %o1,%o3,%o1
	st %o0,[%o1+4]
L96:
	add %l0,1,%l0
	b L94
	nop
L95:
	nop
	mov 0,%l0
L97:
	ld [%fp-36],%o0
	cmp %l0,%o0
	bge L98
	nop
	mov %l0,%o0
	sll %o0,2,%o1
	ld [%fp-48],%o0
	add %o1,%o0,%o1
	ld [%o1],%o0
	mov 1,%o1
	call _protect_from_queue,0
	nop
	mov %l0,%o1
	sll %o1,2,%o2
	ld [%fp-48],%o3
	add %o2,%o3,%o1
	st %o0,[%o1]
L99:
	add %l0,1,%l0
	b L97
	nop
L98:
	ld [%fp-36],%o0
	cmp %o0,1
	bne L100
	nop
	ld [%fp-40],%o0
	cmp %o0,0
	bne L100
	nop
	ld [%fp-28],%o0
	ld [%fp+72],%o1
	ld [%o1+16],%o2
	ld [%o2+24],%o1
	st %o1,[%o0+8]
	ld [%fp-48],%o2
	mov 25,%o0
	mov 0,%o1
	ld [%o2],%o2
	ld [%fp-28],%o3
	call _gen_rtx,0
	nop
	mov %o0,%o1
	mov %o1,%o0
	call _emit_insn,0
	nop
	st %o0,[%fp-52]
	b L101
	nop
L100:
	ld [%fp-36],%o0
	cmp %o0,0
	bne L102
	nop
	ld [%fp-40],%o0
	cmp %o0,0
	bne L102
	nop
	ld [%fp-28],%o0
	call _emit_insn,0
	nop
	st %o0,[%fp-52]
	b L103
	nop
L102:
	ld [%fp-28],%o0
	st %o0,[%fp-72]
	ld [%fp-36],%o0
	st %o0,[%fp-64]
	ld [%fp-64],%o0
	cmp %o0,0
	bne L104
	nop
	mov 1,%o0
	st %o0,[%fp-64]
L104:
	ld [%fp-64],%o0
	ld [%fp-40],%o2
	add %o0,%o2,%o1
	mov %o1,%o0
	call _rtvec_alloc,0
	nop
	mov %o0,%o2
	mov 20,%o0
	mov 0,%o1
	call _gen_rtx,0
	nop
	st %o0,[%fp-28]
	mov 0,%l0
	ld [%fp+72],%o0
	st %o0,[%fp-44]
L105:
	ld [%fp-44],%o0
	cmp %o0,0
	be L106
	nop
	mov %l0,%o0
	sll %o0,2,%o1
	ld [%fp-48],%o0
	add %o1,%o0,%l1
	ld [%fp+68],%o2
	ld [%fp-44],%o0
	ld [%o0+16],%o3
	ld [%fp-24],%o0
	st %o0,[%sp+92]
	ld [%fp+88],%o0
	st %o0,[%sp+96]
	ld [%fp+92],%o0
	st %o0,[%sp+100]
	mov 22,%o0
	mov 0,%o1
	ld [%o2+24],%o2
	ld [%o3+24],%o3
	mov %l0,%o4
	ld [%fp-20],%o5
	call _gen_rtx,0
	nop
	mov %o0,%o3
	mov 25,%o0
	mov 0,%o1
	ld [%l1],%o2
	call _gen_rtx,0
	nop
	ld [%fp-28],%o2
	ld [%o2+4],%o1
	mov %l0,%o2
	sll %o2,2,%o3
	add %o1,%o3,%o1
	st %o0,[%o1+4]
	ld [%fp-28],%o1
	ld [%o1+4],%o0
	mov %l0,%o1
	sll %o1,2,%o2
	add %o0,%o2,%o0
	ld [%o0+4],%o1
	ld [%o1+8],%o0
	ld [%fp+84],%o1
	and %o1,1,%o2
	sll %o2,4,%o1
	ld [%o0],%o3
	and %o3,-17,%o2
	or %o2,%o1,%o2
	st %o2,[%o0]
L107:
	ld [%fp-44],%o0
	ld [%o0+4],%o1
	st %o1,[%fp-44]
	add %l0,1,%l0
	b L105
	nop
L106:
	cmp %l0,0
	bne L108
	nop
	ld [%fp-28],%o1
	ld [%o1+4],%o0
	mov %l0,%o1
	sll %o1,2,%o2
	add %o0,%o2,%o0
	ld [%fp-72],%o1
	st %o1,[%o0+4]
	add %l0,1,%l0
L108:
	nop
	ld [%fp+80],%o0
	st %o0,[%fp-44]
L109:
	ld [%fp-44],%o0
	cmp %o0,0
	be L110
	nop
	ld [%fp-44],%o0
	ld [%o0+20],%o1
	ld [%o1+24],%o0
	st %o0,[%fp-76]
	st %g0,[%fp-60]
L112:
	ld [%fp-60],%o0
	cmp %o0,55
	bg L113
	nop
	ld [%fp-60],%o0
	mov %o0,%o2
	sll %o2,2,%o1
	sethi %hi(_reg_names),%o0
	or %o0,%lo(_reg_names),%o2
	ld [%fp-76],%o0
	ld [%o1+%o2],%o1
	call _strcmp,0
	nop
	cmp %o0,0
	bne L115
	nop
	b L113
	nop
L115:
L114:
	ld [%fp-60],%o1
	add %o1,1,%o0
	mov %o0,%o1
	st %o1,[%fp-60]
	b L112
	nop
L113:
	ld [%fp-60],%o0
	cmp %o0,56
	bne L116
	nop
	sethi %hi(LC8),%o1
	or %o1,%lo(LC8),%o0
	ld [%fp-76],%o1
	call _error,0
	nop
	b L71
	nop
L116:
	mov 34,%o0
	mov 1,%o1
	ld [%fp-60],%o2
	call _gen_rtx,0
	nop
	mov %o0,%o2
	mov 27,%o0
	mov 0,%o1
	call _gen_rtx,0
	nop
	ld [%fp-28],%o2
	ld [%o2+4],%o1
	mov %l0,%o2
	sll %o2,2,%o3
	add %o1,%o3,%o1
	st %o0,[%o1+4]
L111:
	ld [%fp-44],%o0
	ld [%o0+4],%o1
	st %o1,[%fp-44]
	add %l0,1,%l0
	b L109
	nop
L110:
	ld [%fp-28],%o0
	call _emit_insn,0
	nop
	st %o0,[%fp-52]
L103:
L101:
	sethi %hi(_last_expr_type),%o0
	st %g0,[%o0+%lo(_last_expr_type)]
L71:
	ret
	restore
	.align 8
LC9:
	.ascii "statement with no effect\0"
	.align 4
	.global _expand_expr_stmt
	.proc	020
_expand_expr_stmt:
	!#PROLOGUE# 0
	save %sp,-112,%sp
	!#PROLOGUE# 1
	st %i0,[%fp+68]
	sethi %hi(_extra_warnings),%o0
	ld [%o0+%lo(_extra_warnings)],%o1
	cmp %o1,0
	be L118
	nop
	sethi %hi(_expr_stmts_for_value),%o0
	ld [%o0+%lo(_expr_stmts_for_value)],%o1
	cmp %o1,0
	bne L118
	nop
	ld [%fp+68],%o0
	ld [%o0+12],%o1
	sethi %hi(1048576),%o2
	and %o1,%o2,%o0
	cmp %o0,0
	bne L118
	nop
	sethi %hi(_error_mark_node),%o0
	ld [%fp+68],%o1
	ld [%o0+%lo(_error_mark_node)],%o0
	cmp %o1,%o0
	be L118
	nop
	sethi %hi(_emit_filename),%o0
	sethi %hi(_emit_lineno),%o1
	ld [%o0+%lo(_emit_filename)],%o0
	ld [%o1+%lo(_emit_lineno)],%o1
	sethi %hi(LC9),%o3
	or %o3,%lo(LC9),%o2
	call _warning_with_file_and_line,0
	nop
L118:
	sethi %hi(_last_expr_type),%o0
	ld [%fp+68],%o1
	ld [%o1+8],%o2
	st %o2,[%o0+%lo(_last_expr_type)]
	sethi %hi(_flag_syntax_only),%o0
	ld [%o0+%lo(_flag_syntax_only)],%o1
	cmp %o1,0
	bne L119
	nop
	sethi %hi(_expr_stmts_for_value),%o0
	ld [%o0+%lo(_expr_stmts_for_value)],%o1
	cmp %o1,0
	bne L120
	nop
	sethi %hi(_const0_rtx),%o0
	ld [%o0+%lo(_const0_rtx)],%o1
	b L121
	nop
L120:
	mov 0,%o1
L121:
	ld [%fp+68],%o0
	mov 0,%o2
	mov 0,%o3
	call _expand_expr,0
	nop
	sethi %hi(_last_expr_value),%o1
	st %o0,[%o1+%lo(_last_expr_value)]
L119:
	call _emit_queue,0
	nop
L117:
	ret
	restore
	.align 4
	.global _clear_last_expr
	.proc	020
_clear_last_expr:
	!#PROLOGUE# 0
	save %sp,-112,%sp
	!#PROLOGUE# 1
	sethi %hi(_last_expr_type),%o0
	st %g0,[%o0+%lo(_last_expr_type)]
L122:
	ret
	restore
	.align 4
	.global _expand_start_stmt_expr
	.proc	0111
_expand_start_stmt_expr:
	!#PROLOGUE# 0
	save %sp,-128,%sp
	!#PROLOGUE# 1
	call _start_sequence,0
	nop
	st %o0,[%fp-20]
	call _suspend_momentary,0
	nop
	st %o0,[%fp-24]
	mov 113,%o0
	call _make_node,0
	nop
	st %o0,[%fp-28]
	ld [%fp-24],%o0
	call _resume_momentary,0
	nop
	mov 24,%o0
	ld [%fp-28],%o1
	add %o0,%o1,%o0
	ld [%fp-20],%o1
	st %o1,[%o0]
	sethi %hi(_expr_stmts_for_value),%o1
	sethi %hi(_expr_stmts_for_value),%o0
	sethi %hi(_expr_stmts_for_value),%o1
	ld [%o1+%lo(_expr_stmts_for_value)],%o2
	add %o2,1,%o1
	mov %o1,%o2
	st %o2,[%o0+%lo(_expr_stmts_for_value)]
	ld [%fp-28],%i0
	b L123
	nop
L123:
	ret
	restore
	.align 4
	.global _expand_end_stmt_expr
	.proc	0111
_expand_end_stmt_expr:
	!#PROLOGUE# 0
	save %sp,-120,%sp
	!#PROLOGUE# 1
	st %i0,[%fp+68]
	mov 24,%o0
	ld [%fp+68],%o1
	add %o0,%o1,%o0
	ld [%o0],%o1
	st %o1,[%fp-20]
	call _do_pending_stack_adjust,0
	nop
	sethi %hi(_last_expr_type),%o0
	ld [%o0+%lo(_last_expr_type)],%o1
	cmp %o1,0
	bne L125
	nop
	sethi %hi(_last_expr_type),%o0
	sethi %hi(_void_type_node),%o1
	ld [%o1+%lo(_void_type_node)],%o2
	st %o2,[%o0+%lo(_last_expr_type)]
	sethi %hi(_last_expr_value),%o0
	sethi %hi(_const0_rtx),%o1
	ld [%o1+%lo(_const0_rtx)],%o2
	st %o2,[%o0+%lo(_last_expr_value)]
L125:
	ld [%fp+68],%o0
	sethi %hi(_last_expr_type),%o1
	ld [%o1+%lo(_last_expr_type)],%o2
	st %o2,[%o0+8]
	mov 24,%o0
	ld [%fp+68],%o1
	add %o0,%o1,%o0
	sethi %hi(_last_expr_value),%o1
	ld [%o1+%lo(_last_expr_value)],%o2
	st %o2,[%o0]
	call _get_insns,0
	nop
	mov 20,%o1
	ld [%fp+68],%o2
	add %o1,%o2,%o1
	st %o0,[%o1]
	sethi %hi(_rtl_expr_chain),%o2
	mov 0,%o0
	ld [%fp+68],%o1
	ld [%o2+%lo(_rtl_expr_chain)],%o2
	call _tree_cons,0
	nop
	sethi %hi(_rtl_expr_chain),%o1
	st %o0,[%o1+%lo(_rtl_expr_chain)]
	ld [%fp-20],%o0
	call _end_sequence,0
	nop
	ld [%fp+68],%o0
	ld [%o0+12],%o1
	sethi %hi(1048576),%o2
	or %o1,%o2,%o1
	st %o1,[%o0+12]
	sethi %hi(_last_expr_value),%o1
	ld [%o1+%lo(_last_expr_value)],%o0
	call _volatile_refs_p,0
	nop
	mov %o0,%o1
	ld [%fp+68],%o0
	and %o1,1,%o2
	sll %o2,12,%o1
	ld [%o0+12],%o2
	sethi %hi(-4097),%o4
	or %o4,%lo(-4097),%o3
	and %o2,%o3,%o2
	or %o2,%o1,%o2
	st %o2,[%o0+12]
	sethi %hi(_last_expr_type),%o0
	st %g0,[%o0+%lo(_last_expr_type)]
	sethi %hi(_expr_stmts_for_value),%o1
	sethi %hi(_expr_stmts_for_value),%o0
	sethi %hi(_expr_stmts_for_value),%o1
	ld [%o1+%lo(_expr_stmts_for_value)],%o2
	add %o2,-1,%o1
	mov %o1,%o2
	st %o2,[%o0+%lo(_expr_stmts_for_value)]
	ld [%fp+68],%i0
	b L124
	nop
L124:
	ret
	restore
	.align 4
	.global _expand_start_cond
	.proc	020
_expand_start_cond:
	!#PROLOGUE# 0
	save %sp,-120,%sp
	!#PROLOGUE# 1
	st %i0,[%fp+68]
	st %i1,[%fp+72]
	mov 40,%o0
	call _xmalloc,0
	nop
	st %o0,[%fp-20]
	ld [%fp-20],%o0
	sethi %hi(_cond_stack),%o1
	ld [%o1+%lo(_cond_stack)],%o2
	st %o2,[%o0+4]
	ld [%fp-20],%o0
	sethi %hi(_nesting_stack),%o1
	ld [%o1+%lo(_nesting_stack)],%o2
	st %o2,[%o0]
	ld [%fp-20],%o0
	sethi %hi(_nesting_depth),%o2
	sethi %hi(_nesting_depth),%o1
	sethi %hi(_nesting_depth),%o2
	ld [%o2+%lo(_nesting_depth)],%o3
	add %o3,1,%o2
	mov %o2,%o3
	st %o3,[%o1+%lo(_nesting_depth)]
	st %o3,[%o0+8]
	ld [%fp-20],%o0
	st %g0,[%o0+20]
	call _gen_label_rtx,0
	nop
	ld [%fp-20],%o1
	st %o0,[%o1+16]
	ld [%fp-20],%o0
	ld [%fp+72],%o1
	cmp %o1,0
	be L127
	nop
	ld [%fp-20],%o2
	ld [%o2+16],%o1
	b L128
	nop
L127:
	mov 0,%o1
L128:
	st %o1,[%o0+12]
	sethi %hi(_cond_stack),%o0
	ld [%fp-20],%o1
	st %o1,[%o0+%lo(_cond_stack)]
	sethi %hi(_nesting_stack),%o0
	ld [%fp-20],%o1
	st %o1,[%o0+%lo(_nesting_stack)]
	ld [%fp-20],%o1
	ld [%fp+68],%o0
	ld [%o1+16],%o1
	mov 0,%o2
	call _do_jump,0
	nop
L126:
	ret
	restore
	.align 4
	.global _expand_end_cond
	.proc	020
_expand_end_cond:
	!#PROLOGUE# 0
	save %sp,-128,%sp
	!#PROLOGUE# 1
	sethi %hi(_cond_stack),%o0
	ld [%o0+%lo(_cond_stack)],%o1
	st %o1,[%fp-20]
	call _do_pending_stack_adjust,0
	nop
	ld [%fp-20],%o1
	ld [%o1+16],%o0
	call _emit_label,0
	nop
L130:
	sethi %hi(_nesting_stack),%o1
	ld [%o1+%lo(_nesting_stack)],%o0
	ld [%o0+8],%o1
	st %o1,[%fp-24]
L133:
	sethi %hi(_cond_stack),%o0
	ld [%o0+%lo(_cond_stack)],%o1
	st %o1,[%fp-28]
	sethi %hi(_cond_stack),%o0
	ld [%fp-28],%o1
	ld [%o1+4],%o2
	st %o2,[%o0+%lo(_cond_stack)]
	sethi %hi(_nesting_stack),%o0
	ld [%fp-28],%o1
	ld [%o1],%o2
	st %o2,[%o0+%lo(_nesting_stack)]
	sethi %hi(_nesting_depth),%o0
	ld [%fp-28],%o1
	ld [%o1+8],%o2
	st %o2,[%o0+%lo(_nesting_depth)]
	ld [%fp-28],%o0
	call _free,0
	nop
L135:
	sethi %hi(_nesting_depth),%o0
	ld [%o0+%lo(_nesting_depth)],%o1
	ld [%fp-24],%o0
	cmp %o1,%o0
	ble L134
	nop
	b L133
	nop
L134:
L132:
	b L131
	nop
	b L130
	nop
L131:
	sethi %hi(_last_expr_type),%o0
	st %g0,[%o0+%lo(_last_expr_type)]
L129:
	ret
	restore
	.align 4
	.global _expand_start_else
	.proc	020
_expand_start_else:
	!#PROLOGUE# 0
	save %sp,-112,%sp
	!#PROLOGUE# 1
	call _gen_label_rtx,0
	nop
	sethi %hi(_cond_stack),%o2
	ld [%o2+%lo(_cond_stack)],%o1
	st %o0,[%o1+20]
	sethi %hi(_cond_stack),%o1
	ld [%o1+%lo(_cond_stack)],%o0
	ld [%o0+12],%o1
	cmp %o1,0
	be L137
	nop
	sethi %hi(_cond_stack),%o1
	ld [%o1+%lo(_cond_stack)],%o0
	sethi %hi(_cond_stack),%o2
	ld [%o2+%lo(_cond_stack)],%o1
	ld [%o1+20],%o2
	st %o2,[%o0+12]
L137:
	sethi %hi(_cond_stack),%o0
	ld [%o0+%lo(_cond_stack)],%o1
	ld [%o1+20],%o0
	call _emit_jump,0
	nop
	sethi %hi(_cond_stack),%o1
	ld [%o1+%lo(_cond_stack)],%o0
	ld [%o0+16],%o1
	cmp %o1,0
	be L138
	nop
	sethi %hi(_cond_stack),%o0
	ld [%o0+%lo(_cond_stack)],%o1
	ld [%o1+16],%o0
	call _emit_label,0
	nop
L138:
L136:
	ret
	restore
