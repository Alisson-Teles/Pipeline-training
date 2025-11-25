; ModuleID = 'angha-ll-stm32f1/extr_driver_mips.c_mips_write32.ll'
source_filename = "out/extr_driver_mips.c_mips_write32.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"bcma_drv_mips:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @bcma_write32(i32, i32, i32) local_unnamed_addr addrspace(1) #1

define void @mips_write32(ptr readonly captures(none) %mcore, i32 %offset, i32 %value) local_unnamed_addr addrspace(1) #1 {
body:
  %core4 = load i32, ptr %mcore, align 4
  %0 = tail call addrspace(1) i32 @bcma_write32(i32 %core4, i32 %offset, i32 %value)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
