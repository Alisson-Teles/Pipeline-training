; ModuleID = 'angha-ll-stm32f1/extr_ctree.h_btrfs_file_extent_inline_item_len.ll'
source_filename = "out/extr_ctree.h_btrfs_file_extent_inline_item_len.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@BTRFS_FILE_EXTENT_INLINE_DATA_START = local_unnamed_addr global i64 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"extent_buffer:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"btrfs_item:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i64 @btrfs_item_size(ptr, ptr) local_unnamed_addr addrspace(1) #1

define i64 @btrfs_file_extent_inline_item_len(ptr %eb, ptr %e) local_unnamed_addr addrspace(1) #1 {
body:
  %0 = tail call addrspace(1) i64 @btrfs_item_size(ptr %eb, ptr %e)
  %BTRFS_FILE_EXTENT_INLINE_DATA_START = load i64, ptr @BTRFS_FILE_EXTENT_INLINE_DATA_START, align 8
  %binop = sub i64 %0, %BTRFS_FILE_EXTENT_INLINE_DATA_START
  ret i64 %binop
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
