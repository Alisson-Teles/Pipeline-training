; ModuleID = 'angha-ll-stm32f1/extr_isph3a_af.c_h3a_af_enable.ll'
source_filename = "out/extr_isph3a_af.c_h3a_af_enable.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@ISPH3A_PCR = local_unnamed_addr global i32 0
@ISPH3A_PCR_AF_EN = local_unnamed_addr global i32 0
@OMAP3_ISP_IOMEM_H3A = local_unnamed_addr global i32 0
@OMAP3_ISP_SUBCLK_AF = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"ispstat:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @isp_reg_clr(i32, i32, i32, i32) local_unnamed_addr addrspace(1) #1

declare i32 @isp_reg_set(i32, i32, i32, i32) local_unnamed_addr addrspace(1) #1

declare i32 @omap3isp_subclk_disable(i32, i32) local_unnamed_addr addrspace(1) #1

declare i32 @omap3isp_subclk_enable(i32, i32) local_unnamed_addr addrspace(1) #1

define void @h3a_af_enable(ptr readonly captures(none) %af, i32 %enable) local_unnamed_addr addrspace(1) #1 {
body:
  %cmpi.not = icmp eq i32 %enable, 0
  %isp10 = load i32, ptr %af, align 4
  %OMAP3_ISP_IOMEM_H3A11 = load i32, ptr @OMAP3_ISP_IOMEM_H3A, align 4
  %ISPH3A_PCR12 = load i32, ptr @ISPH3A_PCR, align 4
  %ISPH3A_PCR_AF_EN13 = load i32, ptr @ISPH3A_PCR_AF_EN, align 4
  br i1 %cmpi.not, label %if_else, label %if_then

if_then:                                          ; preds = %body
  %0 = tail call addrspace(1) i32 @isp_reg_set(i32 %isp10, i32 %OMAP3_ISP_IOMEM_H3A11, i32 %ISPH3A_PCR12, i32 %ISPH3A_PCR_AF_EN13)
  %isp7 = load i32, ptr %af, align 4
  %OMAP3_ISP_SUBCLK_AF = load i32, ptr @OMAP3_ISP_SUBCLK_AF, align 4
  %1 = tail call addrspace(1) i32 @omap3isp_subclk_enable(i32 %isp7, i32 %OMAP3_ISP_SUBCLK_AF)
  br label %if_cont

if_else:                                          ; preds = %body
  %2 = tail call addrspace(1) i32 @isp_reg_clr(i32 %isp10, i32 %OMAP3_ISP_IOMEM_H3A11, i32 %ISPH3A_PCR12, i32 %ISPH3A_PCR_AF_EN13)
  %isp16 = load i32, ptr %af, align 4
  %OMAP3_ISP_SUBCLK_AF17 = load i32, ptr @OMAP3_ISP_SUBCLK_AF, align 4
  %3 = tail call addrspace(1) i32 @omap3isp_subclk_disable(i32 %isp16, i32 %OMAP3_ISP_SUBCLK_AF17)
  br label %if_cont

if_cont:                                          ; preds = %if_else, %if_then
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
