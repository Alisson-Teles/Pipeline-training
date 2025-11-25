; ModuleID = 'angha-ll-stm32f1/extr_proc-service.c_ps_pdread.ll'
source_filename = "out/extr_proc-service.c_ps_pdread.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@PS_OK = local_unnamed_addr global i32 0

declare i32 @read_inferior_memory(i32, i32, i32) local_unnamed_addr addrspace(1) #0

define i32 @ps_pdread(i32 %ph, i32 %addr, i32 %buf, i32 %size) local_unnamed_addr addrspace(1) #0 {
body:
  %0 = tail call addrspace(1) i32 @read_inferior_memory(i32 %addr, i32 %buf, i32 %size)
  %PS_OK = load i32, ptr @PS_OK, align 4
  ret i32 %PS_OK
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
