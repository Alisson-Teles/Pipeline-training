; ModuleID = 'angha-ll-stm32f1/extr_msf.c_msf_probe.ll'
source_filename = "out/extr_msf.c_msf_probe.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@AVPROBE_SCORE_MAX = local_unnamed_addr global i32 0
@conststr = private unnamed_addr constant [3 x i8] c"MSF"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"TYPE_3__:init"(ptr writeonly captures(none) initializes((0, 8)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i64 0, ptr %_this, align 8
  ret void
}

declare i32 @AV_RB32(i64) local_unnamed_addr addrspace(1) #1

declare i64 @memcmp(i64, ptr, i32, i32 zeroext) local_unnamed_addr addrspace(1) #1

define range(i32 -1431655764, 1431655765) i32 @msf_probe(ptr readonly captures(none) %p) local_unnamed_addr addrspace(1) #1 {
body:
  %buf2 = load i64, ptr %p, align 8
  %0 = tail call addrspace(1) i64 @memcmp(i64 %buf2, ptr nonnull @conststr, i32 3, i32 zeroext 3)
  %cmpi.not = icmp eq i64 %0, 0
  br i1 %cmpi.not, label %if_cont, label %common.ret

common.ret:                                       ; preds = %if_cont26, %if_then23, %if_cont9, %if_cont, %body
  %common.ret.op = phi i32 [ %binop24, %if_then23 ], [ %binop29, %if_cont26 ], [ 0, %body ], [ 0, %if_cont ], [ 0, %if_cont9 ]
  ret i32 %common.ret.op

if_cont:                                          ; preds = %body
  %buf5 = load i64, ptr %p, align 8
  %binop = add i64 %buf5, 8
  %1 = tail call addrspace(1) i32 @AV_RB32(i64 %binop)
  %cmpi6 = icmp slt i32 %1, 1
  br i1 %cmpi6, label %common.ret, label %if_cont9

if_cont9:                                         ; preds = %if_cont
  %buf12 = load i64, ptr %p, align 8
  %binop13 = add i64 %buf12, 16
  %2 = tail call addrspace(1) i32 @AV_RB32(i64 %binop13)
  %cmpi14 = icmp slt i32 %2, 1
  br i1 %cmpi14, label %common.ret, label %if_cont17

if_cont17:                                        ; preds = %if_cont9
  %buf20 = load i64, ptr %p, align 8
  %binop21 = add i64 %buf20, 4
  %3 = tail call addrspace(1) i32 @AV_RB32(i64 %binop21)
  %cmpi22 = icmp sgt i32 %3, 16
  %AVPROBE_SCORE_MAX = load i32, ptr @AVPROBE_SCORE_MAX, align 4
  br i1 %cmpi22, label %if_then23, label %if_cont26

if_then23:                                        ; preds = %if_cont17
  %binop24 = sdiv i32 %AVPROBE_SCORE_MAX, 5
  br label %common.ret

if_cont26:                                        ; preds = %if_cont17
  %binop28 = sdiv i32 %AVPROBE_SCORE_MAX, 3
  %binop29 = shl nsw i32 %binop28, 1
  br label %common.ret
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
