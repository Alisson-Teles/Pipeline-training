; ModuleID = 'angha-ll-stm32f1/extr_mdp5.xml.h_REG_MDP5_AD_CALIB_AB.ll'
source_filename = "out/extr_mdp5.xml.h_REG_MDP5_AD_CALIB_AB.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

declare i64 @__offset_AD(i64) local_unnamed_addr addrspace(1) #0

define i64 @REG_MDP5_AD_CALIB_AB(i64 %i0) local_unnamed_addr addrspace(1) #0 {
body:
  %0 = tail call addrspace(1) i64 @__offset_AD(i64 %i0)
  %binop = add i64 %0, 204
  ret i64 %binop
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
