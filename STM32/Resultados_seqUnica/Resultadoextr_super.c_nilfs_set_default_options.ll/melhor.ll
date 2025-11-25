; ModuleID = 'angha-ll-stm32f1/extr_super.c_nilfs_set_default_options.ll'
source_filename = "out/extr_super.c_nilfs_set_default_options.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@NILFS_MOUNT_BARRIER = local_unnamed_addr global i32 0
@NILFS_MOUNT_ERRORS_CONT = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"nilfs_super_block:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"nilfs_sb_info:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none)
define void @nilfs_set_default_options(ptr writeonly captures(none) initializes((0, 4)) %sbi, ptr readnone captures(none) %sbp) local_unnamed_addr addrspace(1) #1 {
body:
  %NILFS_MOUNT_ERRORS_CONT = load i32, ptr @NILFS_MOUNT_ERRORS_CONT, align 4
  %NILFS_MOUNT_BARRIER = load i32, ptr @NILFS_MOUNT_BARRIER, align 4
  %binop = or i32 %NILFS_MOUNT_BARRIER, %NILFS_MOUNT_ERRORS_CONT
  store i32 %binop, ptr %sbi, align 4
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
