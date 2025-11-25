; ModuleID = 'angha-ll-stm32f1/extr_bnx2x_cmn.h_bnx2x_fp_qzone_id.ll'
source_filename = "out/extr_bnx2x_cmn.h_bnx2x_fp_qzone_id.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@ETH_MAX_RX_CLIENTS_E1H = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"bnx2x_fastpath:init"(ptr writeonly captures(none) initializes((0, 12)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  %gepbp = getelementptr inbounds nuw i8, ptr %_this, i32 8
  store i32 0, ptr %gepbp, align 4
  store i64 0, ptr %_this, align 8
  ret void
}

declare i32 @BP_PORT(i32) local_unnamed_addr addrspace(1) #1

declare i64 @CHIP_IS_E1x(i32) local_unnamed_addr addrspace(1) #1

define i64 @bnx2x_fp_qzone_id(ptr readonly captures(none) %fp) local_unnamed_addr addrspace(1) #1 {
body:
  %bp = getelementptr inbounds nuw i8, ptr %fp, i32 8
  %bp2 = load i32, ptr %bp, align 4
  %0 = tail call addrspace(1) i64 @CHIP_IS_E1x(i32 %bp2)
  %cmpi.not = icmp eq i64 %0, 0
  %cl_id11 = load i64, ptr %fp, align 8
  br i1 %cmpi.not, label %common.ret, label %if_then

common.ret:                                       ; preds = %if_then, %body
  %common.ret.op = phi i64 [ %binop8, %if_then ], [ %cl_id11, %body ]
  ret i64 %common.ret.op

if_then:                                          ; preds = %body
  %bp7 = load i32, ptr %bp, align 4
  %1 = tail call addrspace(1) i32 @BP_PORT(i32 %bp7)
  %ETH_MAX_RX_CLIENTS_E1H = load i32, ptr @ETH_MAX_RX_CLIENTS_E1H, align 4
  %binop = mul i32 %ETH_MAX_RX_CLIENTS_E1H, %1
  %intcast = sext i32 %binop to i64
  %binop8 = add i64 %cl_id11, %intcast
  br label %common.ret
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
