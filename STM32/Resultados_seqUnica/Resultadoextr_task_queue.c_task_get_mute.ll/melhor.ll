; ModuleID = 'angha-ll-stm32f1/extr_task_queue.c_task_get_mute.ll'
source_filename = "out/extr_task_queue.c_task_get_mute.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@property_lock = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"TYPE_3__:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @SLOCK_LOCK(i32) local_unnamed_addr addrspace(1) #1

declare i32 @SLOCK_UNLOCK(i32) local_unnamed_addr addrspace(1) #1

define i32 @task_get_mute(ptr readonly captures(none) %task) local_unnamed_addr addrspace(1) #1 {
body:
  %property_lock = load i32, ptr @property_lock, align 4
  %0 = tail call addrspace(1) i32 @SLOCK_LOCK(i32 %property_lock)
  %mute3 = load i32, ptr %task, align 4
  %property_lock4 = load i32, ptr @property_lock, align 4
  %1 = tail call addrspace(1) i32 @SLOCK_UNLOCK(i32 %property_lock4)
  ret i32 %mute3
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
