; ModuleID = 'angha-ll-stm32f1/extr_raid5-log.h_log_write_stripe_run.ll'
source_filename = "out/extr_raid5-log.h_log_write_stripe_run.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"r5conf:init"(ptr writeonly captures(none) initializes((0, 8)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i64 0, ptr %_this, align 8
  ret void
}

declare i32 @ppl_write_stripe_run(ptr) local_unnamed_addr addrspace(1) #1

declare i32 @r5l_write_stripe_run(i64) local_unnamed_addr addrspace(1) #1

declare i64 @raid5_has_ppl(ptr) local_unnamed_addr addrspace(1) #1

define void @log_write_stripe_run(ptr %conf) local_unnamed_addr addrspace(1) #1 {
body:
  %log2 = load i64, ptr %conf, align 8
  %cmpi.not = icmp eq i64 %log2, 0
  br i1 %cmpi.not, label %if_else, label %if_then

if_then:                                          ; preds = %body
  %0 = tail call addrspace(1) i32 @r5l_write_stripe_run(i64 %log2)
  br label %if_cont11

if_else:                                          ; preds = %body
  %1 = tail call addrspace(1) i64 @raid5_has_ppl(ptr nonnull %conf)
  %cmpi7.not = icmp eq i64 %1, 0
  br i1 %cmpi7.not, label %if_cont11, label %if_then8

if_then8:                                         ; preds = %if_else
  %2 = tail call addrspace(1) i32 @ppl_write_stripe_run(ptr nonnull %conf)
  br label %if_cont11

if_cont11:                                        ; preds = %if_then8, %if_else, %if_then
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
