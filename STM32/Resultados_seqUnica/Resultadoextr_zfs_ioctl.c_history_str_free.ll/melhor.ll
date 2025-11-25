; ModuleID = 'angha-ll-stm32f1/extr_zfs_ioctl.c_history_str_free.ll'
source_filename = "out/extr_zfs_ioctl.c_history_str_free.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@HIS_MAX_RECORD_LEN = local_unnamed_addr global i32 0

declare i32 @kmem_free(ptr, i32, i32 zeroext) local_unnamed_addr addrspace(1) #0

define void @history_str_free(ptr %buf, i32 zeroext %buf.size) local_unnamed_addr addrspace(1) #0 {
body:
  %HIS_MAX_RECORD_LEN = load i32, ptr @HIS_MAX_RECORD_LEN, align 4
  %0 = tail call addrspace(1) i32 @kmem_free(ptr %buf, i32 %HIS_MAX_RECORD_LEN, i32 zeroext %buf.size)
  ret void
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
