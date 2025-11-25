; ModuleID = 'angha-ll-stm32f1/extr_locks.c_locks_conflict.ll'
source_filename = "out/extr_locks.c_locks_conflict.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@F_WRLCK = local_unnamed_addr global i64 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"file_lock:init"(ptr writeonly captures(none) initializes((0, 8)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i64 0, ptr %_this, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none)
define range(i32 0, 2) i32 @locks_conflict(ptr readonly captures(none) %caller_fl, ptr readonly captures(none) %sys_fl) local_unnamed_addr addrspace(1) #1 {
body:
  %fl_type3 = load i64, ptr %sys_fl, align 8
  %F_WRLCK = load i64, ptr @F_WRLCK, align 8
  %cmpi = icmp eq i64 %fl_type3, %F_WRLCK
  br i1 %cmpi, label %common.ret, label %if_cont

common.ret:                                       ; preds = %if_cont, %body
  %common.ret.op = phi i32 [ 1, %body ], [ %spec.select, %if_cont ]
  ret i32 %common.ret.op

if_cont:                                          ; preds = %body
  %fl_type6 = load i64, ptr %caller_fl, align 8
  %cmpi8 = icmp eq i64 %fl_type6, %F_WRLCK
  %spec.select = zext i1 %cmpi8 to i32
  br label %common.ret
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
