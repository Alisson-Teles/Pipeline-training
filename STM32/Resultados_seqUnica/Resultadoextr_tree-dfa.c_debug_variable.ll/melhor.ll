; ModuleID = 'angha-ll-stm32f1/extr_tree-dfa.c_debug_variable.ll'
source_filename = "out/extr_tree-dfa.c_debug_variable.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@stderr = local_unnamed_addr global i32 0

declare i32 @dump_variable(i32, i32) local_unnamed_addr addrspace(1) #0

define void @debug_variable(i32 %var) local_unnamed_addr addrspace(1) #0 {
body:
  %stderr = load i32, ptr @stderr, align 4
  %0 = tail call addrspace(1) i32 @dump_variable(i32 %stderr, i32 %var)
  ret void
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
