; ModuleID = 'angha-ll-stm32f1/extr_uart_dev_ar933x.c_ar933x_init.ll'
source_filename = "out/extr_uart_dev_ar933x.c_ar933x_init.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@AR933X_UART_CS_HOST_INT_EN = local_unnamed_addr global i32 0
@AR933X_UART_CS_REG = local_unnamed_addr global i32 0
@AR933X_UART_INT_EN_REG = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"uart_bas:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @ar933x_getreg(ptr, i32) local_unnamed_addr addrspace(1) #1

declare i32 @ar933x_param(ptr, i32, i32, i32, i32) local_unnamed_addr addrspace(1) #1

declare i32 @ar933x_setreg(ptr, i32, i32) local_unnamed_addr addrspace(1) #1

declare i32 @uart_barrier(ptr) local_unnamed_addr addrspace(1) #1

define void @ar933x_init(ptr %bas, i32 %baudrate, i32 %databits, i32 %stopbits, i32 %parity) local_unnamed_addr addrspace(1) #1 {
body:
  %0 = tail call addrspace(1) i32 @ar933x_param(ptr %bas, i32 %baudrate, i32 %databits, i32 %stopbits, i32 %parity)
  %AR933X_UART_INT_EN_REG = load i32, ptr @AR933X_UART_INT_EN_REG, align 4
  %1 = tail call addrspace(1) i32 @ar933x_setreg(ptr %bas, i32 %AR933X_UART_INT_EN_REG, i32 0)
  %AR933X_UART_CS_REG = load i32, ptr @AR933X_UART_CS_REG, align 4
  %2 = tail call addrspace(1) i32 @ar933x_getreg(ptr %bas, i32 %AR933X_UART_CS_REG)
  %AR933X_UART_CS_HOST_INT_EN = load i32, ptr @AR933X_UART_CS_HOST_INT_EN, align 4
  %neg = xor i32 %AR933X_UART_CS_HOST_INT_EN, -1
  %binop = and i32 %2, %neg
  %AR933X_UART_CS_REG13 = load i32, ptr @AR933X_UART_CS_REG, align 4
  %3 = tail call addrspace(1) i32 @ar933x_setreg(ptr %bas, i32 %AR933X_UART_CS_REG13, i32 %binop)
  %4 = tail call addrspace(1) i32 @uart_barrier(ptr %bas)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
