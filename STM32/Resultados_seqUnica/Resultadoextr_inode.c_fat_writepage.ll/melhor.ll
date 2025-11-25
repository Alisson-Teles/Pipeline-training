; ModuleID = 'angha-ll-stm32f1/extr_inode.c_fat_writepage.ll'
source_filename = "out/extr_inode.c_fat_writepage.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@fat_get_block = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"writeback_control:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"page:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @block_write_full_page(ptr, i32, ptr) local_unnamed_addr addrspace(1) #1

define i32 @fat_writepage(ptr %page, ptr %wbc) local_unnamed_addr addrspace(1) #1 {
body:
  %fat_get_block = load i32, ptr @fat_get_block, align 4
  %0 = tail call addrspace(1) i32 @block_write_full_page(ptr %page, i32 %fat_get_block, ptr %wbc)
  ret i32 %0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
