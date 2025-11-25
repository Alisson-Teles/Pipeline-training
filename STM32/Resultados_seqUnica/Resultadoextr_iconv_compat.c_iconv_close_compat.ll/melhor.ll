; ModuleID = 'angha-ll-stm32f1/extr_iconv_compat.c_iconv_close_compat.ll'
source_filename = "out/extr_iconv_compat.c_iconv_close_compat.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

declare i32 @__bsd_iconv_close(i32) local_unnamed_addr addrspace(1) #0

define i32 @iconv_close_compat(i32 %a) local_unnamed_addr addrspace(1) #0 {
body:
  %0 = tail call addrspace(1) i32 @__bsd_iconv_close(i32 %a)
  ret i32 %0
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
