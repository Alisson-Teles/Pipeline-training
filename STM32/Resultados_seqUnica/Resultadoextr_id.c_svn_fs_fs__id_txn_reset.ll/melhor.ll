; ModuleID = 'angha-ll-stm32f1/extr_id.c_svn_fs_fs__id_txn_reset.ll'
source_filename = "out/extr_id.c_svn_fs_fs__id_txn_reset.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@SVN_INVALID_REVNUM = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"TYPE_3__:init"(ptr writeonly captures(none) initializes((0, 12)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i64 0, ptr %_this, align 8
  %geprevision = getelementptr inbounds nuw i8, ptr %_this, i32 8
  store i32 0, ptr %geprevision, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none)
define void @svn_fs_fs__id_txn_reset(ptr writeonly captures(none) initializes((0, 12)) %txn_id) local_unnamed_addr addrspace(1) #1 {
body:
  %revision = getelementptr inbounds nuw i8, ptr %txn_id, i32 8
  %SVN_INVALID_REVNUM = load i32, ptr @SVN_INVALID_REVNUM, align 4
  store i32 %SVN_INVALID_REVNUM, ptr %revision, align 4
  store i64 0, ptr %txn_id, align 8
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
