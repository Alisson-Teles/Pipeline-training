; ModuleID = 'angha-ll-stm32f1/extr_http.c_evhttp_connection_set_ext_method_cmp.ll'
source_filename = "out/extr_http.c_evhttp_connection_set_ext_method_cmp.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"evhttp_connection:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @evhttp_connection_set_ext_method_cmp(ptr writeonly captures(none) initializes((0, 4)) %evcon, i32 %cmp) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 %cmp, ptr %evcon, align 4
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
