
/tmp/tmp.Cx01JoY3oi/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<vmbus_gpa:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<vmbus_channel:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<hn_nvs_sendctx:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<hn_nvs_send_rndis_ctrl>:
               	push	{r7, lr}
               	mov	r7, sp
               	sub	sp, #0x8
               	mov	r12, r3
               	mov	r3, r2
               	mov	r2, r1
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	str.w	r12, [sp]
               	bl	0x3e <hn_nvs_send_rndis_ctrl+0x1a> @ imm = #-0x4
               	add	sp, #0x8
               	pop	{r7, pc}
