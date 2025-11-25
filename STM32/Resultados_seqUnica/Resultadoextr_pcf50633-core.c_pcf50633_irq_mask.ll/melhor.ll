; ModuleID = 'angha-ll-stm32f1/extr_pcf50633-core.c_pcf50633_irq_mask.ll'
source_filename = "out/extr_pcf50633-core.c_pcf50633_irq_mask.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@conststr = private unnamed_addr constant [15 x i8] c"Masking IRQ %d\0A"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"pcf50633:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @__pcf50633_irq_mask_set(ptr, i32, i32) local_unnamed_addr addrspace(1) #1

declare i32 @dev_info(i32, ptr, i32, i32 zeroext) local_unnamed_addr addrspace(1) #1

define i32 @pcf50633_irq_mask(ptr %pcf, i32 %irq) local_unnamed_addr addrspace(1) #1 {
body:
  %dev3 = load i32, ptr %pcf, align 4
  %0 = tail call addrspace(1) i32 @dev_info(i32 %dev3, ptr nonnull @conststr, i32 %irq, i32 zeroext 15)
  %1 = tail call addrspace(1) i32 @__pcf50633_irq_mask_set(ptr nonnull %pcf, i32 %irq, i32 1)
  ret i32 %1
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
