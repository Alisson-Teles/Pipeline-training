
/tmp/tmp.XuiIr7Ex9k/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<evhttp_request:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<evhttp_request_get_response_code>:
               	push	{r7, lr}
               	mov	r7, sp
               	ldr	r0, [r0]
               	pop	{r7, pc}
