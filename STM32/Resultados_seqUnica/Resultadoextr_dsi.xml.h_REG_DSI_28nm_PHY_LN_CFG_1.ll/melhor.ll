; ModuleID = 'angha-ll-stm32f1/extr_dsi.xml.h_REG_DSI_28nm_PHY_LN_CFG_1.ll'
source_filename = "out/extr_dsi.xml.h_REG_DSI_28nm_PHY_LN_CFG_1.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define range(i32 4, -56) i32 @REG_DSI_28nm_PHY_LN_CFG_1(i32 %i0) local_unnamed_addr addrspace(1) #0 {
body:
  %binop = shl i32 %i0, 6
  %binop3 = or disjoint i32 %binop, 4
  ret i32 %binop3
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
