; ModuleID = 'angha-ll-stm32f1/extr_driver_gige.c_gige_read8.ll'
source_filename = "out/extr_driver_gige.c_gige_read8.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"ssb_gige:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @ssb_read8(i32, i32) local_unnamed_addr addrspace(1) #1

define i32 @gige_read8(ptr readonly captures(none) %dev, i32 %offset) local_unnamed_addr addrspace(1) #1 {
body:
  %dev4 = load i32, ptr %dev, align 4
  %0 = tail call addrspace(1) i32 @ssb_read8(i32 %dev4, i32 %offset)
  ret i32 %0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
