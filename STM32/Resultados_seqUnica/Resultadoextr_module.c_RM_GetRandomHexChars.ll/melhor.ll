; ModuleID = 'angha-ll-stm32f1/extr_module.c_RM_GetRandomHexChars.ll'
source_filename = "out/extr_module.c_RM_GetRandomHexChars.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

declare i32 @getRandomHexChars(ptr, i32 zeroext, i32 zeroext) local_unnamed_addr addrspace(1) #0

define void @RM_GetRandomHexChars(ptr %dst, i32 zeroext %len, i32 zeroext %dst.size) local_unnamed_addr addrspace(1) #0 {
body:
  %0 = tail call addrspace(1) i32 @getRandomHexChars(ptr %dst, i32 zeroext %len, i32 zeroext %dst.size)
  ret void
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
