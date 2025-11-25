; ModuleID = 'angha-ll-stm32f1/extr_huf_compress.c_HUF_optimalTableLog.ll'
source_filename = "out/extr_huf_compress.c_HUF_optimalTableLog.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

declare i32 @FSE_optimalTableLog_internal(i32 zeroext, i32 zeroext, i32 zeroext, i32) local_unnamed_addr addrspace(1) #0

define zeroext i32 @HUF_optimalTableLog(i32 zeroext %maxTableLog, i32 zeroext %srcSize, i32 zeroext %maxSymbolValue) local_unnamed_addr addrspace(1) #0 {
body:
  %0 = tail call addrspace(1) i32 @FSE_optimalTableLog_internal(i32 zeroext %maxTableLog, i32 zeroext %srcSize, i32 zeroext %maxSymbolValue, i32 1)
  ret i32 %0
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
