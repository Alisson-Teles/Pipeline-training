
/tmp/tmp.gg8eI6enc8/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<device_node:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<of_pci_get_max_link_speed>:
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r0, [r0]
               	rsbs	r0, r0, #0
               	pop	{r7, pc}
