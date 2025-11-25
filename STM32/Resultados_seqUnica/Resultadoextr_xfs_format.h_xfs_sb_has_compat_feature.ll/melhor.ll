; ModuleID = 'angha-ll-stm32f1/extr_xfs_format.h_xfs_sb_has_compat_feature.ll'
source_filename = "out/extr_xfs_format.h_xfs_sb_has_compat_feature.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"xfs_sb:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read)
define range(i32 0, 2) i32 @xfs_sb_has_compat_feature(ptr readonly captures(none) %sbp, i32 %feature) local_unnamed_addr addrspace(1) #1 {
body:
  %sb_features_compat3 = load i32, ptr %sbp, align 4
  %binop = and i32 %sb_features_compat3, %feature
  %cmpi = icmp ne i32 %binop, 0
  %zext = zext i1 %cmpi to i32
  ret i32 %zext
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
