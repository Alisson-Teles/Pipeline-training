
/tmp/tmp.Ck15D8n4MT/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<snd_pcm_runtime:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	pop	{r7, pc}

<period_to_usecs>:
               	push	{r7, lr}
               	mov	r7, sp
               	ldr	r1, [r0]
               	cbz	r1, 0x32 <period_to_usecs+0x26> @ imm = #0x1c
               	movw	r2, #0x71b0
               	movt	r2, #0xb
               	sdiv	r3, r2, r1
               	ldr	r0, [r0, #0x4]
               	mls	r2, r3, r1, r2
               	muls	r2, r0, r2
               	sdiv	r1, r2, r1
               	mla	r0, r0, r3, r1
               	pop	{r7, pc}
               	mov.w	r0, #0xffffffff
               	pop	{r7, pc}
