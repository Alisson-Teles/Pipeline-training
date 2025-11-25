; ModuleID = 'angha-ll-stm32f1/extr_firestream.c_write_fs.ll'
source_filename = "out/extr_firestream.c_write_fs.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"fs_dev:init"(ptr writeonly captures(none) initializes((0, 8)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i64 0, ptr %_this, align 8
  ret void
}

declare i32 @writel(i32, i64) local_unnamed_addr addrspace(1) #1

define void @write_fs(ptr readonly captures(none) %dev, i32 %offset, i32 %val) local_unnamed_addr addrspace(1) #1 {
body:
  %base5 = load i64, ptr %dev, align 8
  %intcast = sext i32 %offset to i64
  %binop = add i64 %base5, %intcast
  %0 = tail call addrspace(1) i32 @writel(i32 %val, i64 %binop)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
