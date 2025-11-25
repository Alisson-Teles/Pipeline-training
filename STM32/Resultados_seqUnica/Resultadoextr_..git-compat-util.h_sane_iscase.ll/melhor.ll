; ModuleID = 'angha-ll-stm32f1/extr_..git-compat-util.h_sane_iscase.ll'
source_filename = "out/extr_..git-compat-util.h_sane_iscase.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@GIT_ALPHA = local_unnamed_addr global i32 0

declare i32 @sane_istest(i32, i32) local_unnamed_addr addrspace(1) #0

define range(i32 0, 2) i32 @sane_iscase(i32 %x, i32 %is_lower) local_unnamed_addr addrspace(1) #0 {
body:
  %GIT_ALPHA = load i32, ptr @GIT_ALPHA, align 4
  %0 = tail call addrspace(1) i32 @sane_istest(i32 %x, i32 %GIT_ALPHA)
  %cmpi = icmp eq i32 %0, 0
  %cmpi5.not = icmp eq i32 %is_lower, 0
  %binop11 = lshr i32 %x, 5
  %binop11.lobit = and i32 %binop11, 1
  %zext13 = zext i1 %cmpi5.not to i32
  %spec.select = xor i32 %binop11.lobit, %zext13
  %common.ret.op = select i1 %cmpi, i32 0, i32 %spec.select
  ret i32 %common.ret.op
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
