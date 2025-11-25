; ModuleID = 'angha-ll-stm32f1/extr_bfa_svc.c_bfa_fcport_start.ll'
source_filename = "out/extr_bfa_svc.c_bfa_fcport_start.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@BFA_FCPORT_SM_START = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"bfa_s:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @BFA_FCPORT_MOD(ptr) local_unnamed_addr addrspace(1) #1

declare i32 @bfa_sm_send_event(i32, i32) local_unnamed_addr addrspace(1) #1

define void @bfa_fcport_start(ptr %bfa) local_unnamed_addr addrspace(1) #1 {
body:
  %0 = tail call addrspace(1) i32 @BFA_FCPORT_MOD(ptr %bfa)
  %BFA_FCPORT_SM_START = load i32, ptr @BFA_FCPORT_SM_START, align 4
  %1 = tail call addrspace(1) i32 @bfa_sm_send_event(i32 %0, i32 %BFA_FCPORT_SM_START)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
