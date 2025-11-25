
/tmp/tmp.ZVRaa8eyHS/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<TYPE_3__:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	pop	{r7, pc}

<posix_spawn_file_actions_init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r2, #0x0
               	mov	r1, r0
               	str	r2, [r0]
               	movs	r0, #0x0
               	str	r2, [r1, #0x4]
               	pop	{r7, pc}
