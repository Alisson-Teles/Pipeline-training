; ModuleID = 'angha-ll-stm32f1/extr_gpart_ops.c_scheme_supports_labels.ll'
source_filename = "out/extr_gpart_ops.c_scheme_supports_labels.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@conststr = private unnamed_addr constant [3 x i8] c"APM"
@conststr.1 = private unnamed_addr constant [3 x i8] c"GPT"

declare i64 @strcmp(ptr, ptr, i32 zeroext, i32 zeroext) local_unnamed_addr addrspace(1) #0

define range(i32 0, 2) i32 @scheme_supports_labels(ptr %scheme, i32 zeroext %scheme.size) local_unnamed_addr addrspace(1) #0 {
body:
  %0 = tail call addrspace(1) i64 @strcmp(ptr %scheme, ptr nonnull @conststr, i32 zeroext %scheme.size, i32 zeroext 3)
  %cmpi = icmp eq i64 %0, 0
  br i1 %cmpi, label %common.ret, label %if_cont

common.ret:                                       ; preds = %if_cont, %body
  %common.ret.op = phi i32 [ 1, %body ], [ %spec.select, %if_cont ]
  ret i32 %common.ret.op

if_cont:                                          ; preds = %body
  %1 = tail call addrspace(1) i64 @strcmp(ptr %scheme, ptr nonnull @conststr.1, i32 zeroext %scheme.size, i32 zeroext 3)
  %cmpi7 = icmp eq i64 %1, 0
  %spec.select = zext i1 %cmpi7 to i32
  br label %common.ret
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
