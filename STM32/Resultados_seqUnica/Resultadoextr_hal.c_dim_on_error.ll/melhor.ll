; ModuleID = 'angha-ll-stm32f1/extr_hal.c_dim_on_error.ll'
source_filename = "out/extr_hal.c_dim_on_error.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

declare i32 @dimcb_on_error(i32, ptr, i32 zeroext) local_unnamed_addr addrspace(1) #0

define noundef i32 @dim_on_error(i32 %error_id, ptr %error_message, i32 zeroext %error_message.size) local_unnamed_addr addrspace(1) #0 {
body:
  %0 = tail call addrspace(1) i32 @dimcb_on_error(i32 %error_id, ptr %error_message, i32 zeroext %error_message.size)
  ret i32 0
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
