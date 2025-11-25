; ModuleID = 'angha-ll-stm32f1/extr_unpack-trees.c_verify_uptodate_sparse.ll'
source_filename = "out/extr_unpack-trees.c_verify_uptodate_sparse.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@ERROR_SPARSE_NOT_UPTODATE_FILE = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"unpack_trees_options:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"cache_entry:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @verify_uptodate_1(ptr, ptr, i32) local_unnamed_addr addrspace(1) #1

define i32 @verify_uptodate_sparse(ptr %ce, ptr %o) local_unnamed_addr addrspace(1) #1 {
body:
  %ERROR_SPARSE_NOT_UPTODATE_FILE = load i32, ptr @ERROR_SPARSE_NOT_UPTODATE_FILE, align 4
  %0 = tail call addrspace(1) i32 @verify_uptodate_1(ptr %ce, ptr %o, i32 %ERROR_SPARSE_NOT_UPTODATE_FILE)
  ret i32 %0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
