
/tmp/tmp.b5NqNaYING/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<ath10k_ce_pipe:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<ath10k_pci_htc_rx_cb>:
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r1, #0x0
               	movt	r1, #0x0
               	ldr	r1, [r1]
               	pop.w	{r7, lr}
               	b.w	0x1e <ath10k_pci_htc_rx_cb+0x12> @ imm = #-0x4
