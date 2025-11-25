; ModuleID = 'angha-ll-stm32f1/extr_isp1301_omap.c_isp1301_get_u8.ll'
source_filename = "out/extr_isp1301_omap.c_isp1301_get_u8.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"isp1301:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i64 @i2c_smbus_read_byte_data(i32, i64) local_unnamed_addr addrspace(1) #1

define i64 @isp1301_get_u8(ptr readonly captures(none) %isp, i64 %reg) local_unnamed_addr addrspace(1) #1 {
body:
  %client3 = load i32, ptr %isp, align 4
  %0 = tail call addrspace(1) i64 @i2c_smbus_read_byte_data(i32 %client3, i64 %reg)
  ret i64 %0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
