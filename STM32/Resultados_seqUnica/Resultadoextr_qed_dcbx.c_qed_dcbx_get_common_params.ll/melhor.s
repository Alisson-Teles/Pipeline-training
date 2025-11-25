
/tmp/tmp.q5cmYAHyFJ/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<qed_hwfn:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<qed_dcbx_params:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<dcbx_ets_feature:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<dcbx_app_priority_feature:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<dcbx_app_priority_entry:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<qed_dcbx_get_common_params>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	push.w	{r8, r9, r11}
               	sub	sp, #0x8
               	ldrd	r8, r6, [r7, #8]
               	ldr	r4, [r7, #0x10]
               	mov	r9, r3
               	mov	r3, r6
               	mov	r5, r0
               	str	r4, [sp]
               	bl	0x54 <qed_dcbx_get_common_params+0x18> @ imm = #-0x4
               	mov	r0, r5
               	mov	r1, r9
               	mov	r2, r6
               	bl	0x5e <qed_dcbx_get_common_params+0x22> @ imm = #-0x4
               	mov	r0, r5
               	mov	r1, r8
               	mov	r2, r6
               	add	sp, #0x8
               	pop.w	{r8, r9, r11}
               	pop.w	{r4, r5, r6, r7, lr}
               	b.w	0x72 <qed_dcbx_get_common_params+0x36> @ imm = #-0x4
