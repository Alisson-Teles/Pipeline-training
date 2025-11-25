; ModuleID = 'angha-ll-stm32f1/extr_hw-me.c_mei_hcsr_set.ll'
source_filename = "out/extr_hw-me.c_mei_hcsr_set.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@H_CSR_IS_MASK = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"mei_device:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @mei_hcsr_write(ptr, i32) local_unnamed_addr addrspace(1) #1

define void @mei_hcsr_set(ptr %dev, i32 %reg) local_unnamed_addr addrspace(1) #1 {
body:
  %H_CSR_IS_MASK = load i32, ptr @H_CSR_IS_MASK, align 4
  %neg = xor i32 %H_CSR_IS_MASK, -1
  %binop = and i32 %reg, %neg
  %0 = tail call addrspace(1) i32 @mei_hcsr_write(ptr %dev, i32 %binop)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
