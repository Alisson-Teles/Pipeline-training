; ModuleID = 'angha-ll-stm32f1/extr_kern_aio.c_aio_workq_unlock.ll'
source_filename = "out/extr_kern_aio.c_aio_workq_unlock.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

declare i32 @aio_workq_mutex(i32) local_unnamed_addr addrspace(1) #0

declare i32 @lck_mtx_unlock(i32) local_unnamed_addr addrspace(1) #0

define void @aio_workq_unlock(i32 %wq) local_unnamed_addr addrspace(1) #0 {
body:
  %0 = tail call addrspace(1) i32 @aio_workq_mutex(i32 %wq)
  %1 = tail call addrspace(1) i32 @lck_mtx_unlock(i32 %0)
  ret void
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
