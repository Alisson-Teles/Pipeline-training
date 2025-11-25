
/tmp/tmp.V4gcgKSfgl/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<wps_credential:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	strd	r1, r1, [r0]
               	pop	{r7, pc}

<wpabuf:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<wps_build_cred_ssid>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	str	r11, [sp, #-4]!
               	sub	sp, #0x8
               	movw	r6, #0x0
               	movt	r6, #0x0
               	ldr	r2, [r6]
               	mov	r4, r1
               	movw	r1, #0x0
               	mov	r5, r0
               	movt	r1, #0x0
               	mov	r0, r2
               	movs	r2, #0xc
               	bl	0x3c <wps_build_cred_ssid+0x24> @ imm = #-0x4
               	ldr	r0, [r6]
               	ldrd	r3, r2, [r4]
               	movw	r1, #0x0
               	movs	r6, #0x18
               	movt	r1, #0x0
               	str	r6, [sp]
               	bl	0x52 <wps_build_cred_ssid+0x3a> @ imm = #-0x4
               	movw	r0, #0x0
               	movt	r0, #0x0
               	ldr	r1, [r0]
               	mov	r0, r5
               	bl	0x62 <wps_build_cred_ssid+0x4a> @ imm = #-0x4
               	ldr	r1, [r4]
               	mov	r0, r5
               	bl	0x6a <wps_build_cred_ssid+0x52> @ imm = #-0x4
               	ldrd	r2, r1, [r4]
               	mov	r0, r5
               	bl	0x74 <wps_build_cred_ssid+0x5c> @ imm = #-0x4
               	movs	r0, #0x0
               	add	sp, #0x8
               	ldr	r11, [sp], #4
               	pop	{r4, r5, r6, r7, pc}
