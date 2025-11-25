; ModuleID = 'angha-ll-stm32f1/extr_hisi-sfc.c_hisi_spi_nor_init.ll'
source_filename = "out/extr_hisi-sfc.c_hisi_spi_nor_init.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@CS_DESELECT_TIME = local_unnamed_addr global i32 0
@CS_HOLD_TIME = local_unnamed_addr global i32 0
@CS_SETUP_TIME = local_unnamed_addr global i32 0
@FMC_SPI_TIMING_CFG = local_unnamed_addr global i64 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"hifmc_host:init"(ptr writeonly captures(none) initializes((0, 8)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i64 0, ptr %_this, align 8
  ret void
}

declare i32 @TIMING_CFG_TCSH(i32) local_unnamed_addr addrspace(1) #1

declare i32 @TIMING_CFG_TCSS(i32) local_unnamed_addr addrspace(1) #1

declare i32 @TIMING_CFG_TSHSL(i32) local_unnamed_addr addrspace(1) #1

declare i32 @writel(i32, i64) local_unnamed_addr addrspace(1) #1

define void @hisi_spi_nor_init(ptr readonly captures(none) %host) local_unnamed_addr addrspace(1) #1 {
body:
  %CS_HOLD_TIME = load i32, ptr @CS_HOLD_TIME, align 4
  %0 = tail call addrspace(1) i32 @TIMING_CFG_TCSH(i32 %CS_HOLD_TIME)
  %CS_SETUP_TIME = load i32, ptr @CS_SETUP_TIME, align 4
  %1 = tail call addrspace(1) i32 @TIMING_CFG_TCSS(i32 %CS_SETUP_TIME)
  %binop = or i32 %1, %0
  %CS_DESELECT_TIME = load i32, ptr @CS_DESELECT_TIME, align 4
  %2 = tail call addrspace(1) i32 @TIMING_CFG_TSHSL(i32 %CS_DESELECT_TIME)
  %binop2 = or i32 %binop, %2
  %regbase4 = load i64, ptr %host, align 8
  %FMC_SPI_TIMING_CFG = load i64, ptr @FMC_SPI_TIMING_CFG, align 8
  %binop5 = add i64 %FMC_SPI_TIMING_CFG, %regbase4
  %3 = tail call addrspace(1) i32 @writel(i32 %binop2, i64 %binop5)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
