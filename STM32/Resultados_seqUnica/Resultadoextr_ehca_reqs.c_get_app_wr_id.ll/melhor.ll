; ModuleID = 'angha-ll-stm32f1/extr_ehca_reqs.c_get_app_wr_id.ll'
source_filename = "out/extr_ehca_reqs.c_get_app_wr_id.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@QMAP_IDX_MASK = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none)
define i32 @get_app_wr_id(i32 %wr_id) local_unnamed_addr addrspace(1) #0 {
body:
  %QMAP_IDX_MASK = load i32, ptr @QMAP_IDX_MASK, align 4
  %binop = and i32 %QMAP_IDX_MASK, %wr_id
  ret i32 %binop
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
