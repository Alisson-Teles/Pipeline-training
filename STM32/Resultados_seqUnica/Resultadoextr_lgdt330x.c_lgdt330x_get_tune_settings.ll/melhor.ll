; ModuleID = 'angha-ll-stm32f1/extr_lgdt330x.c_lgdt330x_get_tune_settings.ll'
source_filename = "out/extr_lgdt330x.c_lgdt330x_get_tune_settings.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"dvb_frontend_tune_settings:init"(ptr writeonly captures(none) initializes((0, 4), (8, 24)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  %gepmax_drift = getelementptr inbounds nuw i8, ptr %_this, i32 8
  store i32 0, ptr %_this, align 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %gepmax_drift, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"dvb_frontend:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define noundef i32 @lgdt330x_get_tune_settings(ptr readnone captures(none) %fe, ptr writeonly captures(none) initializes((0, 4), (8, 24)) %fe_tune_settings) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 500, ptr %fe_tune_settings, align 4
  %max_drift = getelementptr inbounds nuw i8, ptr %fe_tune_settings, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %max_drift, i8 0, i64 16, i1 false)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
