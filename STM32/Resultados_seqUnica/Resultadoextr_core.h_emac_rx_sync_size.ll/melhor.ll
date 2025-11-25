; ModuleID = 'angha-ll-stm32f1/extr_core.h_emac_rx_sync_size.ll'
source_filename = "out/extr_core.h_emac_rx_sync_size.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@NET_IP_ALIGN = local_unnamed_addr global i64 0

declare i32 @SKB_DATA_ALIGN(i64) local_unnamed_addr addrspace(1) #0

declare i64 @emac_rx_size(i32) local_unnamed_addr addrspace(1) #0

define i32 @emac_rx_sync_size(i32 %mtu) local_unnamed_addr addrspace(1) #0 {
body:
  %0 = tail call addrspace(1) i64 @emac_rx_size(i32 %mtu)
  %NET_IP_ALIGN = load i64, ptr @NET_IP_ALIGN, align 8
  %binop = add i64 %NET_IP_ALIGN, %0
  %1 = tail call addrspace(1) i32 @SKB_DATA_ALIGN(i64 %binop)
  ret i32 %1
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
