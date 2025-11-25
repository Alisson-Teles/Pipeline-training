; ModuleID = 'angha-ll-stm32f1/extr_cryptosoft.c_swcr_probe.ll'
source_filename = "out/extr_cryptosoft.c_swcr_probe.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@BUS_PROBE_NOWILDCARD = local_unnamed_addr global i32 0
@conststr = private unnamed_addr constant [15 x i8] c"software crypto"

declare i32 @device_set_desc(i32, ptr, i32 zeroext) local_unnamed_addr addrspace(1) #0

define i32 @swcr_probe(i32 %dev) local_unnamed_addr addrspace(1) #0 {
body:
  %0 = tail call addrspace(1) i32 @device_set_desc(i32 %dev, ptr nonnull @conststr, i32 zeroext 15)
  %BUS_PROBE_NOWILDCARD = load i32, ptr @BUS_PROBE_NOWILDCARD, align 4
  ret i32 %BUS_PROBE_NOWILDCARD
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
