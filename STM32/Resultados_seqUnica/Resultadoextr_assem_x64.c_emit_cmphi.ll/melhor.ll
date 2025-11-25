; ModuleID = 'angha-ll-stm32f1/extr_assem_x64.c_emit_cmphi.ll'
source_filename = "out/extr_assem_x64.c_emit_cmphi.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

declare i32 @emit_adcimm(i32, i32) local_unnamed_addr addrspace(1) #0

declare i32 @emit_andimm(i32, i32, i32) local_unnamed_addr addrspace(1) #0

declare i32 @emit_cmp(i32, i32) local_unnamed_addr addrspace(1) #0

define void @emit_cmphi(i32 %s1, i32 %s2, i32 %sr, i32 %temp) local_unnamed_addr addrspace(1) #0 {
body:
  %0 = tail call addrspace(1) i32 @emit_andimm(i32 %sr, i32 -2, i32 %sr)
  %1 = tail call addrspace(1) i32 @emit_cmp(i32 %s1, i32 %s2)
  %2 = tail call addrspace(1) i32 @emit_adcimm(i32 0, i32 %sr)
  ret void
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
