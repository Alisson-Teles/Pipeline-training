; ModuleID = 'angha-ll-stm32f1/extr_amd8111e.c_amd8111e_stop_chip.ll'
source_filename = "out/extr_amd8111e.c_amd8111e_stop_chip.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@CMD0 = local_unnamed_addr global i64 0
@RUN = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"amd8111e_priv:init"(ptr writeonly captures(none) initializes((0, 8)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i64 0, ptr %_this, align 8
  ret void
}

declare i32 @readl(i64) local_unnamed_addr addrspace(1) #1

declare i32 @writel(i32, i64) local_unnamed_addr addrspace(1) #1

define void @amd8111e_stop_chip(ptr readonly captures(none) %lp) local_unnamed_addr addrspace(1) #1 {
body:
  %RUN = load i32, ptr @RUN, align 4
  %mmio2 = load i64, ptr %lp, align 8
  %CMD0 = load i64, ptr @CMD0, align 8
  %binop = add i64 %CMD0, %mmio2
  %0 = tail call addrspace(1) i32 @writel(i32 %RUN, i64 %binop)
  %mmio5 = load i64, ptr %lp, align 8
  %CMD06 = load i64, ptr @CMD0, align 8
  %binop7 = add i64 %CMD06, %mmio5
  %1 = tail call addrspace(1) i32 @readl(i64 %binop7)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
