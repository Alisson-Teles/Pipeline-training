; ModuleID = 'angha-ll-stm32f1/extr_rematrix.c_sane_layout.ll'
source_filename = "out/extr_rematrix.c_sane_layout.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@AV_CH_BACK_LEFT = local_unnamed_addr global i32 0
@AV_CH_BACK_RIGHT = local_unnamed_addr global i32 0
@AV_CH_FRONT_LEFT = local_unnamed_addr global i32 0
@AV_CH_FRONT_LEFT_OF_CENTER = local_unnamed_addr global i32 0
@AV_CH_FRONT_RIGHT = local_unnamed_addr global i32 0
@AV_CH_FRONT_RIGHT_OF_CENTER = local_unnamed_addr global i32 0
@AV_CH_LAYOUT_SURROUND = local_unnamed_addr global i32 0
@AV_CH_SIDE_LEFT = local_unnamed_addr global i32 0
@AV_CH_SIDE_RIGHT = local_unnamed_addr global i32 0
@SWR_CH_MAX = local_unnamed_addr global i64 0

declare i64 @av_get_channel_layout_nb_channels(i32) local_unnamed_addr addrspace(1) #0

declare i32 @even(i32) local_unnamed_addr addrspace(1) #0

define range(i32 0, 2) i32 @sane_layout(i32 %layout) local_unnamed_addr addrspace(1) #0 {
body:
  %AV_CH_LAYOUT_SURROUND = load i32, ptr @AV_CH_LAYOUT_SURROUND, align 4
  %binop = and i32 %AV_CH_LAYOUT_SURROUND, %layout
  %cmpi = icmp eq i32 %binop, 0
  br i1 %cmpi, label %common.ret, label %if_cont

common.ret:                                       ; preds = %if_cont30, %if_cont23, %if_cont16, %if_cont9, %if_cont, %body
  %common.ret.op = phi i32 [ 0, %body ], [ 0, %if_cont ], [ 0, %if_cont9 ], [ 0, %if_cont16 ], [ 0, %if_cont23 ], [ %spec.select, %if_cont30 ]
  ret i32 %common.ret.op

if_cont:                                          ; preds = %body
  %AV_CH_FRONT_LEFT = load i32, ptr @AV_CH_FRONT_LEFT, align 4
  %AV_CH_FRONT_RIGHT = load i32, ptr @AV_CH_FRONT_RIGHT, align 4
  %binop4 = or i32 %AV_CH_FRONT_RIGHT, %AV_CH_FRONT_LEFT
  %binop5 = and i32 %binop4, %layout
  %0 = tail call addrspace(1) i32 @even(i32 %binop5)
  %cmpi6 = icmp eq i32 %0, 0
  br i1 %cmpi6, label %common.ret, label %if_cont9

if_cont9:                                         ; preds = %if_cont
  %AV_CH_SIDE_LEFT = load i32, ptr @AV_CH_SIDE_LEFT, align 4
  %AV_CH_SIDE_RIGHT = load i32, ptr @AV_CH_SIDE_RIGHT, align 4
  %binop11 = or i32 %AV_CH_SIDE_RIGHT, %AV_CH_SIDE_LEFT
  %binop12 = and i32 %binop11, %layout
  %1 = tail call addrspace(1) i32 @even(i32 %binop12)
  %cmpi13 = icmp eq i32 %1, 0
  br i1 %cmpi13, label %common.ret, label %if_cont16

if_cont16:                                        ; preds = %if_cont9
  %AV_CH_BACK_LEFT = load i32, ptr @AV_CH_BACK_LEFT, align 4
  %AV_CH_BACK_RIGHT = load i32, ptr @AV_CH_BACK_RIGHT, align 4
  %binop18 = or i32 %AV_CH_BACK_RIGHT, %AV_CH_BACK_LEFT
  %binop19 = and i32 %binop18, %layout
  %2 = tail call addrspace(1) i32 @even(i32 %binop19)
  %cmpi20 = icmp eq i32 %2, 0
  br i1 %cmpi20, label %common.ret, label %if_cont23

if_cont23:                                        ; preds = %if_cont16
  %AV_CH_FRONT_LEFT_OF_CENTER = load i32, ptr @AV_CH_FRONT_LEFT_OF_CENTER, align 4
  %AV_CH_FRONT_RIGHT_OF_CENTER = load i32, ptr @AV_CH_FRONT_RIGHT_OF_CENTER, align 4
  %binop25 = or i32 %AV_CH_FRONT_RIGHT_OF_CENTER, %AV_CH_FRONT_LEFT_OF_CENTER
  %binop26 = and i32 %binop25, %layout
  %3 = tail call addrspace(1) i32 @even(i32 %binop26)
  %cmpi27 = icmp eq i32 %3, 0
  br i1 %cmpi27, label %common.ret, label %if_cont30

if_cont30:                                        ; preds = %if_cont23
  %4 = tail call addrspace(1) i64 @av_get_channel_layout_nb_channels(i32 %layout)
  %SWR_CH_MAX = load i64, ptr @SWR_CH_MAX, align 8
  %cmpi32.not = icmp slt i64 %4, %SWR_CH_MAX
  %spec.select = zext i1 %cmpi32.not to i32
  br label %common.ret
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
