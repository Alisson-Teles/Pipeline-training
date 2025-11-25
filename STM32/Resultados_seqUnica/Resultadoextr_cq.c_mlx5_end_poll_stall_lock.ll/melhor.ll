; ModuleID = 'angha-ll-stm32f1/extr_cq.c_mlx5_end_poll_stall_lock.ll'
source_filename = "out/extr_cq.c_mlx5_end_poll_stall_lock.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@POLLING_MODE_STALL = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"ibv_cq_ex:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @_mlx5_end_poll(ptr, i32, i32) local_unnamed_addr addrspace(1) #1

define void @mlx5_end_poll_stall_lock(ptr %ibcq) local_unnamed_addr addrspace(1) #1 {
body:
  %POLLING_MODE_STALL = load i32, ptr @POLLING_MODE_STALL, align 4
  %0 = tail call addrspace(1) i32 @_mlx5_end_poll(ptr %ibcq, i32 1, i32 %POLLING_MODE_STALL)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
