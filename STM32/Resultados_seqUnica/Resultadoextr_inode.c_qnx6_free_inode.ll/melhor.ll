; ModuleID = 'angha-ll-stm32f1/extr_inode.c_qnx6_free_inode.ll'
source_filename = "out/extr_inode.c_qnx6_free_inode.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@qnx6_inode_cachep = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"inode:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @QNX6_I(ptr) local_unnamed_addr addrspace(1) #1

declare i32 @kmem_cache_free(i32, i32) local_unnamed_addr addrspace(1) #1

define void @qnx6_free_inode(ptr %inode) local_unnamed_addr addrspace(1) #1 {
body:
  %qnx6_inode_cachep = load i32, ptr @qnx6_inode_cachep, align 4
  %0 = tail call addrspace(1) i32 @QNX6_I(ptr %inode)
  %1 = tail call addrspace(1) i32 @kmem_cache_free(i32 %qnx6_inode_cachep, i32 %0)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
