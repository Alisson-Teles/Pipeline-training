; ModuleID = 'angha-ll-stm32f1/extr_rv6xx_dpm.c_rv6xx_enable_engine_spread_spectrum.ll'
source_filename = "out/extr_rv6xx_dpm.c_rv6xx_enable_engine_spread_spectrum.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@CG_SPLL_SPREAD_SPECTRUM_LOW = local_unnamed_addr global i64 0
@SSEN = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"radeon_device:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @WREG32_P(i64, i32, i32) local_unnamed_addr addrspace(1) #1

define void @rv6xx_enable_engine_spread_spectrum(ptr readnone captures(none) %rdev, i32 %index, i32 %enable) local_unnamed_addr addrspace(1) #1 {
body:
  %cmpi.not = icmp eq i32 %enable, 0
  %CG_SPLL_SPREAD_SPECTRUM_LOW8 = load i64, ptr @CG_SPLL_SPREAD_SPECTRUM_LOW, align 8
  %binop10 = shl i32 %index, 2
  %intcast11 = sext i32 %binop10 to i64
  %binop12 = add i64 %CG_SPLL_SPREAD_SPECTRUM_LOW8, %intcast11
  %SSEN13 = load i32, ptr @SSEN, align 4
  %neg14 = xor i32 %SSEN13, -1
  %.SSEN13 = select i1 %cmpi.not, i32 0, i32 %SSEN13
  %0 = tail call addrspace(1) i32 @WREG32_P(i64 %binop12, i32 %.SSEN13, i32 %neg14)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
