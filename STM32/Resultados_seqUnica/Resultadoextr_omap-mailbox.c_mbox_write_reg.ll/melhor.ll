; ModuleID = 'angha-ll-stm32f1/extr_omap-mailbox.c_mbox_write_reg.ll'
source_filename = "out/extr_omap-mailbox.c_mbox_write_reg.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"omap_mbox_device:init"(ptr writeonly captures(none) initializes((0, 8)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i64 0, ptr %_this, align 8
  ret void
}

declare i32 @__raw_writel(i32, i64) local_unnamed_addr addrspace(1) #1

define void @mbox_write_reg(ptr readonly captures(none) %mdev, i32 %val, i32 zeroext %ofs) local_unnamed_addr addrspace(1) #1 {
body:
  %mbox_base5 = load i64, ptr %mdev, align 8
  %intcast = zext i32 %ofs to i64
  %binop = add i64 %mbox_base5, %intcast
  %0 = tail call addrspace(1) i32 @__raw_writel(i32 %val, i64 %binop)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
