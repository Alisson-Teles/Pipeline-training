
/tmp/tmp.bQWCBZcFX7/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<emac_rx_sync_size>:
               	push	{r7, lr}
               	mov	r7, sp
               	bl	0x4 <emac_rx_sync_size+0x4> @ imm = #-0x4
               	movw	r2, #0x0
               	movt	r2, #0x0
               	ldm	r2, {r2, r3}
               	adds	r0, r0, r2
               	adcs	r1, r3
               	pop.w	{r7, lr}
               	b.w	0x1a <emac_rx_sync_size+0x1a> @ imm = #-0x4
