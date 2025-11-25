; ModuleID = 'angha-ll-stm32f1/extr_util.c_ieee80211_can_queue_work.ll'
source_filename = "out/extr_util.c_ieee80211_can_queue_work.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@conststr = private unnamed_addr constant [47 x i8] c"queueing ieee80211 work while going to suspend\0A"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"ieee80211_local:init"(ptr writeonly captures(none) initializes((0, 4), (8, 16)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  %gepsuspended = getelementptr inbounds nuw i8, ptr %_this, i32 8
  store i64 0, ptr %gepsuspended, align 8
  ret void
}

declare i64 @WARN(i32, ptr, i32 zeroext) local_unnamed_addr addrspace(1) #1

define range(i32 0, 2) i32 @ieee80211_can_queue_work(ptr readonly captures(none) %local) local_unnamed_addr addrspace(1) #1 {
body:
  %suspended = getelementptr inbounds nuw i8, ptr %local, i32 8
  %suspended2 = load i64, ptr %suspended, align 8
  %cmpi.not = icmp eq i64 %suspended2, 0
  br i1 %cmpi.not, label %phiblock, label %fullev

fullev:                                           ; preds = %body
  %resuming4 = load i32, ptr %local, align 4
  %cmpi5 = icmp eq i32 %resuming4, 0
  %0 = zext i1 %cmpi5 to i32
  br label %phiblock

phiblock:                                         ; preds = %fullev, %body
  %phi = phi i32 [ 0, %body ], [ %0, %fullev ]
  %1 = tail call addrspace(1) i64 @WARN(i32 %phi, ptr nonnull @conststr, i32 zeroext 47)
  %cmpi6.not = icmp eq i64 %1, 0
  %spec.select = zext i1 %cmpi6.not to i32
  ret i32 %spec.select
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
