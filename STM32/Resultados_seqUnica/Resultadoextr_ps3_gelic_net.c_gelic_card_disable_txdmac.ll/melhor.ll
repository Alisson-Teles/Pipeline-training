; ModuleID = 'angha-ll-stm32f1/extr_ps3_gelic_net.c_gelic_card_disable_txdmac.ll'
source_filename = "out/extr_ps3_gelic_net.c_gelic_card_disable_txdmac.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@conststr = private unnamed_addr constant [38 x i8] c"lv1_net_stop_tx_dma failed, status=%d\0A"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"gelic_card:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @bus_id(ptr) local_unnamed_addr addrspace(1) #1

declare i32 @ctodev(ptr) local_unnamed_addr addrspace(1) #1

declare i32 @dev_err(i32, ptr, i32, i32 zeroext) local_unnamed_addr addrspace(1) #1

declare i32 @dev_id(ptr) local_unnamed_addr addrspace(1) #1

declare i32 @lv1_net_stop_tx_dma(i32, i32) local_unnamed_addr addrspace(1) #1

define void @gelic_card_disable_txdmac(ptr %card) local_unnamed_addr addrspace(1) #1 {
body:
  %0 = tail call addrspace(1) i32 @bus_id(ptr %card)
  %1 = tail call addrspace(1) i32 @dev_id(ptr %card)
  %2 = tail call addrspace(1) i32 @lv1_net_stop_tx_dma(i32 %0, i32 %1)
  %cmpi.not = icmp eq i32 %2, 0
  br i1 %cmpi.not, label %if_cont, label %if_then

if_then:                                          ; preds = %body
  %3 = tail call addrspace(1) i32 @ctodev(ptr %card)
  %4 = tail call addrspace(1) i32 @dev_err(i32 %3, ptr nonnull @conststr, i32 %2, i32 zeroext 38)
  br label %if_cont

if_cont:                                          ; preds = %if_then, %body
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
