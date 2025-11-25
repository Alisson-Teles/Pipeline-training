; ModuleID = 'angha-ll-stm32f1/extr_ani.c_ath9k_hw_update_mibstats.ll'
source_filename = "out/extr_ani.c_ath9k_hw_update_mibstats.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@AR_ACK_FAIL = local_unnamed_addr global i32 0
@AR_BEACON_CNT = local_unnamed_addr global i32 0
@AR_FCS_FAIL = local_unnamed_addr global i32 0
@AR_RTS_FAIL = local_unnamed_addr global i32 0
@AR_RTS_OK = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"ath_hw:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"ath9k_mib_stats:init"(ptr writeonly captures(none) initializes((0, 20)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %_this, i8 0, i64 20, i1 false)
  ret void
}

declare i64 @REG_READ(ptr, i32) local_unnamed_addr addrspace(1) #1

define void @ath9k_hw_update_mibstats(ptr %ah, ptr captures(none) %stats) local_unnamed_addr addrspace(1) #1 {
body:
  %ackrcv_bad = getelementptr inbounds nuw i8, ptr %stats, i32 16
  %loadleftv = load i32, ptr %ackrcv_bad, align 4
  %AR_ACK_FAIL = load i32, ptr @AR_ACK_FAIL, align 4
  %0 = tail call addrspace(1) i64 @REG_READ(ptr %ah, i32 %AR_ACK_FAIL)
  %trunc = trunc i64 %0 to i32
  %binop = add i32 %loadleftv, %trunc
  store i32 %binop, ptr %ackrcv_bad, align 4
  %rts_bad = getelementptr inbounds nuw i8, ptr %stats, i32 12
  %loadleftv5 = load i32, ptr %rts_bad, align 4
  %AR_RTS_FAIL = load i32, ptr @AR_RTS_FAIL, align 4
  %1 = tail call addrspace(1) i64 @REG_READ(ptr %ah, i32 %AR_RTS_FAIL)
  %trunc7 = trunc i64 %1 to i32
  %binop8 = add i32 %loadleftv5, %trunc7
  store i32 %binop8, ptr %rts_bad, align 4
  %fcs_bad = getelementptr inbounds nuw i8, ptr %stats, i32 8
  %loadleftv10 = load i32, ptr %fcs_bad, align 4
  %AR_FCS_FAIL = load i32, ptr @AR_FCS_FAIL, align 4
  %2 = tail call addrspace(1) i64 @REG_READ(ptr %ah, i32 %AR_FCS_FAIL)
  %trunc12 = trunc i64 %2 to i32
  %binop13 = add i32 %loadleftv10, %trunc12
  store i32 %binop13, ptr %fcs_bad, align 4
  %rts_good = getelementptr inbounds nuw i8, ptr %stats, i32 4
  %loadleftv15 = load i32, ptr %rts_good, align 4
  %AR_RTS_OK = load i32, ptr @AR_RTS_OK, align 4
  %3 = tail call addrspace(1) i64 @REG_READ(ptr %ah, i32 %AR_RTS_OK)
  %trunc17 = trunc i64 %3 to i32
  %binop18 = add i32 %loadleftv15, %trunc17
  store i32 %binop18, ptr %rts_good, align 4
  %loadleftv20 = load i32, ptr %stats, align 4
  %AR_BEACON_CNT = load i32, ptr @AR_BEACON_CNT, align 4
  %4 = tail call addrspace(1) i64 @REG_READ(ptr %ah, i32 %AR_BEACON_CNT)
  %trunc22 = trunc i64 %4 to i32
  %binop23 = add i32 %loadleftv20, %trunc22
  store i32 %binop23, ptr %stats, align 4
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
