; ModuleID = 'angha-ll-stm32f1/extr_pt.c_pt_event_del.ll'
source_filename = "out/extr_pt.c_pt_event_del.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@PERF_EF_UPDATE = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"perf_event:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @pt_event_stop(ptr, i32) local_unnamed_addr addrspace(1) #1

define void @pt_event_del(ptr %event, i32 %mode) local_unnamed_addr addrspace(1) #1 {
body:
  %PERF_EF_UPDATE = load i32, ptr @PERF_EF_UPDATE, align 4
  %0 = tail call addrspace(1) i32 @pt_event_stop(ptr %event, i32 %PERF_EF_UPDATE)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
