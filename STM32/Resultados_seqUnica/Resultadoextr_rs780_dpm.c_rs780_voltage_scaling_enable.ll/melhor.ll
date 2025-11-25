; ModuleID = 'angha-ll-stm32f1/extr_rs780_dpm.c_rs780_voltage_scaling_enable.ll'
source_filename = "out/extr_rs780_dpm.c_rs780_voltage_scaling_enable.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@ENABLE_FV_THROT_IO = local_unnamed_addr global i32 0
@FVTHROT_CNTRL_REG = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"radeon_device:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @WREG32_P(i32, i32, i32) local_unnamed_addr addrspace(1) #1

define void @rs780_voltage_scaling_enable(ptr readnone captures(none) %rdev, i32 %enable) local_unnamed_addr addrspace(1) #1 {
body:
  %cmpi.not = icmp eq i32 %enable, 0
  %FVTHROT_CNTRL_REG5 = load i32, ptr @FVTHROT_CNTRL_REG, align 4
  %ENABLE_FV_THROT_IO6 = load i32, ptr @ENABLE_FV_THROT_IO, align 4
  %neg7 = xor i32 %ENABLE_FV_THROT_IO6, -1
  %.ENABLE_FV_THROT_IO6 = select i1 %cmpi.not, i32 0, i32 %ENABLE_FV_THROT_IO6
  %0 = tail call addrspace(1) i32 @WREG32_P(i32 %FVTHROT_CNTRL_REG5, i32 %.ENABLE_FV_THROT_IO6, i32 %neg7)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
