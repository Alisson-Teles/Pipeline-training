
/tmp/tmp.skBS2topAP/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<trap_LAN_GetPing>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	sub	sp, #0x10
               	mov	lr, r1
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldrd	r4, r5, [r7, #8]
               	ldr	r1, [r1]
               	mov	r12, r2
               	mov	r2, r0
               	strd	r3, r4, [sp]
               	mov	r0, r1
               	mov	r1, r2
               	mov	r2, lr
               	mov	r3, r12
               	str	r5, [sp, #0x8]
               	bl	0x28 <trap_LAN_GetPing+0x28> @ imm = #-0x4
               	add	sp, #0x10
               	pop	{r4, r5, r7, pc}
