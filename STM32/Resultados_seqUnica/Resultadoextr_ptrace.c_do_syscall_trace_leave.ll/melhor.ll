; ModuleID = 'angha-ll-stm32f1/extr_ptrace.c_do_syscall_trace_leave.ll'
source_filename = "out/extr_ptrace.c_do_syscall_trace_leave.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@TIF_SINGLESTEP = local_unnamed_addr global i32 0
@TIF_SYSCALL_TRACE = local_unnamed_addr global i32 0
@TIF_SYSCALL_TRACEPOINT = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"pt_regs:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @regs_return_value(ptr) local_unnamed_addr addrspace(1) #1

declare i32 @test_thread_flag(i32) local_unnamed_addr addrspace(1) #1

declare i32 @trace_sys_exit(ptr, i32) local_unnamed_addr addrspace(1) #1

declare i32 @tracehook_report_syscall_exit(ptr, i32) local_unnamed_addr addrspace(1) #1

define void @do_syscall_trace_leave(ptr %regs) local_unnamed_addr addrspace(1) #1 {
body:
  %TIF_SYSCALL_TRACEPOINT = load i32, ptr @TIF_SYSCALL_TRACEPOINT, align 4
  %0 = tail call addrspace(1) i32 @test_thread_flag(i32 %TIF_SYSCALL_TRACEPOINT)
  %cmpi.not = icmp eq i32 %0, 0
  br i1 %cmpi.not, label %if_cont, label %if_then

if_then:                                          ; preds = %body
  %1 = tail call addrspace(1) i32 @regs_return_value(ptr %regs)
  %2 = tail call addrspace(1) i32 @trace_sys_exit(ptr %regs, i32 %1)
  br label %if_cont

if_cont:                                          ; preds = %if_then, %body
  %TIF_SINGLESTEP = load i32, ptr @TIF_SINGLESTEP, align 4
  %3 = tail call addrspace(1) i32 @test_thread_flag(i32 %TIF_SINGLESTEP)
  %cmpi4.not = icmp eq i32 %3, 0
  br i1 %cmpi4.not, label %fullev, label %if_then6

fullev:                                           ; preds = %if_cont
  %TIF_SYSCALL_TRACE = load i32, ptr @TIF_SYSCALL_TRACE, align 4
  %4 = tail call addrspace(1) i32 @test_thread_flag(i32 %TIF_SYSCALL_TRACE)
  %cmpi5.not = icmp eq i32 %4, 0
  br i1 %cmpi5.not, label %if_cont10, label %if_then6

if_then6:                                         ; preds = %fullev, %if_cont
  %5 = tail call addrspace(1) i32 @tracehook_report_syscall_exit(ptr %regs, i32 %3)
  br label %if_cont10

if_cont10:                                        ; preds = %if_then6, %fullev
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
