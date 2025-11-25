; ModuleID = 'angha-ll-stm32f1/extr_charmap.c_add_charmap.ll'
source_filename = "out/extr_charmap.c_add_charmap.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

declare i32 @add_charmap_impl(ptr, i32, i32, i32 zeroext) local_unnamed_addr addrspace(1) #0

define void @add_charmap(ptr %sym, i32 %c, i32 zeroext %sym.size) local_unnamed_addr addrspace(1) #0 {
body:
  %0 = tail call addrspace(1) i32 @add_charmap_impl(ptr %sym, i32 %c, i32 1, i32 zeroext %sym.size)
  ret void
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
