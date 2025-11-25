; ModuleID = 'angha-ll-stm32f1/extr_pipe.c_usbhs_pipe_enable.ll'
source_filename = "out/extr_pipe.c_usbhs_pipe_enable.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@PID_BUF = local_unnamed_addr global i32 0
@PID_MASK = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"usbhs_pipe:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @__usbhsp_pid_try_nak_if_stall(ptr) local_unnamed_addr addrspace(1) #1

declare i32 @usbhsp_pipectrl_set(ptr, i32, i32) local_unnamed_addr addrspace(1) #1

define void @usbhs_pipe_enable(ptr %pipe) local_unnamed_addr addrspace(1) #1 {
body:
  %0 = tail call addrspace(1) i32 @__usbhsp_pid_try_nak_if_stall(ptr %pipe)
  %PID_MASK = load i32, ptr @PID_MASK, align 4
  %PID_BUF = load i32, ptr @PID_BUF, align 4
  %1 = tail call addrspace(1) i32 @usbhsp_pipectrl_set(ptr %pipe, i32 %PID_MASK, i32 %PID_BUF)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
