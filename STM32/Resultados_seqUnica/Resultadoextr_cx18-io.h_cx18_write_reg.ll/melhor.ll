; ModuleID = 'angha-ll-stm32f1/extr_cx18-io.h_cx18_write_reg.ll'
source_filename = "out/extr_cx18-io.h_cx18_write_reg.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"cx18:init"(ptr writeonly captures(none) initializes((0, 8)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i64 0, ptr %_this, align 8
  ret void
}

declare i32 @cx18_writel(ptr, i64, i64) local_unnamed_addr addrspace(1) #1

define void @cx18_write_reg(ptr %cx, i64 %val, i64 %reg) local_unnamed_addr addrspace(1) #1 {
body:
  %reg_mem6 = load i64, ptr %cx, align 8
  %binop = add i64 %reg_mem6, %reg
  %0 = tail call addrspace(1) i32 @cx18_writel(ptr nonnull %cx, i64 %val, i64 %binop)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
