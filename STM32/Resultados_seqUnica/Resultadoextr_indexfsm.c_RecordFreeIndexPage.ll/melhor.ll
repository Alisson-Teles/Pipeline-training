; ModuleID = 'angha-ll-stm32f1/extr_indexfsm.c_RecordFreeIndexPage.ll'
source_filename = "out/extr_indexfsm.c_RecordFreeIndexPage.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@BLCKSZ = local_unnamed_addr global i64 0

declare i32 @RecordPageWithFreeSpace(i32, i32, i64) local_unnamed_addr addrspace(1) #0

define void @RecordFreeIndexPage(i32 %rel, i32 %freeBlock) local_unnamed_addr addrspace(1) #0 {
body:
  %BLCKSZ = load i64, ptr @BLCKSZ, align 8
  %binop = add i64 %BLCKSZ, -1
  %0 = tail call addrspace(1) i32 @RecordPageWithFreeSpace(i32 %rel, i32 %freeBlock, i64 %binop)
  ret void
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
