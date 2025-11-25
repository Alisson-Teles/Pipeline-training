; ModuleID = 'angha-ll-stm32f1/extr_types.c_svn_depth_from_word.ll'
source_filename = "out/extr_types.c_svn_depth_from_word.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@svn_depth_empty = local_unnamed_addr global i32 0
@svn_depth_exclude = local_unnamed_addr global i32 0
@svn_depth_files = local_unnamed_addr global i32 0
@svn_depth_immediates = local_unnamed_addr global i32 0
@svn_depth_infinity = local_unnamed_addr global i32 0
@svn_depth_unknown = local_unnamed_addr global i32 0
@conststr = private unnamed_addr constant [7 x i8] c"exclude"
@conststr.1 = private unnamed_addr constant [7 x i8] c"unknown"
@conststr.2 = private unnamed_addr constant [5 x i8] c"empty"
@conststr.3 = private unnamed_addr constant [5 x i8] c"files"
@conststr.4 = private unnamed_addr constant [10 x i8] c"immediates"
@conststr.5 = private unnamed_addr constant [8 x i8] c"infinity"

declare i64 @strcmp(ptr, ptr, i32 zeroext, i32 zeroext) local_unnamed_addr addrspace(1) #0

define i32 @svn_depth_from_word(ptr %word, i32 zeroext %word.size) local_unnamed_addr addrspace(1) #0 {
body:
  %0 = tail call addrspace(1) i64 @strcmp(ptr %word, ptr nonnull @conststr, i32 zeroext %word.size, i32 zeroext 7)
  %cmpi = icmp eq i64 %0, 0
  br i1 %cmpi, label %common.ret, label %if_cont

common.ret:                                       ; preds = %if_cont31, %if_cont24, %if_cont17, %if_cont10, %if_cont, %body
  %common.ret.op.in = phi ptr [ @svn_depth_exclude, %body ], [ @svn_depth_unknown, %if_cont ], [ @svn_depth_empty, %if_cont10 ], [ @svn_depth_files, %if_cont17 ], [ @svn_depth_immediates, %if_cont24 ], [ %svn_depth_infinity.svn_depth_unknown, %if_cont31 ]
  %common.ret.op = load i32, ptr %common.ret.op.in, align 4
  ret i32 %common.ret.op

if_cont:                                          ; preds = %body
  %1 = tail call addrspace(1) i64 @strcmp(ptr %word, ptr nonnull @conststr.1, i32 zeroext %word.size, i32 zeroext 7)
  %cmpi7 = icmp eq i64 %1, 0
  br i1 %cmpi7, label %common.ret, label %if_cont10

if_cont10:                                        ; preds = %if_cont
  %2 = tail call addrspace(1) i64 @strcmp(ptr %word, ptr nonnull @conststr.2, i32 zeroext %word.size, i32 zeroext 5)
  %cmpi14 = icmp eq i64 %2, 0
  br i1 %cmpi14, label %common.ret, label %if_cont17

if_cont17:                                        ; preds = %if_cont10
  %3 = tail call addrspace(1) i64 @strcmp(ptr %word, ptr nonnull @conststr.3, i32 zeroext %word.size, i32 zeroext 5)
  %cmpi21 = icmp eq i64 %3, 0
  br i1 %cmpi21, label %common.ret, label %if_cont24

if_cont24:                                        ; preds = %if_cont17
  %4 = tail call addrspace(1) i64 @strcmp(ptr %word, ptr nonnull @conststr.4, i32 zeroext %word.size, i32 zeroext 10)
  %cmpi28 = icmp eq i64 %4, 0
  br i1 %cmpi28, label %common.ret, label %if_cont31

if_cont31:                                        ; preds = %if_cont24
  %5 = tail call addrspace(1) i64 @strcmp(ptr %word, ptr nonnull @conststr.5, i32 zeroext %word.size, i32 zeroext 8)
  %cmpi35 = icmp eq i64 %5, 0
  %svn_depth_infinity.svn_depth_unknown = select i1 %cmpi35, ptr @svn_depth_infinity, ptr @svn_depth_unknown
  br label %common.ret
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
