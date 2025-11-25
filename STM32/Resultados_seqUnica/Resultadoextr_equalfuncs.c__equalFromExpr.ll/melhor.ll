; ModuleID = 'angha-ll-stm32f1/extr_equalfuncs.c__equalFromExpr.ll'
source_filename = "out/extr_equalfuncs.c__equalFromExpr.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@fromlist = local_unnamed_addr global i32 0
@quals = local_unnamed_addr global i32 0

declare i32 @COMPARE_NODE_FIELD(i32) local_unnamed_addr addrspace(1) #0

define noundef i32 @_equalFromExpr(i32 %a, i32 %b) local_unnamed_addr addrspace(1) #0 {
body:
  %fromlist = load i32, ptr @fromlist, align 4
  %0 = tail call addrspace(1) i32 @COMPARE_NODE_FIELD(i32 %fromlist)
  %quals = load i32, ptr @quals, align 4
  %1 = tail call addrspace(1) i32 @COMPARE_NODE_FIELD(i32 %quals)
  ret i32 1
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
