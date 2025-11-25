; ModuleID = 'angha-ll-stm32f1/extr_smsc47m1.c_superio_outb.ll'
source_filename = "out/extr_smsc47m1.c_superio_outb.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@REG = local_unnamed_addr global i32 0
@VAL = local_unnamed_addr global i32 0

declare i32 @outb(i32, i32) local_unnamed_addr addrspace(1) #0

define void @superio_outb(i32 %reg, i32 %val) local_unnamed_addr addrspace(1) #0 {
body:
  %REG = load i32, ptr @REG, align 4
  %0 = tail call addrspace(1) i32 @outb(i32 %reg, i32 %REG)
  %VAL = load i32, ptr @VAL, align 4
  %1 = tail call addrspace(1) i32 @outb(i32 %val, i32 %VAL)
  ret void
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
