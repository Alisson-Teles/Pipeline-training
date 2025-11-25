
/tmp/tmp.82jVV055WU/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<pci_dn:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	pop	{r7, pc}

<config_access_valid>:
               	push	{r7, lr}
               	mov	r7, sp
               	cmp	r1, #0xff
               	ble	0x20 <config_access_valid+0x14> @ imm = #0xa
               	cmp.w	r1, #0x1000
               	bge	0x24 <config_access_valid+0x18> @ imm = #0x8
               	ldm	r0, {r0, r1}
               	orrs	r0, r1
               	beq	0x24 <config_access_valid+0x18> @ imm = #0x2
               	movs	r0, #0x1
               	pop	{r7, pc}
               	movs	r0, #0x0
               	pop	{r7, pc}
