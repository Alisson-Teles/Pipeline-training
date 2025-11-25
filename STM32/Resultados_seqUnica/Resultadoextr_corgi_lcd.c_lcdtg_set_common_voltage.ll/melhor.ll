; ModuleID = 'angha-ll-stm32f1/extr_corgi_lcd.c_lcdtg_set_common_voltage.ll'
source_filename = "out/extr_corgi_lcd.c_lcdtg_set_common_voltage.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"corgi_lcd:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @lcdtg_i2c_send_byte(ptr, i32, i32) local_unnamed_addr addrspace(1) #1

declare i32 @lcdtg_i2c_send_start(ptr, i32) local_unnamed_addr addrspace(1) #1

declare i32 @lcdtg_i2c_send_stop(ptr, i32) local_unnamed_addr addrspace(1) #1

declare i32 @lcdtg_i2c_wait_ack(ptr, i32) local_unnamed_addr addrspace(1) #1

define void @lcdtg_set_common_voltage(ptr %lcd, i32 %base_data, i32 %data) local_unnamed_addr addrspace(1) #1 {
body:
  %0 = tail call addrspace(1) i32 @lcdtg_i2c_send_start(ptr %lcd, i32 %base_data)
  %1 = tail call addrspace(1) i32 @lcdtg_i2c_send_byte(ptr %lcd, i32 %base_data, i32 156)
  %2 = tail call addrspace(1) i32 @lcdtg_i2c_wait_ack(ptr %lcd, i32 %base_data)
  %3 = tail call addrspace(1) i32 @lcdtg_i2c_send_byte(ptr %lcd, i32 %base_data, i32 0)
  %4 = tail call addrspace(1) i32 @lcdtg_i2c_wait_ack(ptr %lcd, i32 %base_data)
  %5 = tail call addrspace(1) i32 @lcdtg_i2c_send_byte(ptr %lcd, i32 %base_data, i32 %data)
  %6 = tail call addrspace(1) i32 @lcdtg_i2c_wait_ack(ptr %lcd, i32 %base_data)
  %7 = tail call addrspace(1) i32 @lcdtg_i2c_send_stop(ptr %lcd, i32 %base_data)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
