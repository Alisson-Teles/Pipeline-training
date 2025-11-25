; ModuleID = 'angha-ll-stm32f1/extr_evp_extra_test.c_pkey_custom_pub_check.ll'
source_filename = "out/extr_evp_extra_test.c_pkey_custom_pub_check.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define noundef i32 @pkey_custom_pub_check(i32 %pkey) local_unnamed_addr addrspace(1) #0 {
body:
  ret i32 48879
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
