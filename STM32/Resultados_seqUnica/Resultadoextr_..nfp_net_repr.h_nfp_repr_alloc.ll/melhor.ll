; ModuleID = 'angha-ll-stm32f1/extr_..nfp_net_repr.h_nfp_repr_alloc.ll'
source_filename = "out/extr_..nfp_net_repr.h_nfp_repr_alloc.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

%net_device = type { i32 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"nfp_app:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"net_device:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare %net_device @nfp_repr_alloc_mqs(ptr, i32, i32) local_unnamed_addr addrspace(1) #1

define %net_device @nfp_repr_alloc(ptr %app) local_unnamed_addr addrspace(1) #1 {
body:
  %0 = tail call addrspace(1) %net_device @nfp_repr_alloc_mqs(ptr %app, i32 1, i32 1)
  ret %net_device %0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
