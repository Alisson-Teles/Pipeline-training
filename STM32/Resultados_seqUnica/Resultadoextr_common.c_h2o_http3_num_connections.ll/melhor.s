
/tmp/tmp.heNXoKAZpj/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<TYPE_3__:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	pop	{r7, pc}

<h2o_http3_num_connections>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r0
               	ldr	r0, [r0, #0x4]
               	bl	0x14 <h2o_http3_num_connections+0x8> @ imm = #-0x4
               	ldr	r1, [r4]
               	mov	r4, r0
               	mov	r0, r1
               	bl	0x1e <h2o_http3_num_connections+0x12> @ imm = #-0x4
               	add	r0, r4
               	pop	{r4, r6, r7, pc}
