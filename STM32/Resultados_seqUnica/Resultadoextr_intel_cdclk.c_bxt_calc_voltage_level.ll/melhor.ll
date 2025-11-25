; ModuleID = 'angha-ll-stm32f1/extr_intel_cdclk.c_bxt_calc_voltage_level.ll'
source_filename = "out/extr_intel_cdclk.c_bxt_calc_voltage_level.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

declare i32 @DIV_ROUND_UP(i32, i32) local_unnamed_addr addrspace(1) #0

define i32 @bxt_calc_voltage_level(i32 %cdclk) local_unnamed_addr addrspace(1) #0 {
body:
  %0 = tail call addrspace(1) i32 @DIV_ROUND_UP(i32 %cdclk, i32 25000)
  ret i32 %0
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
