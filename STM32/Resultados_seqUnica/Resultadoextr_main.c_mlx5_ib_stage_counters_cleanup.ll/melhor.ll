; ModuleID = 'angha-ll-stm32f1/extr_main.c_mlx5_ib_stage_counters_cleanup.ll'
source_filename = "out/extr_main.c_mlx5_ib_stage_counters_cleanup.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@max_qp_cnt = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"mlx5_ib_dev:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i64 @MLX5_CAP_GEN(i32, i32) local_unnamed_addr addrspace(1) #1

declare i32 @mlx5_ib_dealloc_counters(ptr) local_unnamed_addr addrspace(1) #1

define void @mlx5_ib_stage_counters_cleanup(ptr %dev) local_unnamed_addr addrspace(1) #1 {
body:
  %mdev2 = load i32, ptr %dev, align 4
  %max_qp_cnt = load i32, ptr @max_qp_cnt, align 4
  %0 = tail call addrspace(1) i64 @MLX5_CAP_GEN(i32 %mdev2, i32 %max_qp_cnt)
  %cmpi.not = icmp eq i64 %0, 0
  br i1 %cmpi.not, label %if_cont, label %if_then

if_then:                                          ; preds = %body
  %1 = tail call addrspace(1) i32 @mlx5_ib_dealloc_counters(ptr nonnull %dev)
  br label %if_cont

if_cont:                                          ; preds = %if_then, %body
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
