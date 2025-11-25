; ModuleID = 'angha-ll-stm32f1/extr_virtio_blk.c_vtblk_stop.ll'
source_filename = "out/extr_virtio_blk.c_vtblk_stop.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"vtblk_softc:init"(ptr writeonly captures(none) initializes((0, 8)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  %gepvtblk_vq = getelementptr inbounds nuw i8, ptr %_this, i32 4
  store i32 0, ptr %gepvtblk_vq, align 4
  ret void
}

declare i32 @virtio_stop(i32) local_unnamed_addr addrspace(1) #1

declare i32 @virtqueue_disable_intr(i32) local_unnamed_addr addrspace(1) #1

define void @vtblk_stop(ptr readonly captures(none) %sc) local_unnamed_addr addrspace(1) #1 {
body:
  %vtblk_vq = getelementptr inbounds nuw i8, ptr %sc, i32 4
  %vtblk_vq2 = load i32, ptr %vtblk_vq, align 4
  %0 = tail call addrspace(1) i32 @virtqueue_disable_intr(i32 %vtblk_vq2)
  %vtblk_dev4 = load i32, ptr %sc, align 4
  %1 = tail call addrspace(1) i32 @virtio_stop(i32 %vtblk_dev4)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
