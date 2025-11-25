; ModuleID = 'angha-ll-stm32f1/extr_builtin-timechart.c_process_exit_read.ll'
source_filename = "out/extr_builtin-timechart.c_process_exit_read.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@IOTYPE_READ = local_unnamed_addr global i32 0
@conststr = private unnamed_addr constant [3 x i8] c"ret"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"timechart:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"perf_sample:init"(ptr writeonly captures(none) initializes((0, 8)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  %geptid = getelementptr inbounds nuw i8, ptr %_this, i32 4
  store i32 0, ptr %geptid, align 4
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"evsel:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i64 @perf_evsel__intval(ptr, ptr, ptr, i32 zeroext) local_unnamed_addr addrspace(1) #1

declare i32 @pid_end_io_sample(ptr, i32, i32, i32, i64) local_unnamed_addr addrspace(1) #1

define i32 @process_exit_read(ptr %tchart, ptr %evsel, ptr %sample) local_unnamed_addr addrspace(1) #1 {
body:
  %0 = tail call addrspace(1) i64 @perf_evsel__intval(ptr %evsel, ptr %sample, ptr nonnull @conststr, i32 zeroext 3)
  %tid = getelementptr inbounds nuw i8, ptr %sample, i32 4
  %tid7 = load i32, ptr %tid, align 4
  %IOTYPE_READ = load i32, ptr @IOTYPE_READ, align 4
  %time9 = load i32, ptr %sample, align 4
  %1 = tail call addrspace(1) i32 @pid_end_io_sample(ptr %tchart, i32 %tid7, i32 %IOTYPE_READ, i32 %time9, i64 %0)
  ret i32 %1
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
