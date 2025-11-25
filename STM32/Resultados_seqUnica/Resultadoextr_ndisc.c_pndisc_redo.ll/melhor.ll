; ModuleID = 'angha-ll-stm32f1/extr_ndisc.c_pndisc_redo.ll'
source_filename = "out/extr_ndisc.c_pndisc_redo.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"sk_buff:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @kfree_skb(ptr) local_unnamed_addr addrspace(1) #1

declare i32 @ndisc_recv_ns(ptr) local_unnamed_addr addrspace(1) #1

define void @pndisc_redo(ptr %skb) local_unnamed_addr addrspace(1) #1 {
body:
  %0 = tail call addrspace(1) i32 @ndisc_recv_ns(ptr %skb)
  %1 = tail call addrspace(1) i32 @kfree_skb(ptr %skb)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
