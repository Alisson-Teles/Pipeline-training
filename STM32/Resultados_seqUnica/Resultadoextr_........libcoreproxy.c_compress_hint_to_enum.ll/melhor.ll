; ModuleID = 'angha-ll-stm32f1/extr_........libcoreproxy.c_compress_hint_to_enum.ll'
source_filename = "out/extr_........libcoreproxy.c_compress_hint_to_enum.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@H2O_COMPRESS_HINT_AUTO = local_unnamed_addr global i8 0
@H2O_COMPRESS_HINT_DISABLE = local_unnamed_addr global i8 0
@H2O_COMPRESS_HINT_ENABLE = local_unnamed_addr global i8 0
@H2O_COMPRESS_HINT_ENABLE_BR = local_unnamed_addr global i8 0
@H2O_COMPRESS_HINT_ENABLE_GZIP = local_unnamed_addr global i8 0
@conststr = private unnamed_addr constant [2 x i8] c"on"
@conststr.1 = private unnamed_addr constant [3 x i8] c"off"
@conststr.2 = private unnamed_addr constant [4 x i8] c"gzip"
@conststr.3 = private unnamed_addr constant [2 x i8] c"br"

declare i32 @H2O_STRLIT(ptr, i32 zeroext) local_unnamed_addr addrspace(1) #0

declare i64 @h2o_lcstris(ptr, i32 zeroext, i32, i32 zeroext) local_unnamed_addr addrspace(1) #0

define zeroext i8 @compress_hint_to_enum(ptr %val, i32 zeroext %len, i32 zeroext %val.size) local_unnamed_addr addrspace(1) #0 {
body:
  %0 = tail call addrspace(1) i32 @H2O_STRLIT(ptr nonnull @conststr, i32 zeroext 2)
  %1 = tail call addrspace(1) i64 @h2o_lcstris(ptr %val, i32 zeroext %len, i32 %0, i32 zeroext %val.size)
  %cmpi.not = icmp eq i64 %1, 0
  br i1 %cmpi.not, label %if_cont, label %common.ret

common.ret:                                       ; preds = %if_cont21, %if_cont13, %if_cont, %body
  %common.ret.op.in = phi ptr [ @H2O_COMPRESS_HINT_ENABLE, %body ], [ @H2O_COMPRESS_HINT_DISABLE, %if_cont ], [ @H2O_COMPRESS_HINT_ENABLE_GZIP, %if_cont13 ], [ %H2O_COMPRESS_HINT_AUTO.H2O_COMPRESS_HINT_ENABLE_BR, %if_cont21 ]
  %common.ret.op = load i8, ptr %common.ret.op.in, align 1
  ret i8 %common.ret.op

if_cont:                                          ; preds = %body
  %2 = tail call addrspace(1) i32 @H2O_STRLIT(ptr nonnull @conststr.1, i32 zeroext 3)
  %3 = tail call addrspace(1) i64 @h2o_lcstris(ptr %val, i32 zeroext %len, i32 %2, i32 zeroext %val.size)
  %cmpi10.not = icmp eq i64 %3, 0
  br i1 %cmpi10.not, label %if_cont13, label %common.ret

if_cont13:                                        ; preds = %if_cont
  %4 = tail call addrspace(1) i32 @H2O_STRLIT(ptr nonnull @conststr.2, i32 zeroext 4)
  %5 = tail call addrspace(1) i64 @h2o_lcstris(ptr %val, i32 zeroext %len, i32 %4, i32 zeroext %val.size)
  %cmpi18.not = icmp eq i64 %5, 0
  br i1 %cmpi18.not, label %if_cont21, label %common.ret

if_cont21:                                        ; preds = %if_cont13
  %6 = tail call addrspace(1) i32 @H2O_STRLIT(ptr nonnull @conststr.3, i32 zeroext 2)
  %7 = tail call addrspace(1) i64 @h2o_lcstris(ptr %val, i32 zeroext %len, i32 %6, i32 zeroext %val.size)
  %cmpi26.not = icmp eq i64 %7, 0
  %H2O_COMPRESS_HINT_AUTO.H2O_COMPRESS_HINT_ENABLE_BR = select i1 %cmpi26.not, ptr @H2O_COMPRESS_HINT_AUTO, ptr @H2O_COMPRESS_HINT_ENABLE_BR
  br label %common.ret
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
