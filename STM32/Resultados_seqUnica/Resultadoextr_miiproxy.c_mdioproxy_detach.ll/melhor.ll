; ModuleID = 'angha-ll-stm32f1/extr_miiproxy.c_mdioproxy_detach.ll'
source_filename = "out/extr_miiproxy.c_mdioproxy_detach.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

declare i32 @bus_generic_detach(i32) local_unnamed_addr addrspace(1) #0

declare i32 @rendezvous_unregister_target(i32) local_unnamed_addr addrspace(1) #0

define noundef i32 @mdioproxy_detach(i32 %dev) local_unnamed_addr addrspace(1) #0 {
body:
  %0 = tail call addrspace(1) i32 @rendezvous_unregister_target(i32 %dev)
  %1 = tail call addrspace(1) i32 @bus_generic_detach(i32 %dev)
  ret i32 0
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
