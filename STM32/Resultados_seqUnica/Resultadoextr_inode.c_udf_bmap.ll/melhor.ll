; ModuleID = 'angha-ll-stm32f1/extr_inode.c_udf_bmap.ll'
source_filename = "out/extr_inode.c_udf_bmap.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@udf_get_block = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"address_space:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @generic_block_bmap(ptr, i32, i32) local_unnamed_addr addrspace(1) #1

define i32 @udf_bmap(ptr %mapping, i32 %block) local_unnamed_addr addrspace(1) #1 {
body:
  %udf_get_block = load i32, ptr @udf_get_block, align 4
  %0 = tail call addrspace(1) i32 @generic_block_bmap(ptr %mapping, i32 %block, i32 %udf_get_block)
  ret i32 %0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
