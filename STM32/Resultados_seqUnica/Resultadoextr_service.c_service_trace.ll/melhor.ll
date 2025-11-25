; ModuleID = 'angha-ll-stm32f1/extr_service.c_service_trace.ll'
source_filename = "out/extr_service.c_service_trace.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@conststr = private unnamed_addr constant [5 x i8] c"TRACE"

declare i32 @send_msg(ptr, ptr, i32 zeroext, i32 zeroext) local_unnamed_addr addrspace(1) #0

define void @service_trace(ptr %msg, i32 zeroext %msg.size) local_unnamed_addr addrspace(1) #0 {
body:
  %0 = tail call addrspace(1) i32 @send_msg(ptr nonnull @conststr, ptr %msg, i32 zeroext 5, i32 zeroext %msg.size)
  ret void
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
