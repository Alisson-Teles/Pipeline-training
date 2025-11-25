; ModuleID = 'angha-ll-stm32f1/extr_tlog.c_taosCloseLogByFd.ll'
source_filename = "out/extr_tlog.c_taosCloseLogByFd.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

declare i32 @taosUnLockFile(i32) local_unnamed_addr addrspace(1) #0

declare i32 @tclose(i32) local_unnamed_addr addrspace(1) #0

define void @taosCloseLogByFd(i32 %fd) local_unnamed_addr addrspace(1) #0 {
body:
  %cmpi = icmp sgt i32 %fd, -1
  br i1 %cmpi, label %if_then, label %if_cont

if_then:                                          ; preds = %body
  %0 = tail call addrspace(1) i32 @taosUnLockFile(i32 %fd)
  %1 = tail call addrspace(1) i32 @tclose(i32 %fd)
  br label %if_cont

if_cont:                                          ; preds = %if_then, %body
  ret void
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
