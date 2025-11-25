; ModuleID = 'angha-ll-stm32f1/extr_auxtrace.c_parse_action.ll'
source_filename = "out/extr_auxtrace.c_parse_action.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@EINVAL = local_unnamed_addr global i32 0
@conststr = private unnamed_addr constant [6 x i8] c"filter"
@conststr.1 = private unnamed_addr constant [5 x i8] c"start"
@conststr.2 = private unnamed_addr constant [4 x i8] c"stop"
@conststr.3 = private unnamed_addr constant [9 x i8] c"tracestop"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"addr_filter:init"(ptr writeonly captures(none) initializes((0, 12)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  %geprange = getelementptr inbounds nuw i8, ptr %_this, i32 8
  store i32 0, ptr %geprange, align 4
  %gepstart = getelementptr inbounds nuw i8, ptr %_this, i32 4
  store i32 0, ptr %gepstart, align 4
  ret void
}

declare i32 @strcmp(i32, ptr, i32 zeroext) local_unnamed_addr addrspace(1) #1

define i32 @parse_action(ptr captures(none) %filt) local_unnamed_addr addrspace(1) #1 {
body:
  %action2 = load i32, ptr %filt, align 4
  %0 = tail call addrspace(1) i32 @strcmp(i32 %action2, ptr nonnull @conststr, i32 zeroext 6)
  %cmpi = icmp eq i32 %0, 0
  br i1 %cmpi, label %if_then, label %if_else

if_then:                                          ; preds = %body
  %start = getelementptr inbounds nuw i8, ptr %filt, i32 4
  store i32 1, ptr %start, align 4
  %range = getelementptr inbounds nuw i8, ptr %filt, i32 8
  store i32 1, ptr %range, align 4
  br label %common.ret

if_else:                                          ; preds = %body
  %action7 = load i32, ptr %filt, align 4
  %1 = tail call addrspace(1) i32 @strcmp(i32 %action7, ptr nonnull @conststr.1, i32 zeroext 5)
  %cmpi8 = icmp eq i32 %1, 0
  br i1 %cmpi8, label %if_then9, label %if_else12

if_then9:                                         ; preds = %if_else
  %start11 = getelementptr inbounds nuw i8, ptr %filt, i32 4
  store i32 1, ptr %start11, align 4
  br label %common.ret

if_else12:                                        ; preds = %if_else
  %action15 = load i32, ptr %filt, align 4
  %2 = tail call addrspace(1) i32 @strcmp(i32 %action15, ptr nonnull @conststr.2, i32 zeroext 4)
  %cmpi16 = icmp eq i32 %2, 0
  br i1 %cmpi16, label %if_then17, label %if_else20

if_then17:                                        ; preds = %if_else12
  %start19 = getelementptr inbounds nuw i8, ptr %filt, i32 4
  store i32 0, ptr %start19, align 4
  br label %common.ret

if_else20:                                        ; preds = %if_else12
  %action23 = load i32, ptr %filt, align 4
  %3 = tail call addrspace(1) i32 @strcmp(i32 %action23, ptr nonnull @conststr.3, i32 zeroext 9)
  %cmpi24 = icmp eq i32 %3, 0
  br i1 %cmpi24, label %if_then25, label %if_else32

if_then25:                                        ; preds = %if_else20
  %start27 = getelementptr inbounds nuw i8, ptr %filt, i32 4
  store i32 0, ptr %start27, align 4
  %range29 = getelementptr inbounds nuw i8, ptr %filt, i32 8
  store i32 1, ptr %range29, align 4
  %loadleftv = load i32, ptr %filt, align 4
  %binop = add i32 %loadleftv, 5
  store i32 %binop, ptr %filt, align 4
  br label %common.ret

common.ret:                                       ; preds = %if_else32, %if_then25, %if_then17, %if_then9, %if_then
  %common.ret.op = phi i32 [ %binop33, %if_else32 ], [ 0, %if_then9 ], [ 0, %if_then25 ], [ 0, %if_then17 ], [ 0, %if_then ]
  ret i32 %common.ret.op

if_else32:                                        ; preds = %if_else20
  %EINVAL = load i32, ptr @EINVAL, align 4
  %binop33 = sub i32 0, %EINVAL
  br label %common.ret
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
