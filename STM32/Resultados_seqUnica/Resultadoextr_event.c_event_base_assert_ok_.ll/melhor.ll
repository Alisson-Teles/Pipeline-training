; ModuleID = 'angha-ll-stm32f1/extr_event.c_event_base_assert_ok_.ll'
source_filename = "out/extr_event.c_event_base_assert_ok_.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@th_base_lock = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"event_base:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @EVBASE_ACQUIRE_LOCK(ptr, i32) local_unnamed_addr addrspace(1) #1

declare i32 @EVBASE_RELEASE_LOCK(ptr, i32) local_unnamed_addr addrspace(1) #1

declare i32 @event_base_assert_ok_nolock_(ptr) local_unnamed_addr addrspace(1) #1

define void @event_base_assert_ok_(ptr %base) local_unnamed_addr addrspace(1) #1 {
body:
  %th_base_lock = load i32, ptr @th_base_lock, align 4
  %0 = tail call addrspace(1) i32 @EVBASE_ACQUIRE_LOCK(ptr %base, i32 %th_base_lock)
  %1 = tail call addrspace(1) i32 @event_base_assert_ok_nolock_(ptr %base)
  %th_base_lock4 = load i32, ptr @th_base_lock, align 4
  %2 = tail call addrspace(1) i32 @EVBASE_RELEASE_LOCK(ptr %base, i32 %th_base_lock4)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
