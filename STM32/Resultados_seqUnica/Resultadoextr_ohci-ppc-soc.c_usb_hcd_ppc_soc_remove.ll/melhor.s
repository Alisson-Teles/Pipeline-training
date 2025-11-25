
/tmp/tmp.dwJ6mhnTJe/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<usb_hcd:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	str	r1, [r0, #0x8]
               	pop	{r7, pc}
               	nop

<platform_device:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<usb_hcd_ppc_soc_remove>:
               	push	{r4, r6, r7, lr}
               	add	r7, sp, #0x8
               	mov	r4, r0
               	bl	0x22 <usb_hcd_ppc_soc_remove+0x6> @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	movs	r1, #0x20
               	bl	0x30 <usb_hcd_ppc_soc_remove+0x14> @ imm = #-0x4
               	ldr	r0, [r4, #0x8]
               	bl	0x36 <usb_hcd_ppc_soc_remove+0x1a> @ imm = #-0x4
               	ldrd	r1, r0, [r4]
               	bl	0x3e <usb_hcd_ppc_soc_remove+0x22> @ imm = #-0x4
               	mov	r0, r4
               	pop.w	{r4, r6, r7, lr}
               	b.w	0x48 <usb_hcd_ppc_soc_remove+0x2c> @ imm = #-0x4
