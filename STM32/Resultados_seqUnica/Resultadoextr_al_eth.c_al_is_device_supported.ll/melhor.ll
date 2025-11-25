; ModuleID = 'angha-ll-stm32f1/extr_al_eth.c_al_is_device_supported.ll'
source_filename = "out/extr_al_eth.c_al_is_device_supported.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@PCI_DEVICE_ID_AL_ETH = local_unnamed_addr global i64 0
@PCI_DEVICE_ID_AL_ETH_ADVANCED = local_unnamed_addr global i64 0
@PCI_DEVICE_ID_AL_ETH_FPGA_NIC = local_unnamed_addr global i64 0
@PCI_DEVICE_ID_AL_ETH_NIC = local_unnamed_addr global i64 0
@PCI_VENDOR_ID_ANNAPURNA_LABS = local_unnamed_addr global i64 0

declare i64 @pci_get_device(i32) local_unnamed_addr addrspace(1) #0

declare i64 @pci_get_vendor(i32) local_unnamed_addr addrspace(1) #0

define range(i32 0, 2) i32 @al_is_device_supported(i32 %dev) local_unnamed_addr addrspace(1) #0 {
body:
  %0 = tail call addrspace(1) i64 @pci_get_vendor(i32 %dev)
  %1 = tail call addrspace(1) i64 @pci_get_device(i32 %dev)
  %PCI_VENDOR_ID_ANNAPURNA_LABS = load i64, ptr @PCI_VENDOR_ID_ANNAPURNA_LABS, align 8
  %cmpi = icmp eq i64 %0, %PCI_VENDOR_ID_ANNAPURNA_LABS
  br i1 %cmpi, label %fullev, label %phiblock

fullev:                                           ; preds = %body
  %PCI_DEVICE_ID_AL_ETH = load i64, ptr @PCI_DEVICE_ID_AL_ETH, align 8
  %cmpi6 = icmp eq i64 %1, %PCI_DEVICE_ID_AL_ETH
  %PCI_DEVICE_ID_AL_ETH_ADVANCED = load i64, ptr @PCI_DEVICE_ID_AL_ETH_ADVANCED, align 8
  %cmpi11 = icmp eq i64 %1, %PCI_DEVICE_ID_AL_ETH_ADVANCED
  %phi9 = select i1 %cmpi6, i1 true, i1 %cmpi11
  %PCI_DEVICE_ID_AL_ETH_NIC = load i64, ptr @PCI_DEVICE_ID_AL_ETH_NIC, align 8
  %cmpi16 = icmp eq i64 %1, %PCI_DEVICE_ID_AL_ETH_NIC
  %or.cond = select i1 %phi9, i1 true, i1 %cmpi16
  br i1 %or.cond, label %phiblock, label %fullev18

phiblock:                                         ; preds = %fullev18, %fullev, %body
  %phi = phi i32 [ 0, %body ], [ %2, %fullev18 ], [ 1, %fullev ]
  ret i32 %phi

fullev18:                                         ; preds = %fullev
  %PCI_DEVICE_ID_AL_ETH_FPGA_NIC = load i64, ptr @PCI_DEVICE_ID_AL_ETH_FPGA_NIC, align 8
  %cmpi22 = icmp eq i64 %1, %PCI_DEVICE_ID_AL_ETH_FPGA_NIC
  %2 = zext i1 %cmpi22 to i32
  br label %phiblock
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
