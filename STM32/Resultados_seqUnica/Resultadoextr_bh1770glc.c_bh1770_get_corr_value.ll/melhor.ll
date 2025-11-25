; ModuleID = 'angha-ll-stm32f1/extr_bh1770glc.c_bh1770_get_corr_value.ll'
source_filename = "out/extr_bh1770glc.c_bh1770_get_corr_value.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@BH1770_CALIB_SCALER = local_unnamed_addr global i32 0
@BH1770_LUX_CF_SCALE = local_unnamed_addr global i32 0
@BH1770_LUX_CORR_SCALE = local_unnamed_addr global i32 0
@BH1770_LUX_GA_SCALE = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"bh1770_chip:init"(ptr writeonly captures(none) initializes((0, 12)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  %geplux_calib = getelementptr inbounds nuw i8, ptr %_this, i32 8
  store i32 0, ptr %geplux_calib, align 4
  %geplux_cf = getelementptr inbounds nuw i8, ptr %_this, i32 4
  store i32 0, ptr %geplux_cf, align 4
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none)
define i32 @bh1770_get_corr_value(ptr readonly captures(none) %chip) local_unnamed_addr addrspace(1) #1 {
body:
  %BH1770_LUX_CORR_SCALE = load i32, ptr @BH1770_LUX_CORR_SCALE, align 4
  %lux_ga2 = load i32, ptr %chip, align 4
  %binop = mul i32 %lux_ga2, %BH1770_LUX_CORR_SCALE
  %BH1770_LUX_GA_SCALE = load i32, ptr @BH1770_LUX_GA_SCALE, align 4
  %binop3 = sdiv i32 %binop, %BH1770_LUX_GA_SCALE
  %lux_cf = getelementptr inbounds nuw i8, ptr %chip, i32 4
  %lux_cf6 = load i32, ptr %lux_cf, align 4
  %binop7 = mul i32 %lux_cf6, %binop3
  %BH1770_LUX_CF_SCALE = load i32, ptr @BH1770_LUX_CF_SCALE, align 4
  %binop8 = sdiv i32 %binop7, %BH1770_LUX_CF_SCALE
  %lux_calib = getelementptr inbounds nuw i8, ptr %chip, i32 8
  %lux_calib11 = load i32, ptr %lux_calib, align 4
  %binop12 = mul i32 %lux_calib11, %binop8
  %BH1770_CALIB_SCALER = load i32, ptr @BH1770_CALIB_SCALER, align 4
  %binop13 = sdiv i32 %binop12, %BH1770_CALIB_SCALER
  ret i32 %binop13
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
