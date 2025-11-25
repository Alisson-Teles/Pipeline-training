; ModuleID = 'angha-ll-stm32f1/extr_en_main.c_mlx5e_destroy_rqt.ll'
source_filename = "out/extr_en_main.c_mlx5e_destroy_rqt.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"mlx5e_rqt:init"(ptr writeonly captures(none) initializes((0, 8)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  %geprqtn = getelementptr inbounds nuw i8, ptr %_this, i32 4
  store i32 0, ptr %geprqtn, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"mlx5e_priv:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @mlx5_core_destroy_rqt(i32, i32) local_unnamed_addr addrspace(1) #1

define void @mlx5e_destroy_rqt(ptr readonly captures(none) %priv, ptr captures(none) initializes((0, 4)) %rqt) local_unnamed_addr addrspace(1) #1 {
body:
  store i32 0, ptr %rqt, align 4
  %mdev4 = load i32, ptr %priv, align 4
  %rqtn = getelementptr inbounds nuw i8, ptr %rqt, i32 4
  %rqtn6 = load i32, ptr %rqtn, align 4
  %0 = tail call addrspace(1) i32 @mlx5_core_destroy_rqt(i32 %mdev4, i32 %rqtn6)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
