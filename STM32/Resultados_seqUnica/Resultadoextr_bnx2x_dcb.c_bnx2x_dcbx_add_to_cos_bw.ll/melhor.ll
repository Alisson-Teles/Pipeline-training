; ModuleID = 'angha-ll-stm32f1/extr_bnx2x_dcb.c_bnx2x_dcbx_add_to_cos_bw.ll'
source_filename = "out/extr_bnx2x_dcb.c_bnx2x_dcbx_add_to_cos_bw.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@DCBX_INVALID_COS_BW = local_unnamed_addr global i64 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"cos_entry_help_data:init"(ptr writeonly captures(none) initializes((0, 8)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i64 0, ptr %_this, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"bnx2x:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none)
define void @bnx2x_dcbx_add_to_cos_bw(ptr readnone captures(none) %bp, ptr captures(none) %data, i64 %pg_bw) local_unnamed_addr addrspace(1) #1 {
body:
  %cos_bw4 = load i64, ptr %data, align 8
  %DCBX_INVALID_COS_BW = load i64, ptr @DCBX_INVALID_COS_BW, align 8
  %cmpi = icmp eq i64 %cos_bw4, %DCBX_INVALID_COS_BW
  %binop = select i1 %cmpi, i64 0, i64 %cos_bw4
  %spec.select = add i64 %binop, %pg_bw
  store i64 %spec.select, ptr %data, align 8
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
