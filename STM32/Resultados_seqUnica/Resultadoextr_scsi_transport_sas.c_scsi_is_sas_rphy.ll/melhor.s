
/tmp/tmp.IqKVdSSonV/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<device:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	pop	{r7, pc}

<scsi_is_sas_rphy>:
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r2, #0x0
               	movt	r2, #0x0
               	ldm	r0, {r0, r1}
               	ldm	r2, {r2, r3}
               	eors	r3, r1
               	eors	r2, r0
               	orrs	r2, r3
               	movw	r3, #0x0
               	movt	r3, #0x0
               	clz	r12, r2
               	ldr	r2, [r3, #0x4]
               	ldr	r3, [r3]
               	eors	r1, r2
               	eors	r0, r3
               	orrs	r0, r1
               	clz	r0, r0
               	lsr.w	r12, r12, #0x5
               	lsrs	r0, r0, #0x5
               	orr.w	r0, r0, r12
               	pop	{r7, pc}
