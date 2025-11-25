
/tmp/tmp.8UdgflSWTy/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<demo_error_callback>:
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r0, #0x0
               	mov	r3, r2
               	movt	r0, #0x0
               	movs	r2, #0xf
               	bl	0x10 <demo_error_callback+0x10> @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r0, [r0]
               	pop.w	{r7, lr}
               	b.w	0x22 <demo_error_callback+0x22> @ imm = #-0x4
