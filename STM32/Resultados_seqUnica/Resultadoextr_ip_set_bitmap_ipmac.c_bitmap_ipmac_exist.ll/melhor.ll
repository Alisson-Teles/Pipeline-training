; ModuleID = 'angha-ll-stm32f1/extr_ip_set_bitmap_ipmac.c_bitmap_ipmac_exist.ll'
source_filename = "out/extr_ip_set_bitmap_ipmac.c_bitmap_ipmac_exist.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@MAC_FILLED = local_unnamed_addr global i64 0
@MAC_UNSET = local_unnamed_addr global i64 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"ipmac_telem:init"(ptr writeonly captures(none) initializes((0, 12)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i64 0, ptr %_this, align 8
  %geptimeout = getelementptr inbounds nuw i8, ptr %_this, i32 8
  store i32 0, ptr %geptimeout, align 4
  ret void
}

declare i32 @ip_set_timeout_expired(i32) local_unnamed_addr addrspace(1) #1

define range(i32 0, 2) i32 @bitmap_ipmac_exist(ptr readonly captures(none) %elem) local_unnamed_addr addrspace(1) #1 {
body:
  %match2 = load i64, ptr %elem, align 8
  %MAC_UNSET = load i64, ptr @MAC_UNSET, align 8
  %cmpi = icmp eq i64 %match2, %MAC_UNSET
  br i1 %cmpi, label %phiblock, label %fullev

fullev:                                           ; preds = %body
  %MAC_FILLED = load i64, ptr @MAC_FILLED, align 8
  %cmpi6 = icmp eq i64 %match2, %MAC_FILLED
  br i1 %cmpi6, label %fullev7, label %phiblock

phiblock:                                         ; preds = %fullev7, %fullev, %body
  %phi = phi i32 [ 1, %body ], [ 0, %fullev ], [ %1, %fullev7 ]
  ret i32 %phi

fullev7:                                          ; preds = %fullev
  %timeout = getelementptr inbounds nuw i8, ptr %elem, i32 8
  %timeout11 = load i32, ptr %timeout, align 4
  %0 = tail call addrspace(1) i32 @ip_set_timeout_expired(i32 %timeout11)
  %cmpi12 = icmp eq i32 %0, 0
  %1 = zext i1 %cmpi12 to i32
  br label %phiblock
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
