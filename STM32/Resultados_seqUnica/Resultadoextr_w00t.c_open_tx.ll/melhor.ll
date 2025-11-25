; ModuleID = 'angha-ll-stm32f1/extr_w00t.c_open_tx.ll'
source_filename = "out/extr_w00t.c_open_tx.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@DLT_IEEE802_11_RADIO = local_unnamed_addr global i32 0

declare i32 @open_bpf(ptr, i32, i32 zeroext) local_unnamed_addr addrspace(1) #0

define i32 @open_tx(ptr %iface, i32 zeroext %iface.size) local_unnamed_addr addrspace(1) #0 {
body:
  %DLT_IEEE802_11_RADIO = load i32, ptr @DLT_IEEE802_11_RADIO, align 4
  %0 = tail call addrspace(1) i32 @open_bpf(ptr %iface, i32 %DLT_IEEE802_11_RADIO, i32 zeroext %iface.size)
  ret i32 %0
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
