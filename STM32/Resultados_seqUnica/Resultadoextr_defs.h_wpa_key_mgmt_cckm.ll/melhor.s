
/tmp/tmp.EphVcJO7V9/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<wpa_key_mgmt_cckm>:
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	subs	r0, r0, r1
               	clz	r0, r0
               	lsrs	r0, r0, #0x5
               	pop	{r7, pc}
