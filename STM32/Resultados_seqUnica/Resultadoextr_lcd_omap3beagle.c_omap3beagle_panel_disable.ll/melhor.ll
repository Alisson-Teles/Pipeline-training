; ModuleID = 'angha-ll-stm32f1/extr_lcd_omap3beagle.c_omap3beagle_panel_disable.ll'
source_filename = "out/extr_lcd_omap3beagle.c_omap3beagle_panel_disable.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@LCD_PANEL_ENABLE_GPIO = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"lcd_panel:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @gpio_set_value(i32, i32) local_unnamed_addr addrspace(1) #1

define void @omap3beagle_panel_disable(ptr readnone captures(none) %panel) local_unnamed_addr addrspace(1) #1 {
body:
  %LCD_PANEL_ENABLE_GPIO = load i32, ptr @LCD_PANEL_ENABLE_GPIO, align 4
  %0 = tail call addrspace(1) i32 @gpio_set_value(i32 %LCD_PANEL_ENABLE_GPIO, i32 0)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
