; ModuleID = 'angha-ll-stm32f1/extr_spi-sprd.c_sprd_spi_irq_enable.ll'
source_filename = "out/extr_spi-sprd.c_sprd_spi_irq_enable.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@SPRD_SPI_INT_CLR = local_unnamed_addr global i64 0
@SPRD_SPI_INT_EN = local_unnamed_addr global i64 0
@SPRD_SPI_RX_END_CLR = local_unnamed_addr global i32 0
@SPRD_SPI_RX_END_INT_EN = local_unnamed_addr global i32 0
@SPRD_SPI_TX_END_CLR = local_unnamed_addr global i32 0
@SPRD_SPI_TX_END_INT_EN = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"sprd_spi:init"(ptr writeonly captures(none) initializes((0, 8)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i64 0, ptr %_this, align 8
  ret void
}

declare i32 @readl_relaxed(i64) local_unnamed_addr addrspace(1) #1

declare i32 @writel_relaxed(i32, i64) local_unnamed_addr addrspace(1) #1

define void @sprd_spi_irq_enable(ptr readonly captures(none) %ss) local_unnamed_addr addrspace(1) #1 {
body:
  %SPRD_SPI_TX_END_CLR = load i32, ptr @SPRD_SPI_TX_END_CLR, align 4
  %SPRD_SPI_RX_END_CLR = load i32, ptr @SPRD_SPI_RX_END_CLR, align 4
  %binop = or i32 %SPRD_SPI_RX_END_CLR, %SPRD_SPI_TX_END_CLR
  %base2 = load i64, ptr %ss, align 8
  %SPRD_SPI_INT_CLR = load i64, ptr @SPRD_SPI_INT_CLR, align 8
  %binop3 = add i64 %SPRD_SPI_INT_CLR, %base2
  %0 = tail call addrspace(1) i32 @writel_relaxed(i32 %binop, i64 %binop3)
  %base6 = load i64, ptr %ss, align 8
  %SPRD_SPI_INT_EN = load i64, ptr @SPRD_SPI_INT_EN, align 8
  %binop7 = add i64 %SPRD_SPI_INT_EN, %base6
  %1 = tail call addrspace(1) i32 @readl_relaxed(i64 %binop7)
  %SPRD_SPI_TX_END_INT_EN = load i32, ptr @SPRD_SPI_TX_END_INT_EN, align 4
  %binop9 = or i32 %SPRD_SPI_TX_END_INT_EN, %1
  %SPRD_SPI_RX_END_INT_EN = load i32, ptr @SPRD_SPI_RX_END_INT_EN, align 4
  %binop10 = or i32 %binop9, %SPRD_SPI_RX_END_INT_EN
  %base13 = load i64, ptr %ss, align 8
  %SPRD_SPI_INT_EN14 = load i64, ptr @SPRD_SPI_INT_EN, align 8
  %binop15 = add i64 %SPRD_SPI_INT_EN14, %base13
  %2 = tail call addrspace(1) i32 @writel_relaxed(i32 %binop10, i64 %binop15)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
