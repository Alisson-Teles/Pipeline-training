; ModuleID = 'angha-ll-stm32f1/extr_equalfuncs.c__equalFetchStmt.ll'
source_filename = "out/extr_equalfuncs.c__equalFetchStmt.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@direction = local_unnamed_addr global i32 0
@howMany = local_unnamed_addr global i32 0
@ismove = local_unnamed_addr global i32 0
@portalname = local_unnamed_addr global i32 0

declare i32 @COMPARE_SCALAR_FIELD(i32) local_unnamed_addr addrspace(1) #0

declare i32 @COMPARE_STRING_FIELD(i32) local_unnamed_addr addrspace(1) #0

define noundef i32 @_equalFetchStmt(i32 %a, i32 %b) local_unnamed_addr addrspace(1) #0 {
body:
  %direction = load i32, ptr @direction, align 4
  %0 = tail call addrspace(1) i32 @COMPARE_SCALAR_FIELD(i32 %direction)
  %howMany = load i32, ptr @howMany, align 4
  %1 = tail call addrspace(1) i32 @COMPARE_SCALAR_FIELD(i32 %howMany)
  %portalname = load i32, ptr @portalname, align 4
  %2 = tail call addrspace(1) i32 @COMPARE_STRING_FIELD(i32 %portalname)
  %ismove = load i32, ptr @ismove, align 4
  %3 = tail call addrspace(1) i32 @COMPARE_SCALAR_FIELD(i32 %ismove)
  ret i32 1
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
