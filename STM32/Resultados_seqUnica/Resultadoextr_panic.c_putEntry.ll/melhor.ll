; ModuleID = 'angha-ll-stm32f1/extr_panic.c_putEntry.ll'
source_filename = "out/extr_panic.c_putEntry.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@conststr = private unnamed_addr constant [3 x i8] c" 0x"
@conststr.1 = private unnamed_addr constant [3 x i8] c":0x"

declare i32 @panicPutHex(i32) local_unnamed_addr addrspace(1) #0

declare i32 @panicPutStr(ptr, i32 zeroext) local_unnamed_addr addrspace(1) #0

define void @putEntry(i32 %pc, i32 %sp) local_unnamed_addr addrspace(1) #0 {
body:
  %0 = tail call addrspace(1) i32 @panicPutStr(ptr nonnull @conststr, i32 zeroext 3)
  %1 = tail call addrspace(1) i32 @panicPutHex(i32 %pc)
  %2 = tail call addrspace(1) i32 @panicPutStr(ptr nonnull @conststr.1, i32 zeroext 3)
  %3 = tail call addrspace(1) i32 @panicPutHex(i32 %sp)
  ret void
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
