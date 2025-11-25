; ModuleID = 'angha-ll-stm32f1/extr_fs.c_sys_chown32.ll'
source_filename = "out/extr_fs.c_sys_chown32.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@AT_FDCWD_ = local_unnamed_addr global i32 0

declare i32 @sys_fchownat(i32, i32, i32, i32, i32) local_unnamed_addr addrspace(1) #0

define i32 @sys_chown32(i32 %path_addr, i32 %owner, i32 %group) local_unnamed_addr addrspace(1) #0 {
body:
  %AT_FDCWD_ = load i32, ptr @AT_FDCWD_, align 4
  %0 = tail call addrspace(1) i32 @sys_fchownat(i32 %AT_FDCWD_, i32 %path_addr, i32 %owner, i32 %group, i32 0)
  ret i32 %0
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
