; ModuleID = 'angha-ll-stm32f1/extr_llc_station.c_llc_station_rcv.ll'
source_filename = "out/extr_llc_station.c_llc_station_rcv.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"sk_buff:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @kfree_skb(ptr) local_unnamed_addr addrspace(1) #1

declare i64 @llc_stat_ev_rx_null_dsap_test_c(ptr) local_unnamed_addr addrspace(1) #1

declare i64 @llc_stat_ev_rx_null_dsap_xid_c(ptr) local_unnamed_addr addrspace(1) #1

declare i32 @llc_station_ac_send_test_r(ptr) local_unnamed_addr addrspace(1) #1

declare i32 @llc_station_ac_send_xid_r(ptr) local_unnamed_addr addrspace(1) #1

define void @llc_station_rcv(ptr %skb) local_unnamed_addr addrspace(1) #1 {
body:
  %0 = tail call addrspace(1) i64 @llc_stat_ev_rx_null_dsap_xid_c(ptr %skb)
  %cmpi.not = icmp eq i64 %0, 0
  br i1 %cmpi.not, label %if_else, label %if_then

if_then:                                          ; preds = %body
  %1 = tail call addrspace(1) i32 @llc_station_ac_send_xid_r(ptr %skb)
  br label %if_cont8

if_else:                                          ; preds = %body
  %2 = tail call addrspace(1) i64 @llc_stat_ev_rx_null_dsap_test_c(ptr %skb)
  %cmpi4.not = icmp eq i64 %2, 0
  br i1 %cmpi4.not, label %if_cont8, label %if_then5

if_then5:                                         ; preds = %if_else
  %3 = tail call addrspace(1) i32 @llc_station_ac_send_test_r(ptr %skb)
  br label %if_cont8

if_cont8:                                         ; preds = %if_then5, %if_else, %if_then
  %4 = tail call addrspace(1) i32 @kfree_skb(ptr %skb)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
