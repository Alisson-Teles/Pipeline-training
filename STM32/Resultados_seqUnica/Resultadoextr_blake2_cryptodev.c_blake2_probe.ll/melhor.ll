; ModuleID = 'angha-ll-stm32f1/extr_blake2_cryptodev.c_blake2_probe.ll'
source_filename = "out/extr_blake2_cryptodev.c_blake2_probe.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@conststr = private unnamed_addr constant [6 x i8] c"Blake2"

declare i32 @device_set_desc(i32, ptr, i32 zeroext) local_unnamed_addr addrspace(1) #0

define noundef i32 @blake2_probe(i32 %dev) local_unnamed_addr addrspace(1) #0 {
body:
  %0 = tail call addrspace(1) i32 @device_set_desc(i32 %dev, ptr nonnull @conststr, i32 zeroext 6)
  ret i32 0
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
