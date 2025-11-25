; ModuleID = 'angha-ll-stm32f1/extr_dvd.c___dvd_mountsynccb.ll'
source_filename = "out/extr_dvd.c___dvd_mountsynccb.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@__dvd_wait_queue = local_unnamed_addr global i32 0

declare i32 @LWP_ThreadBroadcast(i32) local_unnamed_addr addrspace(1) #0

define void @__dvd_mountsynccb(i32 %result, i32 %block) local_unnamed_addr addrspace(1) #0 {
body:
  %__dvd_wait_queue = load i32, ptr @__dvd_wait_queue, align 4
  %0 = tail call addrspace(1) i32 @LWP_ThreadBroadcast(i32 %__dvd_wait_queue)
  ret void
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
