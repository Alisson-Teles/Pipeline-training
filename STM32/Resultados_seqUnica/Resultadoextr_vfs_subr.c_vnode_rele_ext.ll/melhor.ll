; ModuleID = 'angha-ll-stm32f1/extr_vfs_subr.c_vnode_rele_ext.ll'
source_filename = "out/extr_vfs_subr.c_vnode_rele_ext.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

declare i32 @vnode_rele_internal(i32, i32, i32, i32) local_unnamed_addr addrspace(1) #0

define void @vnode_rele_ext(i32 %vp, i32 %fmode, i32 %dont_reenter) local_unnamed_addr addrspace(1) #0 {
body:
  %0 = tail call addrspace(1) i32 @vnode_rele_internal(i32 %vp, i32 %fmode, i32 %dont_reenter, i32 0)
  ret void
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
