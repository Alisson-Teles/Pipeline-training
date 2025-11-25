; ModuleID = 'angha-ll-stm32f1/extr_xonar_cs43xx.c_xonar_d1_resume.ll'
source_filename = "out/extr_xonar_cs43xx.c_xonar_d1_resume.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@OXYGEN_FUNCTION = local_unnamed_addr global i32 0
@OXYGEN_FUNCTION_RESET_CODEC = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"oxygen:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @cs43xx_registers_init(ptr) local_unnamed_addr addrspace(1) #1

declare i32 @msleep(i32) local_unnamed_addr addrspace(1) #1

declare i32 @oxygen_set_bits8(ptr, i32, i32) local_unnamed_addr addrspace(1) #1

declare i32 @xonar_enable_output(ptr) local_unnamed_addr addrspace(1) #1

define void @xonar_d1_resume(ptr %chip) local_unnamed_addr addrspace(1) #1 {
body:
  %OXYGEN_FUNCTION = load i32, ptr @OXYGEN_FUNCTION, align 4
  %OXYGEN_FUNCTION_RESET_CODEC = load i32, ptr @OXYGEN_FUNCTION_RESET_CODEC, align 4
  %0 = tail call addrspace(1) i32 @oxygen_set_bits8(ptr %chip, i32 %OXYGEN_FUNCTION, i32 %OXYGEN_FUNCTION_RESET_CODEC)
  %1 = tail call addrspace(1) i32 @msleep(i32 1)
  %2 = tail call addrspace(1) i32 @cs43xx_registers_init(ptr %chip)
  %3 = tail call addrspace(1) i32 @xonar_enable_output(ptr %chip)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
