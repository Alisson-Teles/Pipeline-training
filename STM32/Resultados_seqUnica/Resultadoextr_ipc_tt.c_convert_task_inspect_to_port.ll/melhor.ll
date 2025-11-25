; ModuleID = 'angha-ll-stm32f1/extr_ipc_tt.c_convert_task_inspect_to_port.ll'
source_filename = "out/extr_ipc_tt.c_convert_task_inspect_to_port.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@IP_NULL = local_unnamed_addr global i32 0

declare i32 @task_deallocate(i32) local_unnamed_addr addrspace(1) #0

define i32 @convert_task_inspect_to_port(i32 %task) local_unnamed_addr addrspace(1) #0 {
body:
  %0 = tail call addrspace(1) i32 @task_deallocate(i32 %task)
  %IP_NULL = load i32, ptr @IP_NULL, align 4
  ret i32 %IP_NULL
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
