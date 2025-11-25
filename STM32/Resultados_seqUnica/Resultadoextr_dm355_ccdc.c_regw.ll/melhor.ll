; ModuleID = 'angha-ll-stm32f1/extr_dm355_ccdc.c_regw.ll'
source_filename = "out/extr_dm355_ccdc.c_regw.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@ccdc_base_addr = local_unnamed_addr global i64 0

declare i32 @__raw_writel(i64, i64) local_unnamed_addr addrspace(1) #0

define void @regw(i64 %val, i64 %offset) local_unnamed_addr addrspace(1) #0 {
body:
  %ccdc_base_addr = load i64, ptr @ccdc_base_addr, align 8
  %binop = add i64 %ccdc_base_addr, %offset
  %0 = tail call addrspace(1) i32 @__raw_writel(i64 %val, i64 %binop)
  ret void
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
