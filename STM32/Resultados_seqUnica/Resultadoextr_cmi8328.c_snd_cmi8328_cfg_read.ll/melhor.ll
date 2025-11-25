; ModuleID = 'angha-ll-stm32f1/extr_cmi8328.c_snd_cmi8328_cfg_read.ll'
source_filename = "out/extr_cmi8328.c_snd_cmi8328_cfg_read.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

declare i32 @inb(i64) local_unnamed_addr addrspace(1) #0

declare i32 @outb(i32, i64) local_unnamed_addr addrspace(1) #0

define i32 @snd_cmi8328_cfg_read(i64 %port, i32 %reg) local_unnamed_addr addrspace(1) #0 {
body:
  %binop = add i64 %port, 3
  %0 = tail call addrspace(1) i32 @outb(i32 67, i64 %binop)
  %1 = tail call addrspace(1) i32 @outb(i32 33, i64 %binop)
  %2 = tail call addrspace(1) i32 @outb(i32 %reg, i64 %binop)
  %3 = tail call addrspace(1) i32 @inb(i64 %port)
  ret i32 %3
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
