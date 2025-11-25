
/tmp/tmp.vqn6hriruk/saida.o:	file format elf32-littlearm

Disassembly of section .text:

<action_get_title_dropdown_playlist_right_thumbnail_mode_item>:
               	push	{r4, r5, r7, lr}
               	add	r7, sp, #0x8
               	add.w	lr, r7, #0x8
               	ldr.w	r12, [r7, #0x14]
               	ldm.w	lr, {r4, r5, lr}
               	str	r4, [r7, #0x8]
               	str	r5, [r7, #0xc]
               	str.w	lr, [r7, #0x10]
               	str.w	r12, [r7, #0x14]
               	pop.w	{r4, r5, r7, lr}
               	b.w	0x20 <action_get_title_dropdown_playlist_right_thumbnail_mode_item+0x20> @ imm = #-0x4
