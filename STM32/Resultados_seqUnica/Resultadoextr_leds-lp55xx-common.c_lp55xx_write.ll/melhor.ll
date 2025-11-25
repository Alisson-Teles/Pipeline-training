; ModuleID = 'angha-ll-stm32f1/extr_leds-lp55xx-common.c_lp55xx_write.ll'
source_filename = "out/extr_leds-lp55xx-common.c_lp55xx_write.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"lp55xx_chip:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @i2c_smbus_write_byte_data(i32, i32, i32) local_unnamed_addr addrspace(1) #1

define i32 @lp55xx_write(ptr readonly captures(none) %chip, i32 %reg, i32 %val) local_unnamed_addr addrspace(1) #1 {
body:
  %cl4 = load i32, ptr %chip, align 4
  %0 = tail call addrspace(1) i32 @i2c_smbus_write_byte_data(i32 %cl4, i32 %reg, i32 %val)
  ret i32 %0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
