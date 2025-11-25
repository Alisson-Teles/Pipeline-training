; ModuleID = 'angha-ll-stm32f1/extr_..schedsched.h_task_on_rq_queued.ll'
source_filename = "out/extr_..schedsched.h_task_on_rq_queued.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@TASK_ON_RQ_QUEUED = local_unnamed_addr global i64 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"task_struct:init"(ptr writeonly captures(none) initializes((0, 8)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i64 0, ptr %_this, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none)
define range(i32 0, 2) i32 @task_on_rq_queued(ptr readonly captures(none) %p) local_unnamed_addr addrspace(1) #1 {
body:
  %on_rq2 = load i64, ptr %p, align 8
  %TASK_ON_RQ_QUEUED = load i64, ptr @TASK_ON_RQ_QUEUED, align 8
  %cmpi = icmp eq i64 %on_rq2, %TASK_ON_RQ_QUEUED
  %zext = zext i1 %cmpi to i32
  ret i32 %zext
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
