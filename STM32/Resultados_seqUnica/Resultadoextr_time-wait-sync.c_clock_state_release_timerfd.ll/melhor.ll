; ModuleID = 'angha-ll-stm32f1/extr_time-wait-sync.c_clock_state_release_timerfd.ll'
source_filename = "out/extr_time-wait-sync.c_clock_state_release_timerfd.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"TYPE_3__:init"(ptr writeonly captures(none) initializes((0, 8)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  %geptimerfd_event_source = getelementptr inbounds nuw i8, ptr %_this, i32 4
  store i32 0, ptr %geptimerfd_event_source, align 4
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @safe_close(i32) local_unnamed_addr addrspace(1) #1

declare i32 @sd_event_source_unref(i32) local_unnamed_addr addrspace(1) #1

define void @clock_state_release_timerfd(ptr captures(none) %sp) local_unnamed_addr addrspace(1) #1 {
body:
  %timerfd_event_source = getelementptr inbounds nuw i8, ptr %sp, i32 4
  %timerfd_event_source4 = load i32, ptr %timerfd_event_source, align 4
  %0 = tail call addrspace(1) i32 @sd_event_source_unref(i32 %timerfd_event_source4)
  store i32 %0, ptr %timerfd_event_source, align 4
  %timerfd_fd8 = load i32, ptr %sp, align 4
  %1 = tail call addrspace(1) i32 @safe_close(i32 %timerfd_fd8)
  store i32 %1, ptr %sp, align 4
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
