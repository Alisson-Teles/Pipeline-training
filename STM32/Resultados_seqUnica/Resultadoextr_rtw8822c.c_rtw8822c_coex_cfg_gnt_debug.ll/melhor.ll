; ModuleID = 'angha-ll-stm32f1/extr_rtw8822c.c_rtw8822c_coex_cfg_gnt_debug.ll'
source_filename = "out/extr_rtw8822c.c_rtw8822c_coex_cfg_gnt_debug.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"rtw_dev:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @BIT(i32) local_unnamed_addr addrspace(1) #1

declare i32 @rtw_write8_mask(ptr, i32, i32, i32) local_unnamed_addr addrspace(1) #1

define void @rtw8822c_coex_cfg_gnt_debug(ptr %rtwdev) local_unnamed_addr addrspace(1) #1 {
body:
  %0 = tail call addrspace(1) i32 @BIT(i32 4)
  %1 = tail call addrspace(1) i32 @rtw_write8_mask(ptr %rtwdev, i32 102, i32 %0, i32 0)
  %2 = tail call addrspace(1) i32 @BIT(i32 0)
  %3 = tail call addrspace(1) i32 @rtw_write8_mask(ptr %rtwdev, i32 103, i32 %2, i32 0)
  %4 = tail call addrspace(1) i32 @BIT(i32 3)
  %5 = tail call addrspace(1) i32 @rtw_write8_mask(ptr %rtwdev, i32 66, i32 %4, i32 0)
  %6 = tail call addrspace(1) i32 @BIT(i32 7)
  %7 = tail call addrspace(1) i32 @rtw_write8_mask(ptr %rtwdev, i32 101, i32 %6, i32 0)
  %8 = tail call addrspace(1) i32 @BIT(i32 3)
  %9 = tail call addrspace(1) i32 @rtw_write8_mask(ptr %rtwdev, i32 115, i32 %8, i32 0)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
