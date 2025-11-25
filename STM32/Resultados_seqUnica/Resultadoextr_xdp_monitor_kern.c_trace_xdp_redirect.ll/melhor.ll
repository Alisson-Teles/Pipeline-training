; ModuleID = 'angha-ll-stm32f1/extr_xdp_monitor_kern.c_trace_xdp_redirect.ll'
source_filename = "out/extr_xdp_monitor_kern.c_trace_xdp_redirect.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"xdp_redirect_ctx:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @xdp_redirect_collect_stat(ptr) local_unnamed_addr addrspace(1) #1

define i32 @trace_xdp_redirect(ptr %ctx) local_unnamed_addr addrspace(1) #1 {
body:
  %0 = tail call addrspace(1) i32 @xdp_redirect_collect_stat(ptr %ctx)
  ret i32 %0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
