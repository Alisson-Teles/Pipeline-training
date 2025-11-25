; ModuleID = 'angha-ll-stm32f1/extr_imx-dma.c_is_imx27_dma.ll'
source_filename = "out/extr_imx-dma.c_is_imx27_dma.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@IMX27_DMA = local_unnamed_addr global i64 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"imxdma_engine:init"(ptr writeonly captures(none) initializes((0, 8)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i64 0, ptr %_this, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none)
define range(i32 0, 2) i32 @is_imx27_dma(ptr readonly captures(none) %imxdma) local_unnamed_addr addrspace(1) #1 {
body:
  %devtype2 = load i64, ptr %imxdma, align 8
  %IMX27_DMA = load i64, ptr @IMX27_DMA, align 8
  %cmpi = icmp eq i64 %devtype2, %IMX27_DMA
  %zext = zext i1 %cmpi to i32
  ret i32 %zext
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
