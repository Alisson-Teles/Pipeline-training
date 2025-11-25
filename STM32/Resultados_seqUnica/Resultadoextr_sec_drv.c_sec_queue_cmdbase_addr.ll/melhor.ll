; ModuleID = 'angha-ll-stm32f1/extr_sec_drv.c_sec_queue_cmdbase_addr.ll'
source_filename = "out/extr_sec_drv.c_sec_queue_cmdbase_addr.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@SEC_Q_BASE_HADDR_REG = local_unnamed_addr global i64 0
@SEC_Q_BASE_LADDR_REG = local_unnamed_addr global i64 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"sec_queue:init"(ptr writeonly captures(none) initializes((0, 8)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i64 0, ptr %_this, align 8
  ret void
}

declare i32 @lower_32_bits(i32) local_unnamed_addr addrspace(1) #1

declare i32 @upper_32_bits(i32) local_unnamed_addr addrspace(1) #1

declare i32 @writel_relaxed(i32, i64) local_unnamed_addr addrspace(1) #1

define void @sec_queue_cmdbase_addr(ptr readonly captures(none) %queue, i32 %addr) local_unnamed_addr addrspace(1) #1 {
body:
  %0 = tail call addrspace(1) i32 @upper_32_bits(i32 %addr)
  %regs4 = load i64, ptr %queue, align 8
  %SEC_Q_BASE_HADDR_REG = load i64, ptr @SEC_Q_BASE_HADDR_REG, align 8
  %binop = add i64 %SEC_Q_BASE_HADDR_REG, %regs4
  %1 = tail call addrspace(1) i32 @writel_relaxed(i32 %0, i64 %binop)
  %2 = tail call addrspace(1) i32 @lower_32_bits(i32 %addr)
  %regs8 = load i64, ptr %queue, align 8
  %SEC_Q_BASE_LADDR_REG = load i64, ptr @SEC_Q_BASE_LADDR_REG, align 8
  %binop9 = add i64 %SEC_Q_BASE_LADDR_REG, %regs8
  %3 = tail call addrspace(1) i32 @writel_relaxed(i32 %2, i64 %binop9)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
