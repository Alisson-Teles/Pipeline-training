; ModuleID = 'angha-ll-stm32f1/extr_stm32-booster.c_stm32mp1_booster_disable.ll'
source_filename = "out/extr_stm32-booster.c_stm32mp1_booster_disable.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@STM32MP1_SYSCFG_EN_BOOSTER_MASK = local_unnamed_addr global i32 0
@STM32MP1_SYSCFG_PMCCLRR = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"regulator_dev:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @regmap_write(i32, i32, i32) local_unnamed_addr addrspace(1) #1

define i32 @stm32mp1_booster_disable(ptr readonly captures(none) %rdev) local_unnamed_addr addrspace(1) #1 {
body:
  %regmap2 = load i32, ptr %rdev, align 4
  %STM32MP1_SYSCFG_PMCCLRR = load i32, ptr @STM32MP1_SYSCFG_PMCCLRR, align 4
  %STM32MP1_SYSCFG_EN_BOOSTER_MASK = load i32, ptr @STM32MP1_SYSCFG_EN_BOOSTER_MASK, align 4
  %0 = tail call addrspace(1) i32 @regmap_write(i32 %regmap2, i32 %STM32MP1_SYSCFG_PMCCLRR, i32 %STM32MP1_SYSCFG_EN_BOOSTER_MASK)
  ret i32 %0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
