; ModuleID = 'angha-ll-stm32f1/extr_ixgbe_x550.c_ixgbe_write_i2c_combined_generic_unlocked.ll'
source_filename = "out/extr_ixgbe_x550.c_ixgbe_write_i2c_combined_generic_unlocked.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"ixgbe_hw:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @ixgbe_write_i2c_combined_generic_int(ptr, i32, i32, i32, i32) local_unnamed_addr addrspace(1) #1

define i32 @ixgbe_write_i2c_combined_generic_unlocked(ptr %hw, i32 %addr, i32 %reg, i32 %val) local_unnamed_addr addrspace(1) #1 {
body:
  %0 = tail call addrspace(1) i32 @ixgbe_write_i2c_combined_generic_int(ptr %hw, i32 %addr, i32 %reg, i32 %val, i32 0)
  ret i32 %0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
