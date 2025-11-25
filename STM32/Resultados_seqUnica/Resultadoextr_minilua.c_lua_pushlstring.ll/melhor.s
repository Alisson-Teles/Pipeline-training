
/tmp/tmp.pewKg0IBdl/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<TYPE_7__:init>:
               	push	{r7, lr}
               	mov	r7, sp
               	movs	r1, #0x0
               	str	r1, [r0]
               	pop	{r7, pc}
               	nop

<lua_pushlstring>:
               	push	{r4, r5, r6, r7, lr}
               	add	r7, sp, #0xc
               	push.w	{r8, r9, r11}
               	mov	r8, r3
               	mov	r5, r2
               	mov	r6, r1
               	mov	r4, r0
               	bl	0x1c <lua_pushlstring+0x10> @ imm = #-0x4
               	ldr.w	r9, [r4]
               	mov	r0, r4
               	mov	r1, r6
               	mov	r2, r5
               	mov	r3, r8
               	bl	0x2c <lua_pushlstring+0x20> @ imm = #-0x4
               	mov	r2, r0
               	mov	r0, r4
               	mov	r1, r9
               	bl	0x36 <lua_pushlstring+0x2a> @ imm = #-0x4
               	mov	r0, r4
               	pop.w	{r8, r9, r11}
               	pop.w	{r4, r5, r6, r7, lr}
               	b.w	0x44 <lua_pushlstring+0x38> @ imm = #-0x4
