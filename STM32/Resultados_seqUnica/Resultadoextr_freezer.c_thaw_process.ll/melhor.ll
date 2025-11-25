; ModuleID = 'angha-ll-stm32f1/extr_freezer.c_thaw_process.ll'
source_filename = "out/extr_freezer.c_thaw_process.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"task_struct:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @__thaw_process(ptr) local_unnamed_addr addrspace(1) #1

declare i32 @task_lock(ptr) local_unnamed_addr addrspace(1) #1

declare i32 @task_unlock(ptr) local_unnamed_addr addrspace(1) #1

declare i32 @wake_up_process(ptr) local_unnamed_addr addrspace(1) #1

define range(i32 0, 2) i32 @thaw_process(ptr %p) local_unnamed_addr addrspace(1) #1 {
body:
  %0 = tail call addrspace(1) i32 @task_lock(ptr %p)
  %1 = tail call addrspace(1) i32 @__thaw_process(ptr %p)
  %cmpi = icmp eq i32 %1, 1
  %2 = tail call addrspace(1) i32 @task_unlock(ptr %p)
  br i1 %cmpi, label %if_then, label %common.ret

common.ret:                                       ; preds = %if_then, %body
  %common.ret.op = phi i32 [ 1, %if_then ], [ 0, %body ]
  ret i32 %common.ret.op

if_then:                                          ; preds = %body
  %3 = tail call addrspace(1) i32 @wake_up_process(ptr %p)
  br label %common.ret
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
