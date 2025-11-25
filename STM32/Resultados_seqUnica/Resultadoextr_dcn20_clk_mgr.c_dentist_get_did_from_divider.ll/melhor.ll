; ModuleID = 'angha-ll-stm32f1/extr_dcn20_clk_mgr.c_dentist_get_did_from_divider.ll'
source_filename = "out/extr_dcn20_clk_mgr.c_dentist_get_did_from_divider.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@DENTIST_BASE_DID_1 = local_unnamed_addr global i64 0
@DENTIST_BASE_DID_2 = local_unnamed_addr global i64 0
@DENTIST_BASE_DID_3 = local_unnamed_addr global i64 0
@DENTIST_BASE_DID_4 = local_unnamed_addr global i64 0
@DENTIST_DIVIDER_RANGE_1_START = local_unnamed_addr global i32 0
@DENTIST_DIVIDER_RANGE_1_STEP = local_unnamed_addr global i32 0
@DENTIST_DIVIDER_RANGE_2_START = local_unnamed_addr global i32 0
@DENTIST_DIVIDER_RANGE_2_STEP = local_unnamed_addr global i32 0
@DENTIST_DIVIDER_RANGE_3_START = local_unnamed_addr global i32 0
@DENTIST_DIVIDER_RANGE_3_STEP = local_unnamed_addr global i32 0
@DENTIST_DIVIDER_RANGE_4_START = local_unnamed_addr global i32 0
@DENTIST_DIVIDER_RANGE_4_STEP = local_unnamed_addr global i32 0
@DENTIST_MAX_DID = local_unnamed_addr global i64 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none)
define i64 @dentist_get_did_from_divider(i32 %divider) local_unnamed_addr addrspace(1) #0 {
body:
  %DENTIST_DIVIDER_RANGE_2_START = load i32, ptr @DENTIST_DIVIDER_RANGE_2_START, align 4
  %cmpi = icmp slt i32 %divider, %DENTIST_DIVIDER_RANGE_2_START
  br i1 %cmpi, label %if_then, label %if_else11

if_then:                                          ; preds = %body
  %DENTIST_DIVIDER_RANGE_1_START = load i32, ptr @DENTIST_DIVIDER_RANGE_1_START, align 4
  %cmpi4 = icmp slt i32 %divider, %DENTIST_DIVIDER_RANGE_1_START
  %DENTIST_BASE_DID_1 = load i64, ptr @DENTIST_BASE_DID_1, align 8
  %binop = sub i32 %divider, %DENTIST_DIVIDER_RANGE_1_START
  br i1 %cmpi4, label %if_cont46, label %if_else

if_else:                                          ; preds = %if_then
  %DENTIST_DIVIDER_RANGE_1_STEP = load i32, ptr @DENTIST_DIVIDER_RANGE_1_STEP, align 4
  %binop9 = sdiv i32 %binop, %DENTIST_DIVIDER_RANGE_1_STEP
  %intcast = sext i32 %binop9 to i64
  %binop10 = add i64 %DENTIST_BASE_DID_1, %intcast
  br label %if_cont46

if_else11:                                        ; preds = %body
  %DENTIST_DIVIDER_RANGE_3_START = load i32, ptr @DENTIST_DIVIDER_RANGE_3_START, align 4
  %cmpi13 = icmp slt i32 %divider, %DENTIST_DIVIDER_RANGE_3_START
  br i1 %cmpi13, label %if_then14, label %if_else21

if_then14:                                        ; preds = %if_else11
  %DENTIST_BASE_DID_2 = load i64, ptr @DENTIST_BASE_DID_2, align 8
  %binop17 = sub i32 %divider, %DENTIST_DIVIDER_RANGE_2_START
  %DENTIST_DIVIDER_RANGE_2_STEP = load i32, ptr @DENTIST_DIVIDER_RANGE_2_STEP, align 4
  %binop18 = sdiv i32 %binop17, %DENTIST_DIVIDER_RANGE_2_STEP
  %intcast19 = sext i32 %binop18 to i64
  %binop20 = add i64 %DENTIST_BASE_DID_2, %intcast19
  br label %if_cont46

if_else21:                                        ; preds = %if_else11
  %DENTIST_DIVIDER_RANGE_4_START = load i32, ptr @DENTIST_DIVIDER_RANGE_4_START, align 4
  %cmpi23 = icmp slt i32 %divider, %DENTIST_DIVIDER_RANGE_4_START
  br i1 %cmpi23, label %if_then24, label %if_else31

if_then24:                                        ; preds = %if_else21
  %DENTIST_BASE_DID_3 = load i64, ptr @DENTIST_BASE_DID_3, align 8
  %binop27 = sub i32 %divider, %DENTIST_DIVIDER_RANGE_3_START
  %DENTIST_DIVIDER_RANGE_3_STEP = load i32, ptr @DENTIST_DIVIDER_RANGE_3_STEP, align 4
  %binop28 = sdiv i32 %binop27, %DENTIST_DIVIDER_RANGE_3_STEP
  %intcast29 = sext i32 %binop28 to i64
  %binop30 = add i64 %DENTIST_BASE_DID_3, %intcast29
  br label %if_cont46

if_else31:                                        ; preds = %if_else21
  %DENTIST_BASE_DID_4 = load i64, ptr @DENTIST_BASE_DID_4, align 8
  %binop34 = sub i32 %divider, %DENTIST_DIVIDER_RANGE_4_START
  %DENTIST_DIVIDER_RANGE_4_STEP = load i32, ptr @DENTIST_DIVIDER_RANGE_4_STEP, align 4
  %binop35 = sdiv i32 %binop34, %DENTIST_DIVIDER_RANGE_4_STEP
  %intcast36 = sext i32 %binop35 to i64
  %binop37 = add i64 %DENTIST_BASE_DID_4, %intcast36
  %DENTIST_MAX_DID = load i64, ptr @DENTIST_MAX_DID, align 8
  %divider_id.1 = tail call i64 @llvm.smin.i64(i64 %binop37, i64 %DENTIST_MAX_DID)
  br label %if_cont46

if_cont46:                                        ; preds = %if_else31, %if_then24, %if_then14, %if_else, %if_then
  %divider_id.4 = phi i64 [ %binop10, %if_else ], [ %binop20, %if_then14 ], [ %binop30, %if_then24 ], [ %divider_id.1, %if_else31 ], [ %DENTIST_BASE_DID_1, %if_then ]
  ret i64 %divider_id.4
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
