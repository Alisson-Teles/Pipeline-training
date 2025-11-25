; ModuleID = 'angha-ll-stm32f1/extr_ccid.c_ccid_kmem_cache_destroy.ll'
source_filename = "out/extr_ccid.c_ccid_kmem_cache_destroy.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"kmem_cache:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @kmem_cache_destroy(ptr) local_unnamed_addr addrspace(1) #1

define void @ccid_kmem_cache_destroy(ptr %slab) local_unnamed_addr addrspace(1) #1 {
body:
  %0 = tail call addrspace(1) i32 @kmem_cache_destroy(ptr %slab)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
