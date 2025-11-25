; ModuleID = 'angha-ll-stm32f1/extr_ssp16.c_write_ST.ll'
source_filename = "out/extr_ssp16.c_write_ST.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@rST = local_unnamed_addr global i32 0

declare i32 @CHECK_ST(i32) local_unnamed_addr addrspace(1) #0

define void @write_ST(i32 %d) local_unnamed_addr addrspace(1) #0 {
body:
  %0 = tail call addrspace(1) i32 @CHECK_ST(i32 %d)
  store i32 %d, ptr @rST, align 4
  ret void
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
