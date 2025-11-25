; ModuleID = 'angha-ll-stm32f1/extr_cqhci.c_cqhci_tasks_cleared.ll'
source_filename = "out/extr_cqhci.c_cqhci_tasks_cleared.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@CQHCI_CLEAR_ALL_TASKS = local_unnamed_addr global i32 0
@CQHCI_CTL = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"cqhci_host:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @cqhci_readl(ptr, i32) local_unnamed_addr addrspace(1) #1

define range(i32 0, 2) i32 @cqhci_tasks_cleared(ptr %cq_host) local_unnamed_addr addrspace(1) #1 {
body:
  %CQHCI_CTL = load i32, ptr @CQHCI_CTL, align 4
  %0 = tail call addrspace(1) i32 @cqhci_readl(ptr %cq_host, i32 %CQHCI_CTL)
  %CQHCI_CLEAR_ALL_TASKS = load i32, ptr @CQHCI_CLEAR_ALL_TASKS, align 4
  %binop = and i32 %CQHCI_CLEAR_ALL_TASKS, %0
  %cmpi = icmp eq i32 %binop, 0
  %zext = zext i1 %cmpi to i32
  ret i32 %zext
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
