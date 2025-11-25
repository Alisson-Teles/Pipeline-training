; ModuleID = 'angha-ll-stm32f1/extr_inode.c_minix_prepare_chunk.ll'
source_filename = "out/extr_inode.c_minix_prepare_chunk.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@minix_get_block = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"page:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @__block_write_begin(ptr, i32, i32 zeroext, i32) local_unnamed_addr addrspace(1) #1

define i32 @minix_prepare_chunk(ptr %page, i32 %pos, i32 zeroext %len) local_unnamed_addr addrspace(1) #1 {
body:
  %minix_get_block = load i32, ptr @minix_get_block, align 4
  %0 = tail call addrspace(1) i32 @__block_write_begin(ptr %page, i32 %pos, i32 zeroext %len, i32 %minix_get_block)
  ret i32 %0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
