
/tmp/tmp.kbRnixXiyf/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<vc_data:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<speakup_lock>:
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r1, [r0]
               	clz	r1, r1
               	lsrs	r1, r1, #0x5
               	lsls	r1, r1, #0x4
               	str	r1, [r0]
               	movw	r0, #0x0
               	movt	r0, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
