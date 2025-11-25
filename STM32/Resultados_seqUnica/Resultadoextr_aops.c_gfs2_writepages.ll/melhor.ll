; ModuleID = 'angha-ll-stm32f1/extr_aops.c_gfs2_writepages.ll'
source_filename = "out/extr_aops.c_gfs2_writepages.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@gfs2_get_block_noalloc = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"writeback_control:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"address_space:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @mpage_writepages(ptr, ptr, i32) local_unnamed_addr addrspace(1) #1

define i32 @gfs2_writepages(ptr %mapping, ptr %wbc) local_unnamed_addr addrspace(1) #1 {
body:
  %gfs2_get_block_noalloc = load i32, ptr @gfs2_get_block_noalloc, align 4
  %0 = tail call addrspace(1) i32 @mpage_writepages(ptr %mapping, ptr %wbc, i32 %gfs2_get_block_noalloc)
  ret i32 %0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
