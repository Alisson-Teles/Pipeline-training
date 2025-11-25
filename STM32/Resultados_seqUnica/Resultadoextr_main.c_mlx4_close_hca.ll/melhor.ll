; ModuleID = 'angha-ll-stm32f1/extr_main.c_mlx4_close_hca.ll'
source_filename = "out/extr_main.c_mlx4_close_hca.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"mlx4_dev:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @mlx4_CLOSE_HCA(ptr, i32) local_unnamed_addr addrspace(1) #1

declare i32 @mlx4_free_icms(ptr) local_unnamed_addr addrspace(1) #1

declare i64 @mlx4_is_slave(ptr) local_unnamed_addr addrspace(1) #1

declare i32 @mlx4_slave_exit(ptr) local_unnamed_addr addrspace(1) #1

declare i32 @unmap_bf_area(ptr) local_unnamed_addr addrspace(1) #1

declare i32 @unmap_internal_clock(ptr) local_unnamed_addr addrspace(1) #1

define void @mlx4_close_hca(ptr %dev) local_unnamed_addr addrspace(1) #1 {
body:
  %0 = tail call addrspace(1) i32 @unmap_internal_clock(ptr %dev)
  %1 = tail call addrspace(1) i32 @unmap_bf_area(ptr %dev)
  %2 = tail call addrspace(1) i64 @mlx4_is_slave(ptr %dev)
  %cmpi.not = icmp eq i64 %2, 0
  br i1 %cmpi.not, label %if_else, label %if_then

if_then:                                          ; preds = %body
  %3 = tail call addrspace(1) i32 @mlx4_slave_exit(ptr %dev)
  br label %if_cont

if_else:                                          ; preds = %body
  %4 = tail call addrspace(1) i32 @mlx4_CLOSE_HCA(ptr %dev, i32 0)
  %5 = tail call addrspace(1) i32 @mlx4_free_icms(ptr %dev)
  br label %if_cont

if_cont:                                          ; preds = %if_else, %if_then
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
