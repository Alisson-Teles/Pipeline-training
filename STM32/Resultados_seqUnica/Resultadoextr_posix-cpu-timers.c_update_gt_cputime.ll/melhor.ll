; ModuleID = 'angha-ll-stm32f1/extr_posix-cpu-timers.c_update_gt_cputime.ll'
source_filename = "out/extr_posix-cpu-timers.c_update_gt_cputime.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"task_cputime:init"(ptr writeonly captures(none) initializes((0, 16)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %_this, i8 0, i64 16, i1 false)
  ret void
}

declare i64 @cputime_gt(i32, i32) local_unnamed_addr addrspace(1) #1

define void @update_gt_cputime(ptr captures(none) %a, ptr readonly captures(none) %b) local_unnamed_addr addrspace(1) #1 {
body:
  %utime = getelementptr inbounds nuw i8, ptr %b, i32 12
  %utime3 = load i32, ptr %utime, align 4
  %utime5 = getelementptr inbounds nuw i8, ptr %a, i32 12
  %utime6 = load i32, ptr %utime5, align 4
  %0 = tail call addrspace(1) i64 @cputime_gt(i32 %utime3, i32 %utime6)
  %cmpi.not = icmp eq i64 %0, 0
  br i1 %cmpi.not, label %if_cont, label %if_then

if_then:                                          ; preds = %body
  %utime11 = load i32, ptr %utime, align 4
  store i32 %utime11, ptr %utime5, align 4
  br label %if_cont

if_cont:                                          ; preds = %if_then, %body
  %stime = getelementptr inbounds nuw i8, ptr %b, i32 8
  %stime13 = load i32, ptr %stime, align 4
  %stime15 = getelementptr inbounds nuw i8, ptr %a, i32 8
  %stime16 = load i32, ptr %stime15, align 4
  %1 = tail call addrspace(1) i64 @cputime_gt(i32 %stime13, i32 %stime16)
  %cmpi17.not = icmp eq i64 %1, 0
  br i1 %cmpi17.not, label %if_cont25, label %if_then18

if_then18:                                        ; preds = %if_cont
  %stime23 = load i32, ptr %stime, align 4
  store i32 %stime23, ptr %stime15, align 4
  br label %if_cont25

if_cont25:                                        ; preds = %if_then18, %if_cont
  %sum_exec_runtime27 = load i64, ptr %b, align 8
  %sum_exec_runtime30 = load i64, ptr %a, align 8
  %cmpi31 = icmp sgt i64 %sum_exec_runtime27, %sum_exec_runtime30
  br i1 %cmpi31, label %if_then32, label %if_cont39

if_then32:                                        ; preds = %if_cont25
  store i64 %sum_exec_runtime27, ptr %a, align 8
  br label %if_cont39

if_cont39:                                        ; preds = %if_then32, %if_cont25
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
