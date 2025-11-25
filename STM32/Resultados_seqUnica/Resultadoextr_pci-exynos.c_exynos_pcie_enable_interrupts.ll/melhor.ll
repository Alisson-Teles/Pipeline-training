; ModuleID = 'angha-ll-stm32f1/extr_pci-exynos.c_exynos_pcie_enable_interrupts.ll'
source_filename = "out/extr_pci-exynos.c_exynos_pcie_enable_interrupts.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@CONFIG_PCI_MSI = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"exynos_pcie:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i64 @IS_ENABLED(i32) local_unnamed_addr addrspace(1) #1

declare i32 @exynos_pcie_enable_irq_pulse(ptr) local_unnamed_addr addrspace(1) #1

declare i32 @exynos_pcie_msi_init(ptr) local_unnamed_addr addrspace(1) #1

define void @exynos_pcie_enable_interrupts(ptr %ep) local_unnamed_addr addrspace(1) #1 {
body:
  %0 = tail call addrspace(1) i32 @exynos_pcie_enable_irq_pulse(ptr %ep)
  %CONFIG_PCI_MSI = load i32, ptr @CONFIG_PCI_MSI, align 4
  %1 = tail call addrspace(1) i64 @IS_ENABLED(i32 %CONFIG_PCI_MSI)
  %cmpi.not = icmp eq i64 %1, 0
  br i1 %cmpi.not, label %if_cont, label %if_then

if_then:                                          ; preds = %body
  %2 = tail call addrspace(1) i32 @exynos_pcie_msi_init(ptr %ep)
  br label %if_cont

if_cont:                                          ; preds = %if_then, %body
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
