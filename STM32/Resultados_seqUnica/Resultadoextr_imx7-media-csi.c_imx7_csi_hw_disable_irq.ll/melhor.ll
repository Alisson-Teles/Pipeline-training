; ModuleID = 'angha-ll-stm32f1/extr_imx7-media-csi.c_imx7_csi_hw_disable_irq.ll'
source_filename = "out/extr_imx7-media-csi.c_imx7_csi_hw_disable_irq.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@BIT_EOF_INT_EN = local_unnamed_addr global i32 0
@BIT_FB1_DMA_DONE_INTEN = local_unnamed_addr global i32 0
@BIT_FB2_DMA_DONE_INTEN = local_unnamed_addr global i32 0
@BIT_RFF_OR_INT = local_unnamed_addr global i32 0
@BIT_SOF_INTEN = local_unnamed_addr global i32 0
@CSI_CSICR1 = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"imx7_csi:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @imx7_csi_reg_read(ptr, i32) local_unnamed_addr addrspace(1) #1

declare i32 @imx7_csi_reg_write(ptr, i32, i32) local_unnamed_addr addrspace(1) #1

define void @imx7_csi_hw_disable_irq(ptr %csi) local_unnamed_addr addrspace(1) #1 {
body:
  %CSI_CSICR1 = load i32, ptr @CSI_CSICR1, align 4
  %0 = tail call addrspace(1) i32 @imx7_csi_reg_read(ptr %csi, i32 %CSI_CSICR1)
  %BIT_SOF_INTEN = load i32, ptr @BIT_SOF_INTEN, align 4
  %BIT_RFF_OR_INT = load i32, ptr @BIT_RFF_OR_INT, align 4
  %1 = or i32 %BIT_RFF_OR_INT, %BIT_SOF_INTEN
  %BIT_FB1_DMA_DONE_INTEN = load i32, ptr @BIT_FB1_DMA_DONE_INTEN, align 4
  %2 = or i32 %1, %BIT_FB1_DMA_DONE_INTEN
  %BIT_FB2_DMA_DONE_INTEN = load i32, ptr @BIT_FB2_DMA_DONE_INTEN, align 4
  %3 = or i32 %2, %BIT_FB2_DMA_DONE_INTEN
  %BIT_EOF_INT_EN = load i32, ptr @BIT_EOF_INT_EN, align 4
  %4 = or i32 %3, %BIT_EOF_INT_EN
  %5 = xor i32 %4, -1
  %binop13 = and i32 %0, %5
  %CSI_CSICR116 = load i32, ptr @CSI_CSICR1, align 4
  %6 = tail call addrspace(1) i32 @imx7_csi_reg_write(ptr %csi, i32 %binop13, i32 %CSI_CSICR116)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
