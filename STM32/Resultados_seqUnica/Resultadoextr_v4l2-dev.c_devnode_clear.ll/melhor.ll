; ModuleID = 'angha-ll-stm32f1/extr_v4l2-dev.c_devnode_clear.ll'
source_filename = "out/extr_v4l2-dev.c_devnode_clear.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"video_device:init"(ptr writeonly captures(none) initializes((0, 8)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  %gepnum = getelementptr inbounds nuw i8, ptr %_this, i32 4
  store i32 0, ptr %gepnum, align 4
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @clear_bit(i32, i32) local_unnamed_addr addrspace(1) #1

declare i32 @devnode_bits(i32) local_unnamed_addr addrspace(1) #1

define void @devnode_clear(ptr readonly captures(none) %vdev) local_unnamed_addr addrspace(1) #1 {
body:
  %num = getelementptr inbounds nuw i8, ptr %vdev, i32 4
  %num2 = load i32, ptr %num, align 4
  %vfl_type4 = load i32, ptr %vdev, align 4
  %0 = tail call addrspace(1) i32 @devnode_bits(i32 %vfl_type4)
  %1 = tail call addrspace(1) i32 @clear_bit(i32 %num2, i32 %0)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
