
/tmp/tmp.EWEQn00nWE/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<rds_transport:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<rds_connection:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<net:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<in6_addr:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<rds_conn_create_outgoing>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	sub	sp, #0x10
               	ldrd	lr, r12, [r7, #8]
               	ldr	r4, [r7, #0x10]
               	movs	r5, #0x1
               	strd	r12, lr, [sp]
               	strd	r5, r4, [sp, #8]
               	bl	0x46 <rds_conn_create_outgoing+0x16> @ imm = #-0x4
               	add	sp, #0x10
               	pop	{r4, r5, r7, pc}
