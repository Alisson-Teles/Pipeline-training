; ModuleID = 'angha-ll-stm32f1/extr_event.c_event_init.ll'
source_filename = "out/extr_event.c_event_init.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@PERF_TYPE_RAW = local_unnamed_addr global i32 0
@conststr = private unnamed_addr constant [5 x i8] c"event"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"event:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @event_init_opts(ptr, i32, i32, ptr, i32 zeroext) local_unnamed_addr addrspace(1) #1

define void @event_init(ptr %e, i32 %config) local_unnamed_addr addrspace(1) #1 {
body:
  %PERF_TYPE_RAW = load i32, ptr @PERF_TYPE_RAW, align 4
  %0 = tail call addrspace(1) i32 @event_init_opts(ptr %e, i32 %config, i32 %PERF_TYPE_RAW, ptr nonnull @conststr, i32 zeroext 5)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
