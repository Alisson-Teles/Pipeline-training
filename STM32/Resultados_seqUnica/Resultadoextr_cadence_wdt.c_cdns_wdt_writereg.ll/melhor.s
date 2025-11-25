
/tmp/tmp.z3Lru0xpTY/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<cdns_wdt:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	pop	{r7, pc}

<cdns_wdt_writereg>:
               	push	{r7, lr}
               	mov	r7, sp
               	ldm.w	r0, {r0, lr}
               	ldr.w	r12, [r7, #0x8]
               	ldr	r1, [r7, #0xc]
               	adds	r2, r2, r0
               	adc.w	r3, r3, lr
               	mov	r0, r12
               	pop.w	{r7, lr}
               	b.w	0x26 <cdns_wdt_writereg+0x1a> @ imm = #-0x4
