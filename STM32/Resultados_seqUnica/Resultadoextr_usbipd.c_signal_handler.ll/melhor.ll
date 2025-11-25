; ModuleID = 'angha-ll-stm32f1/extr_usbipd.c_signal_handler.ll'
source_filename = "out/extr_usbipd.c_signal_handler.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@conststr = private unnamed_addr constant [20 x i8] c"received '%s' signal"

declare i32 @dbg(ptr, i32, i32 zeroext) local_unnamed_addr addrspace(1) #0

declare i32 @strsignal(i32) local_unnamed_addr addrspace(1) #0

define void @signal_handler(i32 %i) local_unnamed_addr addrspace(1) #0 {
body:
  %0 = tail call addrspace(1) i32 @strsignal(i32 %i)
  %1 = tail call addrspace(1) i32 @dbg(ptr nonnull @conststr, i32 %0, i32 zeroext 20)
  ret void
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
