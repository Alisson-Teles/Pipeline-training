; ModuleID = 'angha-ll-stm32f1/extr_pci.c_pci_power_reset.ll'
source_filename = "out/extr_pci.c_pci_power_reset.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@PCI_POWERSTATE_D0 = local_unnamed_addr global i32 0
@PCI_POWERSTATE_D3 = local_unnamed_addr global i32 0

declare i32 @pci_get_powerstate(i32) local_unnamed_addr addrspace(1) #0

declare i32 @pci_set_powerstate(i32, i32) local_unnamed_addr addrspace(1) #0

define noundef i32 @pci_power_reset(i32 %dev) local_unnamed_addr addrspace(1) #0 {
body:
  %0 = tail call addrspace(1) i32 @pci_get_powerstate(i32 %dev)
  %PCI_POWERSTATE_D0 = load i32, ptr @PCI_POWERSTATE_D0, align 4
  %cmpi.not = icmp ne i32 %0, %PCI_POWERSTATE_D0
  %PCI_POWERSTATE_D3 = load i32, ptr @PCI_POWERSTATE_D3, align 4
  %cmpi5 = icmp ne i32 %0, %PCI_POWERSTATE_D3
  %phi = select i1 %cmpi.not, i1 %cmpi5, i1 false
  br i1 %phi, label %if_then, label %if_cont

if_then:                                          ; preds = %body
  %1 = tail call addrspace(1) i32 @pci_set_powerstate(i32 %dev, i32 %PCI_POWERSTATE_D0)
  br label %if_cont

if_cont:                                          ; preds = %if_then, %body
  %PCI_POWERSTATE_D39 = load i32, ptr @PCI_POWERSTATE_D3, align 4
  %2 = tail call addrspace(1) i32 @pci_set_powerstate(i32 %dev, i32 %PCI_POWERSTATE_D39)
  %3 = tail call addrspace(1) i32 @pci_set_powerstate(i32 %dev, i32 %0)
  ret i32 0
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
