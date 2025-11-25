; ModuleID = 'angha-ll-stm32f1/extr_tea6330t.c_snd_tea6330_free.ll'
source_filename = "out/extr_tea6330t.c_snd_tea6330_free.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"snd_i2c_device:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @kfree(i32) local_unnamed_addr addrspace(1) #1

define void @snd_tea6330_free(ptr readonly captures(none) %device) local_unnamed_addr addrspace(1) #1 {
body:
  %private_data2 = load i32, ptr %device, align 4
  %0 = tail call addrspace(1) i32 @kfree(i32 %private_data2)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
