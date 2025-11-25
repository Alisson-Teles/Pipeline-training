; ModuleID = 'angha-ll-stm32f1/extr_mthca_cmd.c_mthca_HW2SW_EQ.ll'
source_filename = "out/extr_mthca_cmd.c_mthca_HW2SW_EQ.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@CMD_HW2SW_EQ = local_unnamed_addr global i32 0
@CMD_TIME_CLASS_A = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"mthca_mailbox:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"mthca_dev:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @mthca_cmd_box(ptr, i32, i32, i32, i32, i32, i32) local_unnamed_addr addrspace(1) #1

define i32 @mthca_HW2SW_EQ(ptr %dev, ptr readonly captures(none) %mailbox, i32 %eq_num) local_unnamed_addr addrspace(1) #1 {
body:
  %dma5 = load i32, ptr %mailbox, align 4
  %CMD_HW2SW_EQ = load i32, ptr @CMD_HW2SW_EQ, align 4
  %CMD_TIME_CLASS_A = load i32, ptr @CMD_TIME_CLASS_A, align 4
  %0 = tail call addrspace(1) i32 @mthca_cmd_box(ptr %dev, i32 0, i32 %dma5, i32 %eq_num, i32 0, i32 %CMD_HW2SW_EQ, i32 %CMD_TIME_CLASS_A)
  ret i32 %0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
