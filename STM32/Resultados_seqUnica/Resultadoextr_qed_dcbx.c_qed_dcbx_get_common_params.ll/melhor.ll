; ModuleID = 'angha-ll-stm32f1/extr_qed_dcbx.c_qed_dcbx_get_common_params.ll'
source_filename = "out/extr_qed_dcbx.c_qed_dcbx_get_common_params.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"qed_hwfn:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"qed_dcbx_params:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"dcbx_ets_feature:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"dcbx_app_priority_feature:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"dcbx_app_priority_entry:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @qed_dcbx_get_app_data(ptr, ptr, ptr, ptr, i32) local_unnamed_addr addrspace(1) #1

declare i32 @qed_dcbx_get_ets_data(ptr, ptr, ptr) local_unnamed_addr addrspace(1) #1

declare i32 @qed_dcbx_get_pfc_data(ptr, i32, ptr) local_unnamed_addr addrspace(1) #1

define void @qed_dcbx_get_common_params(ptr %p_hwfn, ptr %p_app, ptr %p_tbl, ptr %p_ets, i32 %pfc, ptr %p_params, i32 %ieee) local_unnamed_addr addrspace(1) #1 {
body:
  %0 = tail call addrspace(1) i32 @qed_dcbx_get_app_data(ptr %p_hwfn, ptr %p_app, ptr %p_tbl, ptr %p_params, i32 %ieee)
  %1 = tail call addrspace(1) i32 @qed_dcbx_get_ets_data(ptr %p_hwfn, ptr %p_ets, ptr %p_params)
  %2 = tail call addrspace(1) i32 @qed_dcbx_get_pfc_data(ptr %p_hwfn, i32 %pfc, ptr %p_params)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
