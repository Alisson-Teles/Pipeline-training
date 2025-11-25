
/tmp/tmp.4nuP9HDLL8/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<ggd_connection:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	pop	{r7, pc}

<connection_ready>:
               	push	{r7, lr}
               	mov	r7, sp
               	ldr	r1, [r0]
               	adds	r1, #0x1
               	beq	0x22 <connection_ready+0x16> @ imm = #0xa
               	ldr	r0, [r0, #0x4]
               	subs.w	r0, r0, #0xffffffff
               	it	ne
               	movne	r0, #0x1
               	pop	{r7, pc}
               	movs	r0, #0x0
               	pop	{r7, pc}
