; ModuleID = 'angha-ll-stm32f1/extr_cg_syscalls.c_trap_R_inPVS.ll'
source_filename = "out/extr_cg_syscalls.c_trap_R_inPVS.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@CG_R_INPVS = local_unnamed_addr global i32 0

declare i32 @syscall(i32, i32, i32) local_unnamed_addr addrspace(1) #0

define i32 @trap_R_inPVS(i32 %p1, i32 %p2) local_unnamed_addr addrspace(1) #0 {
body:
  %CG_R_INPVS = load i32, ptr @CG_R_INPVS, align 4
  %0 = tail call addrspace(1) i32 @syscall(i32 %CG_R_INPVS, i32 %p1, i32 %p2)
  ret i32 %0
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
