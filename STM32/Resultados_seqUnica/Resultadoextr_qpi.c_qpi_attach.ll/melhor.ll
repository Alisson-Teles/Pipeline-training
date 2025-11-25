; ModuleID = 'angha-ll-stm32f1/extr_qpi.c_qpi_attach.ll'
source_filename = "out/extr_qpi.c_qpi_attach.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@PCI_BUSMAX = local_unnamed_addr global i32 0

declare i32 @bus_generic_attach(i32) local_unnamed_addr addrspace(1) #0

declare i32 @qpi_probe_pcib(i32, i32) local_unnamed_addr addrspace(1) #0

define i32 @qpi_attach(i32 %dev) local_unnamed_addr addrspace(1) #0 {
body:
  %PCI_BUSMAX = load i32, ptr @PCI_BUSMAX, align 4
  %cmpi6 = icmp sgt i32 %PCI_BUSMAX, -1
  br i1 %cmpi6, label %while_body, label %while_end

while_body:                                       ; preds = %while_body, %body
  %bus.07 = phi i32 [ %binop, %while_body ], [ %PCI_BUSMAX, %body ]
  %0 = tail call addrspace(1) i32 @qpi_probe_pcib(i32 %dev, i32 %bus.07)
  %binop = add nsw i32 %bus.07, -1
  %cmpi = icmp samesign ugt i32 %bus.07, 0
  br i1 %cmpi, label %while_body, label %while_end

while_end:                                        ; preds = %while_body, %body
  %1 = tail call addrspace(1) i32 @bus_generic_attach(i32 %dev)
  ret i32 %1
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
