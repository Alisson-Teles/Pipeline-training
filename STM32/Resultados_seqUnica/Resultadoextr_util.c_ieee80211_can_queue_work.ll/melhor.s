
/tmp/tmp.5Ib9bCFiPw/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<ieee80211_local:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	strd	r1, r1, [r0, #8]
               	pop	{r7, pc}
               	nop

<ieee80211_can_queue_work>:
               	ldrd	r1, r2, [r0, #8]
               	orrs	r1, r2
               	beq	0x22 <ieee80211_can_queue_work+0x12> @ imm = #0x8
               	ldr	r0, [r0]
               	clz	r0, r0
               	lsrs	r0, r0, #0x5
               	b	0x24 <ieee80211_can_queue_work+0x14> @ imm = #0x0
               	movs	r0, #0x0
               	push	{r7, lr}
               	mov	r7, sp
               	movw	r1, #0x0
               	movt	r1, #0x0
               	movs	r2, #0x2f
               	bl	0x32 <ieee80211_can_queue_work+0x22> @ imm = #-0x4
               	orrs	r0, r1
               	clz	r0, r0
               	lsrs	r0, r0, #0x5
               	pop	{r7, pc}
