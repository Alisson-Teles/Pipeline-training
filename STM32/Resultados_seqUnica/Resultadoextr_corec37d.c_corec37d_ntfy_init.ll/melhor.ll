; ModuleID = 'angha-ll-stm32f1/extr_corec37d.c_corec37d_ntfy_init.ll'
source_filename = "out/extr_corec37d.c_corec37d_ntfy_init.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"nouveau_bo:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @nouveau_bo_wr32(ptr, i32, i32) local_unnamed_addr addrspace(1) #1

define void @corec37d_ntfy_init(ptr %bo, i32 %offset) local_unnamed_addr addrspace(1) #1 {
body:
  %binop = sdiv i32 %offset, 4
  %0 = tail call addrspace(1) i32 @nouveau_bo_wr32(ptr %bo, i32 %binop, i32 0)
  %binop8 = add nsw i32 %binop, 1
  %1 = tail call addrspace(1) i32 @nouveau_bo_wr32(ptr %bo, i32 %binop8, i32 0)
  %binop12 = add nsw i32 %binop, 2
  %2 = tail call addrspace(1) i32 @nouveau_bo_wr32(ptr %bo, i32 %binop12, i32 0)
  %binop16 = add nsw i32 %binop, 3
  %3 = tail call addrspace(1) i32 @nouveau_bo_wr32(ptr %bo, i32 %binop16, i32 0)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
