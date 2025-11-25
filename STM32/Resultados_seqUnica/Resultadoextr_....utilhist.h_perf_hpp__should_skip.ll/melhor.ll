; ModuleID = 'angha-ll-stm32f1/extr_....utilhist.h_perf_hpp__should_skip.ll'
source_filename = "out/extr_....utilhist.h_perf_hpp__should_skip.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"perf_hpp_fmt:init"(ptr writeonly captures(none) initializes((0, 8)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i64 0, ptr %_this, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"hists:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @perf_hpp__defined_dynamic_entry(ptr, ptr) local_unnamed_addr addrspace(1) #1

declare i64 @perf_hpp__is_dynamic_entry(ptr) local_unnamed_addr addrspace(1) #1

define range(i32 0, 2) i32 @perf_hpp__should_skip(ptr %format, ptr %hists) local_unnamed_addr addrspace(1) #1 {
body:
  %elide3 = load i64, ptr %format, align 8
  %cmpi.not = icmp eq i64 %elide3, 0
  br i1 %cmpi.not, label %if_cont, label %common.ret

common.ret:                                       ; preds = %if_cont11, %fullev, %body
  %common.ret.op = phi i32 [ 0, %if_cont11 ], [ 1, %body ], [ 1, %fullev ]
  ret i32 %common.ret.op

if_cont:                                          ; preds = %body
  %0 = tail call addrspace(1) i64 @perf_hpp__is_dynamic_entry(ptr nonnull %format)
  %cmpi5.not = icmp eq i64 %0, 0
  br i1 %cmpi5.not, label %if_cont11, label %fullev

fullev:                                           ; preds = %if_cont
  %1 = tail call addrspace(1) i32 @perf_hpp__defined_dynamic_entry(ptr nonnull %format, ptr %hists)
  %cmpi8 = icmp eq i32 %1, 0
  br i1 %cmpi8, label %common.ret, label %if_cont11

if_cont11:                                        ; preds = %fullev, %if_cont
  br label %common.ret
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
