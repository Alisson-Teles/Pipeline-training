; ModuleID = 'angha-ll-stm32f1/extr_txrx.c_cw1200_skb_dtor.ll'
source_filename = "out/extr_txrx.c_cw1200_skb_dtor.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@CW1200_INVALID_RATE_ID = local_unnamed_addr global i64 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"sk_buff:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"cw1200_txpriv:init"(ptr writeonly captures(none) initializes((0, 20)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %_this, i8 0, i64 20, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"cw1200_common:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @cw1200_notify_buffered_tx(ptr, ptr, i32, i32) local_unnamed_addr addrspace(1) #1

declare i32 @ieee80211_tx_status(i32, ptr) local_unnamed_addr addrspace(1) #1

declare i32 @skb_pull(ptr, i32) local_unnamed_addr addrspace(1) #1

declare i32 @tx_policy_put(ptr, i64) local_unnamed_addr addrspace(1) #1

define void @cw1200_skb_dtor(ptr %priv, ptr %skb, ptr readonly captures(none) %txpriv) local_unnamed_addr addrspace(1) #1 {
body:
  %offset = getelementptr inbounds nuw i8, ptr %txpriv, i32 16
  %offset5 = load i32, ptr %offset, align 4
  %0 = tail call addrspace(1) i32 @skb_pull(ptr %skb, i32 %offset5)
  %rate_id7 = load i64, ptr %txpriv, align 8
  %CW1200_INVALID_RATE_ID = load i64, ptr @CW1200_INVALID_RATE_ID, align 8
  %cmpi.not = icmp eq i64 %rate_id7, %CW1200_INVALID_RATE_ID
  br i1 %cmpi.not, label %if_cont, label %if_then

if_then:                                          ; preds = %body
  %raw_link_id = getelementptr inbounds nuw i8, ptr %txpriv, i32 12
  %raw_link_id11 = load i32, ptr %raw_link_id, align 4
  %tid = getelementptr inbounds nuw i8, ptr %txpriv, i32 8
  %tid13 = load i32, ptr %tid, align 4
  %1 = tail call addrspace(1) i32 @cw1200_notify_buffered_tx(ptr %priv, ptr %skb, i32 %raw_link_id11, i32 %tid13)
  %rate_id17 = load i64, ptr %txpriv, align 8
  %2 = tail call addrspace(1) i32 @tx_policy_put(ptr %priv, i64 %rate_id17)
  br label %if_cont

if_cont:                                          ; preds = %if_then, %body
  %hw19 = load i32, ptr %priv, align 4
  %3 = tail call addrspace(1) i32 @ieee80211_tx_status(i32 %hw19, ptr %skb)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
