; ModuleID = 'angha-ll-stm32f1/extr_lcd_osk.c_osk_panel_disable.ll'
source_filename = "out/extr_lcd_osk.c_osk_panel_disable.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@OMAP_PWL_CLK_ENABLE = local_unnamed_addr global i32 0
@OMAP_PWL_ENABLE = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"lcd_panel:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @gpio_set_value(i32, i32) local_unnamed_addr addrspace(1) #1

declare i32 @omap_writeb(i32, i32) local_unnamed_addr addrspace(1) #1

define void @osk_panel_disable(ptr readnone captures(none) %panel) local_unnamed_addr addrspace(1) #1 {
body:
  %OMAP_PWL_ENABLE = load i32, ptr @OMAP_PWL_ENABLE, align 4
  %0 = tail call addrspace(1) i32 @omap_writeb(i32 0, i32 %OMAP_PWL_ENABLE)
  %OMAP_PWL_CLK_ENABLE = load i32, ptr @OMAP_PWL_CLK_ENABLE, align 4
  %1 = tail call addrspace(1) i32 @omap_writeb(i32 0, i32 %OMAP_PWL_CLK_ENABLE)
  %2 = tail call addrspace(1) i32 @gpio_set_value(i32 2, i32 0)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
