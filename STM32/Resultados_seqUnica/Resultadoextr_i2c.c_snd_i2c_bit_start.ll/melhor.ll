; ModuleID = 'angha-ll-stm32f1/extr_i2c.c_snd_i2c_bit_start.ll'
source_filename = "out/extr_i2c.c_snd_i2c_bit_start.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"snd_i2c_bus:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @snd_i2c_bit_direction(ptr, i32, i32) local_unnamed_addr addrspace(1) #1

declare i32 @snd_i2c_bit_hw_start(ptr) local_unnamed_addr addrspace(1) #1

declare i32 @snd_i2c_bit_set(ptr, i32, i32) local_unnamed_addr addrspace(1) #1

define void @snd_i2c_bit_start(ptr %bus) local_unnamed_addr addrspace(1) #1 {
body:
  %0 = tail call addrspace(1) i32 @snd_i2c_bit_hw_start(ptr %bus)
  %1 = tail call addrspace(1) i32 @snd_i2c_bit_direction(ptr %bus, i32 1, i32 1)
  %2 = tail call addrspace(1) i32 @snd_i2c_bit_set(ptr %bus, i32 1, i32 1)
  %3 = tail call addrspace(1) i32 @snd_i2c_bit_set(ptr %bus, i32 1, i32 0)
  %4 = tail call addrspace(1) i32 @snd_i2c_bit_set(ptr %bus, i32 0, i32 0)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
