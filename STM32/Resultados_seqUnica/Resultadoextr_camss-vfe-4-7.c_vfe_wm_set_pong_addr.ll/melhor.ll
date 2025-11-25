; ModuleID = 'angha-ll-stm32f1/extr_camss-vfe-4-7.c_vfe_wm_set_pong_addr.ll'
source_filename = "out/extr_camss-vfe-4-7.c_vfe_wm_set_pong_addr.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"vfe_device:init"(ptr writeonly captures(none) initializes((0, 8)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i64 0, ptr %_this, align 8
  ret void
}

declare i64 @VFE_0_BUS_IMAGE_MASTER_n_WR_PONG_ADDR(i32) local_unnamed_addr addrspace(1) #1

declare i32 @writel_relaxed(i32, i64) local_unnamed_addr addrspace(1) #1

define void @vfe_wm_set_pong_addr(ptr readonly captures(none) %vfe, i32 %wm, i32 %addr) local_unnamed_addr addrspace(1) #1 {
body:
  %base5 = load i64, ptr %vfe, align 8
  %0 = tail call addrspace(1) i64 @VFE_0_BUS_IMAGE_MASTER_n_WR_PONG_ADDR(i32 %wm)
  %binop = add i64 %0, %base5
  %1 = tail call addrspace(1) i32 @writel_relaxed(i32 %addr, i64 %binop)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
