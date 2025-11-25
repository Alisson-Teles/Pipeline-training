; ModuleID = 'angha-ll-stm32f1/extr_iswctype.c_iswphonogram.ll'
source_filename = "out/extr_iswctype.c_iswphonogram.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@_CTYPE_Q = local_unnamed_addr global i32 0

declare i32 @__istype(i32, i32) local_unnamed_addr addrspace(1) #0

define i32 @iswphonogram(i32 %wc) local_unnamed_addr addrspace(1) #0 {
body:
  %_CTYPE_Q = load i32, ptr @_CTYPE_Q, align 4
  %0 = tail call addrspace(1) i32 @__istype(i32 %wc, i32 %_CTYPE_Q)
  ret i32 %0
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
