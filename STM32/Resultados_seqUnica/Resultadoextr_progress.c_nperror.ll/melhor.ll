; ModuleID = 'angha-ll-stm32f1/extr_progress.c_nperror.ll'
source_filename = "out/extr_progress.c_nperror.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@errno = local_unnamed_addr global i32 0
@flag_monitor = local_unnamed_addr global i64 0
@flag_monitor_continuous = local_unnamed_addr global i64 0
@conststr = private unnamed_addr constant [5 x i8] c"%s:%s"

declare i32 @perror(ptr, i32 zeroext) local_unnamed_addr addrspace(1) #0

declare i32 @printw(ptr, ptr, i32, i32 zeroext, i32 zeroext) local_unnamed_addr addrspace(1) #0

declare i32 @strerror(i32) local_unnamed_addr addrspace(1) #0

define void @nperror(ptr %s, i32 zeroext %s.size) local_unnamed_addr addrspace(1) #0 {
body:
  %flag_monitor = load i64, ptr @flag_monitor, align 8
  %cmpi.not = icmp ne i64 %flag_monitor, 0
  %flag_monitor_continuous = load i64, ptr @flag_monitor_continuous, align 8
  %cmpi3 = icmp ne i64 %flag_monitor_continuous, 0
  %phi = select i1 %cmpi.not, i1 true, i1 %cmpi3
  br i1 %phi, label %if_then, label %if_else

if_then:                                          ; preds = %body
  %errno = load i32, ptr @errno, align 4
  %0 = tail call addrspace(1) i32 @strerror(i32 %errno)
  %1 = tail call addrspace(1) i32 @printw(ptr nonnull @conststr, ptr %s, i32 %0, i32 zeroext 5, i32 zeroext %s.size)
  br label %if_cont

if_else:                                          ; preds = %body
  %2 = tail call addrspace(1) i32 @perror(ptr %s, i32 zeroext %s.size)
  br label %if_cont

if_cont:                                          ; preds = %if_else, %if_then
  ret void
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
