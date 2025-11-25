; ModuleID = 'angha-ll-stm32f1/extr_if_iwm_pcie_trans.c_iwm_set_pwr.ll'
source_filename = "out/extr_if_iwm_pcie_trans.c_iwm_set_pwr.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@IWM_APMG_PS_CTRL_MSK_PWR_SRC = local_unnamed_addr global i32 0
@IWM_APMG_PS_CTRL_REG = local_unnamed_addr global i32 0
@IWM_APMG_PS_CTRL_VAL_PWR_SRC_VMAIN = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"iwm_softc:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @iwm_set_bits_mask_prph(ptr, i32, i32, i32) local_unnamed_addr addrspace(1) #1

define void @iwm_set_pwr(ptr %sc) local_unnamed_addr addrspace(1) #1 {
body:
  %IWM_APMG_PS_CTRL_REG = load i32, ptr @IWM_APMG_PS_CTRL_REG, align 4
  %IWM_APMG_PS_CTRL_VAL_PWR_SRC_VMAIN = load i32, ptr @IWM_APMG_PS_CTRL_VAL_PWR_SRC_VMAIN, align 4
  %IWM_APMG_PS_CTRL_MSK_PWR_SRC = load i32, ptr @IWM_APMG_PS_CTRL_MSK_PWR_SRC, align 4
  %neg = xor i32 %IWM_APMG_PS_CTRL_MSK_PWR_SRC, -1
  %0 = tail call addrspace(1) i32 @iwm_set_bits_mask_prph(ptr %sc, i32 %IWM_APMG_PS_CTRL_REG, i32 %IWM_APMG_PS_CTRL_VAL_PWR_SRC_VMAIN, i32 %neg)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
