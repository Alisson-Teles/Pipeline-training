
/tmp/tmp.xqVs9zI8jG/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<smb_vol:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	pop	{r7, pc}

<cifs_ses:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	pop	{r7, pc}

<cifs_set_vol_auth>:
               	push	{r7, lr}
               	mov	r7, sp
               	ldrd	r12, r3, [r1]
               	movw	r2, #0x0
               	strd	r12, r3, [r0]
               	movt	r2, #0x0
               	ldrd	lr, r2, [r2]
               	eors	r2, r3
               	eor.w	r3, r12, lr
               	orrs	r2, r3
               	itt	eq
               	moveq	r0, #0x0
               	popeq	{r7, pc}
               	pop.w	{r7, lr}
               	b.w	0x42 <cifs_set_vol_auth+0x2a> @ imm = #-0x4
