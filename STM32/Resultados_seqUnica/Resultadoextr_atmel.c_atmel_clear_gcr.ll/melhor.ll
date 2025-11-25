; ModuleID = 'angha-ll-stm32f1/extr_atmel.c_atmel_clear_gcr.ll'
source_filename = "out/extr_atmel.c_atmel_clear_gcr.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@GCR = local_unnamed_addr global i64 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"net_device:init"(ptr writeonly captures(none) initializes((0, 8)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i64 0, ptr %_this, align 8
  ret void
}

declare i32 @inw(i64) local_unnamed_addr addrspace(1) #1

declare i32 @outw(i32, i64) local_unnamed_addr addrspace(1) #1

define void @atmel_clear_gcr(ptr readonly captures(none) %dev, i32 %mask) local_unnamed_addr addrspace(1) #1 {
body:
  %base_addr3 = load i64, ptr %dev, align 8
  %GCR = load i64, ptr @GCR, align 8
  %binop = add i64 %GCR, %base_addr3
  %0 = tail call addrspace(1) i32 @inw(i64 %binop)
  %neg = xor i32 %mask, -1
  %binop5 = and i32 %0, %neg
  %base_addr8 = load i64, ptr %dev, align 8
  %GCR9 = load i64, ptr @GCR, align 8
  %binop10 = add i64 %GCR9, %base_addr8
  %1 = tail call addrspace(1) i32 @outw(i32 %binop5, i64 %binop10)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
