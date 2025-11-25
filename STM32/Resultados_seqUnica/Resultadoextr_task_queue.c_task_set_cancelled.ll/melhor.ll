; ModuleID = 'angha-ll-stm32f1/extr_task_queue.c_task_set_cancelled.ll'
source_filename = "out/extr_task_queue.c_task_set_cancelled.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@running_lock = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"TYPE_3__:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @SLOCK_LOCK(i32) local_unnamed_addr addrspace(1) #1

declare i32 @SLOCK_UNLOCK(i32) local_unnamed_addr addrspace(1) #1

define void @task_set_cancelled(ptr writeonly captures(none) initializes((0, 4)) %task, i32 %cancelled) local_unnamed_addr addrspace(1) #1 {
body:
  %running_lock = load i32, ptr @running_lock, align 4
  %0 = tail call addrspace(1) i32 @SLOCK_LOCK(i32 %running_lock)
  store i32 %cancelled, ptr %task, align 4
  %running_lock5 = load i32, ptr @running_lock, align 4
  %1 = tail call addrspace(1) i32 @SLOCK_UNLOCK(i32 %running_lock5)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
