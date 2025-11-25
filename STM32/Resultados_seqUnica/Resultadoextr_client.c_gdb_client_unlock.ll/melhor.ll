; ModuleID = 'angha-ll-stm32f1/extr_client.c_gdb_client_unlock.ll'
source_filename = "out/extr_client.c_gdb_client_unlock.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@YAB_THREAD_GDBSTUBCLIENT = local_unnamed_addr global i32 0

declare i32 @YabThreadWake(i32) local_unnamed_addr addrspace(1) #0

define void @gdb_client_unlock(i32 %client) local_unnamed_addr addrspace(1) #0 {
body:
  %YAB_THREAD_GDBSTUBCLIENT = load i32, ptr @YAB_THREAD_GDBSTUBCLIENT, align 4
  %0 = tail call addrspace(1) i32 @YabThreadWake(i32 %YAB_THREAD_GDBSTUBCLIENT)
  ret void
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
