; ModuleID = 'angha-ll-stm32f1/extr_cvmx-fau.h_cvmx_fau_fetch_and_add16.ll'
source_filename = "out/extr_cvmx-fau.h_cvmx_fau_fetch_and_add16.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

declare i32 @__cvmx_fau_atomic_address(i32, i32, i32) local_unnamed_addr addrspace(1) #0

declare i32 @cvmx_read64_int16(i32) local_unnamed_addr addrspace(1) #0

define i32 @cvmx_fau_fetch_and_add16(i32 %reg, i32 %value) local_unnamed_addr addrspace(1) #0 {
body:
  %0 = tail call addrspace(1) i32 @__cvmx_fau_atomic_address(i32 0, i32 %reg, i32 %value)
  %1 = tail call addrspace(1) i32 @cvmx_read64_int16(i32 %0)
  ret i32 %1
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
