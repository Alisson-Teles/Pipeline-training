; ModuleID = 'angha-ll-stm32f1/extr_ibmveth.c_ibmveth_rxq_buffer_valid.ll'
source_filename = "out/extr_ibmveth.c_ibmveth_rxq_buffer_valid.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@IBMVETH_RXQ_VALID = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"ibmveth_adapter:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @ibmveth_rxq_flags(ptr) local_unnamed_addr addrspace(1) #1

define i32 @ibmveth_rxq_buffer_valid(ptr %adapter) local_unnamed_addr addrspace(1) #1 {
body:
  %0 = tail call addrspace(1) i32 @ibmveth_rxq_flags(ptr %adapter)
  %IBMVETH_RXQ_VALID = load i32, ptr @IBMVETH_RXQ_VALID, align 4
  %binop = and i32 %IBMVETH_RXQ_VALID, %0
  ret i32 %binop
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
