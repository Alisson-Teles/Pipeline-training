; ModuleID = 'angha-ll-stm32f1/extr_rockchip_lvds.c_rockchip_lvds_poweron.ll'
source_filename = "out/extr_rockchip_lvds.c_rockchip_lvds_poweron.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@DISPLAY_OUTPUT_RGB = local_unnamed_addr global i64 0
@RK3288_LVDS_CFG_REG21 = local_unnamed_addr global i32 0
@RK3288_LVDS_CFG_REG21_TX_ENABLE = local_unnamed_addr global i32 0
@RK3288_LVDS_CFG_REGC = local_unnamed_addr global i32 0
@RK3288_LVDS_CFG_REGC_PLL_ENABLE = local_unnamed_addr global i32 0
@RK3288_LVDS_CH0_REG0 = local_unnamed_addr global i32 0
@RK3288_LVDS_CH0_REG0_LANE0_EN = local_unnamed_addr global i32 0
@RK3288_LVDS_CH0_REG0_LANE1_EN = local_unnamed_addr global i32 0
@RK3288_LVDS_CH0_REG0_LANE2_EN = local_unnamed_addr global i32 0
@RK3288_LVDS_CH0_REG0_LANE3_EN = local_unnamed_addr global i32 0
@RK3288_LVDS_CH0_REG0_LANE4_EN = local_unnamed_addr global i32 0
@RK3288_LVDS_CH0_REG0_LANECK_EN = local_unnamed_addr global i32 0
@RK3288_LVDS_CH0_REG0_LVDS_EN = local_unnamed_addr global i32 0
@RK3288_LVDS_CH0_REG0_TTL_EN = local_unnamed_addr global i32 0
@RK3288_LVDS_CH0_REG1 = local_unnamed_addr global i32 0
@RK3288_LVDS_CH0_REG1_LANE0_BIAS = local_unnamed_addr global i32 0
@RK3288_LVDS_CH0_REG1_LANE1_BIAS = local_unnamed_addr global i32 0
@RK3288_LVDS_CH0_REG1_LANE2_BIAS = local_unnamed_addr global i32 0
@RK3288_LVDS_CH0_REG1_LANE3_BIAS = local_unnamed_addr global i32 0
@RK3288_LVDS_CH0_REG1_LANE4_BIAS = local_unnamed_addr global i32 0
@RK3288_LVDS_CH0_REG1_LANECK_BIAS = local_unnamed_addr global i32 0
@RK3288_LVDS_CH0_REG2 = local_unnamed_addr global i32 0
@RK3288_LVDS_CH0_REG20 = local_unnamed_addr global i32 0
@RK3288_LVDS_CH0_REG20_LSB = local_unnamed_addr global i32 0
@RK3288_LVDS_CH0_REG2_LANE0_LVDS_MODE = local_unnamed_addr global i32 0
@RK3288_LVDS_CH0_REG2_LANE1_LVDS_MODE = local_unnamed_addr global i32 0
@RK3288_LVDS_CH0_REG2_LANE2_LVDS_MODE = local_unnamed_addr global i32 0
@RK3288_LVDS_CH0_REG2_LANE3_LVDS_MODE = local_unnamed_addr global i32 0
@RK3288_LVDS_CH0_REG2_LANE4_LVDS_MODE = local_unnamed_addr global i32 0
@RK3288_LVDS_CH0_REG2_LANECK_LVDS_MODE = local_unnamed_addr global i32 0
@RK3288_LVDS_CH0_REG2_RESERVE_ON = local_unnamed_addr global i32 0
@RK3288_LVDS_CH0_REG3 = local_unnamed_addr global i32 0
@RK3288_LVDS_CH0_REG4 = local_unnamed_addr global i32 0
@RK3288_LVDS_CH0_REG4_LANE0_TTL_MODE = local_unnamed_addr global i32 0
@RK3288_LVDS_CH0_REG4_LANE1_TTL_MODE = local_unnamed_addr global i32 0
@RK3288_LVDS_CH0_REG4_LANE2_TTL_MODE = local_unnamed_addr global i32 0
@RK3288_LVDS_CH0_REG4_LANE3_TTL_MODE = local_unnamed_addr global i32 0
@RK3288_LVDS_CH0_REG4_LANE4_TTL_MODE = local_unnamed_addr global i32 0
@RK3288_LVDS_CH0_REG4_LANECK_TTL_MODE = local_unnamed_addr global i32 0
@RK3288_LVDS_CH0_REG5 = local_unnamed_addr global i32 0
@RK3288_LVDS_CH0_REG5_LANE0_TTL_DATA = local_unnamed_addr global i32 0
@RK3288_LVDS_CH0_REG5_LANE1_TTL_DATA = local_unnamed_addr global i32 0
@RK3288_LVDS_CH0_REG5_LANE2_TTL_DATA = local_unnamed_addr global i32 0
@RK3288_LVDS_CH0_REG5_LANE3_TTL_DATA = local_unnamed_addr global i32 0
@RK3288_LVDS_CH0_REG5_LANE4_TTL_DATA = local_unnamed_addr global i32 0
@RK3288_LVDS_CH0_REG5_LANECK_TTL_DATA = local_unnamed_addr global i32 0
@RK3288_LVDS_CH0_REGD = local_unnamed_addr global i32 0
@conststr = private unnamed_addr constant [30 x i8] c"failed to enable lvds pclk %d\0A"
@conststr.1 = private unnamed_addr constant [29 x i8] c"failed to get pm runtime: %d\0A"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"rockchip_lvds:init"(ptr writeonly captures(none) initializes((0, 16)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %_this, i8 0, i64 16, i1 false)
  ret void
}

declare i32 @DRM_DEV_ERROR(i32, ptr, i32, i32 zeroext) local_unnamed_addr addrspace(1) #1

declare i32 @RK3288_LVDS_PLL_FBDIV_REG2(i32) local_unnamed_addr addrspace(1) #1

declare i32 @RK3288_LVDS_PLL_FBDIV_REG3(i32) local_unnamed_addr addrspace(1) #1

declare i32 @RK3288_LVDS_PLL_PREDIV_REGD(i32) local_unnamed_addr addrspace(1) #1

declare i32 @clk_disable(i32) local_unnamed_addr addrspace(1) #1

declare i32 @clk_enable(i32) local_unnamed_addr addrspace(1) #1

declare i32 @lvds_writel(ptr, i32, i32) local_unnamed_addr addrspace(1) #1

declare i32 @pm_runtime_get_sync(i32) local_unnamed_addr addrspace(1) #1

define i32 @rockchip_lvds_poweron(ptr %lvds) local_unnamed_addr addrspace(1) #1 {
body:
  %pclk = getelementptr inbounds nuw i8, ptr %lvds, i32 8
  %pclk2 = load i32, ptr %pclk, align 4
  %0 = tail call addrspace(1) i32 @clk_enable(i32 %pclk2)
  %cmpi = icmp slt i32 %0, 0
  %dev = getelementptr inbounds nuw i8, ptr %lvds, i32 12
  %dev5 = load i32, ptr %dev, align 4
  br i1 %cmpi, label %if_then, label %if_cont

common.ret:                                       ; preds = %if_cont75, %if_then13, %if_then
  %common.ret.op = phi i32 [ %0, %if_then ], [ %2, %if_then13 ], [ 0, %if_cont75 ]
  ret i32 %common.ret.op

if_then:                                          ; preds = %body
  %1 = tail call addrspace(1) i32 @DRM_DEV_ERROR(i32 %dev5, ptr nonnull @conststr, i32 %0, i32 zeroext 30)
  br label %common.ret

if_cont:                                          ; preds = %body
  %2 = tail call addrspace(1) i32 @pm_runtime_get_sync(i32 %dev5)
  %cmpi12 = icmp slt i32 %2, 0
  br i1 %cmpi12, label %if_then13, label %if_cont23

if_then13:                                        ; preds = %if_cont
  %dev16 = load i32, ptr %dev, align 4
  %3 = tail call addrspace(1) i32 @DRM_DEV_ERROR(i32 %dev16, ptr nonnull @conststr.1, i32 %2, i32 zeroext 29)
  %pclk20 = load i32, ptr %pclk, align 4
  %4 = tail call addrspace(1) i32 @clk_disable(i32 %pclk20)
  br label %common.ret

if_cont23:                                        ; preds = %if_cont
  %RK3288_LVDS_CH0_REG0_LANE4_EN = load i32, ptr @RK3288_LVDS_CH0_REG0_LANE4_EN, align 4
  %RK3288_LVDS_CH0_REG0_LANE3_EN = load i32, ptr @RK3288_LVDS_CH0_REG0_LANE3_EN, align 4
  %binop = or i32 %RK3288_LVDS_CH0_REG0_LANE3_EN, %RK3288_LVDS_CH0_REG0_LANE4_EN
  %RK3288_LVDS_CH0_REG0_LANE2_EN = load i32, ptr @RK3288_LVDS_CH0_REG0_LANE2_EN, align 4
  %binop24 = or i32 %binop, %RK3288_LVDS_CH0_REG0_LANE2_EN
  %RK3288_LVDS_CH0_REG0_LANE1_EN = load i32, ptr @RK3288_LVDS_CH0_REG0_LANE1_EN, align 4
  %binop25 = or i32 %binop24, %RK3288_LVDS_CH0_REG0_LANE1_EN
  %RK3288_LVDS_CH0_REG0_LANE0_EN = load i32, ptr @RK3288_LVDS_CH0_REG0_LANE0_EN, align 4
  %binop26 = or i32 %binop25, %RK3288_LVDS_CH0_REG0_LANE0_EN
  %output28 = load i64, ptr %lvds, align 8
  %DISPLAY_OUTPUT_RGB = load i64, ptr @DISPLAY_OUTPUT_RGB, align 8
  %cmpi29 = icmp eq i64 %output28, %DISPLAY_OUTPUT_RGB
  %RK3288_LVDS_CH0_REG0_LANECK_EN = load i32, ptr @RK3288_LVDS_CH0_REG0_LANECK_EN, align 4
  %RK3288_LVDS_CH0_REG0 = load i32, ptr @RK3288_LVDS_CH0_REG0, align 4
  br i1 %cmpi29, label %if_then30, label %if_else48

if_then30:                                        ; preds = %if_cont23
  %RK3288_LVDS_CH0_REG0_TTL_EN = load i32, ptr @RK3288_LVDS_CH0_REG0_TTL_EN, align 4
  %5 = or i32 %RK3288_LVDS_CH0_REG0_LANECK_EN, %binop26
  %binop32 = or i32 %5, %RK3288_LVDS_CH0_REG0_TTL_EN
  %6 = tail call addrspace(1) i32 @lvds_writel(ptr nonnull %lvds, i32 %RK3288_LVDS_CH0_REG0, i32 %binop32)
  %RK3288_LVDS_CH0_REG2 = load i32, ptr @RK3288_LVDS_CH0_REG2, align 4
  %7 = tail call addrspace(1) i32 @RK3288_LVDS_PLL_FBDIV_REG2(i32 70)
  %8 = tail call addrspace(1) i32 @lvds_writel(ptr nonnull %lvds, i32 %RK3288_LVDS_CH0_REG2, i32 %7)
  %RK3288_LVDS_CH0_REG4 = load i32, ptr @RK3288_LVDS_CH0_REG4, align 4
  %RK3288_LVDS_CH0_REG4_LANECK_TTL_MODE = load i32, ptr @RK3288_LVDS_CH0_REG4_LANECK_TTL_MODE, align 4
  %RK3288_LVDS_CH0_REG4_LANE4_TTL_MODE = load i32, ptr @RK3288_LVDS_CH0_REG4_LANE4_TTL_MODE, align 4
  %binop37 = or i32 %RK3288_LVDS_CH0_REG4_LANE4_TTL_MODE, %RK3288_LVDS_CH0_REG4_LANECK_TTL_MODE
  %RK3288_LVDS_CH0_REG4_LANE3_TTL_MODE = load i32, ptr @RK3288_LVDS_CH0_REG4_LANE3_TTL_MODE, align 4
  %binop38 = or i32 %binop37, %RK3288_LVDS_CH0_REG4_LANE3_TTL_MODE
  %RK3288_LVDS_CH0_REG4_LANE2_TTL_MODE = load i32, ptr @RK3288_LVDS_CH0_REG4_LANE2_TTL_MODE, align 4
  %binop39 = or i32 %binop38, %RK3288_LVDS_CH0_REG4_LANE2_TTL_MODE
  %RK3288_LVDS_CH0_REG4_LANE1_TTL_MODE = load i32, ptr @RK3288_LVDS_CH0_REG4_LANE1_TTL_MODE, align 4
  %binop40 = or i32 %binop39, %RK3288_LVDS_CH0_REG4_LANE1_TTL_MODE
  %RK3288_LVDS_CH0_REG4_LANE0_TTL_MODE = load i32, ptr @RK3288_LVDS_CH0_REG4_LANE0_TTL_MODE, align 4
  %binop41 = or i32 %binop40, %RK3288_LVDS_CH0_REG4_LANE0_TTL_MODE
  %9 = tail call addrspace(1) i32 @lvds_writel(ptr nonnull %lvds, i32 %RK3288_LVDS_CH0_REG4, i32 %binop41)
  %RK3288_LVDS_CH0_REG5 = load i32, ptr @RK3288_LVDS_CH0_REG5, align 4
  %RK3288_LVDS_CH0_REG5_LANECK_TTL_DATA = load i32, ptr @RK3288_LVDS_CH0_REG5_LANECK_TTL_DATA, align 4
  %RK3288_LVDS_CH0_REG5_LANE4_TTL_DATA = load i32, ptr @RK3288_LVDS_CH0_REG5_LANE4_TTL_DATA, align 4
  %binop43 = or i32 %RK3288_LVDS_CH0_REG5_LANE4_TTL_DATA, %RK3288_LVDS_CH0_REG5_LANECK_TTL_DATA
  %RK3288_LVDS_CH0_REG5_LANE3_TTL_DATA = load i32, ptr @RK3288_LVDS_CH0_REG5_LANE3_TTL_DATA, align 4
  %binop44 = or i32 %binop43, %RK3288_LVDS_CH0_REG5_LANE3_TTL_DATA
  %RK3288_LVDS_CH0_REG5_LANE2_TTL_DATA = load i32, ptr @RK3288_LVDS_CH0_REG5_LANE2_TTL_DATA, align 4
  %binop45 = or i32 %binop44, %RK3288_LVDS_CH0_REG5_LANE2_TTL_DATA
  %RK3288_LVDS_CH0_REG5_LANE1_TTL_DATA = load i32, ptr @RK3288_LVDS_CH0_REG5_LANE1_TTL_DATA, align 4
  %binop46 = or i32 %binop45, %RK3288_LVDS_CH0_REG5_LANE1_TTL_DATA
  %RK3288_LVDS_CH0_REG5_LANE0_TTL_DATA = load i32, ptr @RK3288_LVDS_CH0_REG5_LANE0_TTL_DATA, align 4
  %binop47 = or i32 %binop46, %RK3288_LVDS_CH0_REG5_LANE0_TTL_DATA
  %10 = tail call addrspace(1) i32 @lvds_writel(ptr nonnull %lvds, i32 %RK3288_LVDS_CH0_REG5, i32 %binop47)
  br label %if_cont75

if_else48:                                        ; preds = %if_cont23
  %RK3288_LVDS_CH0_REG0_LVDS_EN = load i32, ptr @RK3288_LVDS_CH0_REG0_LVDS_EN, align 4
  %11 = or i32 %RK3288_LVDS_CH0_REG0_LANECK_EN, %binop26
  %binop52 = or i32 %11, %RK3288_LVDS_CH0_REG0_LVDS_EN
  %12 = tail call addrspace(1) i32 @lvds_writel(ptr nonnull %lvds, i32 %RK3288_LVDS_CH0_REG0, i32 %binop52)
  %RK3288_LVDS_CH0_REG1 = load i32, ptr @RK3288_LVDS_CH0_REG1, align 4
  %RK3288_LVDS_CH0_REG1_LANECK_BIAS = load i32, ptr @RK3288_LVDS_CH0_REG1_LANECK_BIAS, align 4
  %RK3288_LVDS_CH0_REG1_LANE4_BIAS = load i32, ptr @RK3288_LVDS_CH0_REG1_LANE4_BIAS, align 4
  %binop57 = or i32 %RK3288_LVDS_CH0_REG1_LANE4_BIAS, %RK3288_LVDS_CH0_REG1_LANECK_BIAS
  %RK3288_LVDS_CH0_REG1_LANE3_BIAS = load i32, ptr @RK3288_LVDS_CH0_REG1_LANE3_BIAS, align 4
  %binop58 = or i32 %binop57, %RK3288_LVDS_CH0_REG1_LANE3_BIAS
  %RK3288_LVDS_CH0_REG1_LANE2_BIAS = load i32, ptr @RK3288_LVDS_CH0_REG1_LANE2_BIAS, align 4
  %binop59 = or i32 %binop58, %RK3288_LVDS_CH0_REG1_LANE2_BIAS
  %RK3288_LVDS_CH0_REG1_LANE1_BIAS = load i32, ptr @RK3288_LVDS_CH0_REG1_LANE1_BIAS, align 4
  %binop60 = or i32 %binop59, %RK3288_LVDS_CH0_REG1_LANE1_BIAS
  %RK3288_LVDS_CH0_REG1_LANE0_BIAS = load i32, ptr @RK3288_LVDS_CH0_REG1_LANE0_BIAS, align 4
  %binop61 = or i32 %binop60, %RK3288_LVDS_CH0_REG1_LANE0_BIAS
  %13 = tail call addrspace(1) i32 @lvds_writel(ptr nonnull %lvds, i32 %RK3288_LVDS_CH0_REG1, i32 %binop61)
  %RK3288_LVDS_CH0_REG263 = load i32, ptr @RK3288_LVDS_CH0_REG2, align 4
  %RK3288_LVDS_CH0_REG2_RESERVE_ON = load i32, ptr @RK3288_LVDS_CH0_REG2_RESERVE_ON, align 4
  %RK3288_LVDS_CH0_REG2_LANECK_LVDS_MODE = load i32, ptr @RK3288_LVDS_CH0_REG2_LANECK_LVDS_MODE, align 4
  %binop64 = or i32 %RK3288_LVDS_CH0_REG2_LANECK_LVDS_MODE, %RK3288_LVDS_CH0_REG2_RESERVE_ON
  %RK3288_LVDS_CH0_REG2_LANE4_LVDS_MODE = load i32, ptr @RK3288_LVDS_CH0_REG2_LANE4_LVDS_MODE, align 4
  %binop65 = or i32 %binop64, %RK3288_LVDS_CH0_REG2_LANE4_LVDS_MODE
  %RK3288_LVDS_CH0_REG2_LANE3_LVDS_MODE = load i32, ptr @RK3288_LVDS_CH0_REG2_LANE3_LVDS_MODE, align 4
  %binop66 = or i32 %binop65, %RK3288_LVDS_CH0_REG2_LANE3_LVDS_MODE
  %RK3288_LVDS_CH0_REG2_LANE2_LVDS_MODE = load i32, ptr @RK3288_LVDS_CH0_REG2_LANE2_LVDS_MODE, align 4
  %binop67 = or i32 %binop66, %RK3288_LVDS_CH0_REG2_LANE2_LVDS_MODE
  %RK3288_LVDS_CH0_REG2_LANE1_LVDS_MODE = load i32, ptr @RK3288_LVDS_CH0_REG2_LANE1_LVDS_MODE, align 4
  %binop68 = or i32 %binop67, %RK3288_LVDS_CH0_REG2_LANE1_LVDS_MODE
  %RK3288_LVDS_CH0_REG2_LANE0_LVDS_MODE = load i32, ptr @RK3288_LVDS_CH0_REG2_LANE0_LVDS_MODE, align 4
  %binop69 = or i32 %binop68, %RK3288_LVDS_CH0_REG2_LANE0_LVDS_MODE
  %14 = tail call addrspace(1) i32 @RK3288_LVDS_PLL_FBDIV_REG2(i32 70)
  %binop70 = or i32 %binop69, %14
  %15 = tail call addrspace(1) i32 @lvds_writel(ptr nonnull %lvds, i32 %RK3288_LVDS_CH0_REG263, i32 %binop70)
  %RK3288_LVDS_CH0_REG472 = load i32, ptr @RK3288_LVDS_CH0_REG4, align 4
  %16 = tail call addrspace(1) i32 @lvds_writel(ptr nonnull %lvds, i32 %RK3288_LVDS_CH0_REG472, i32 0)
  %RK3288_LVDS_CH0_REG574 = load i32, ptr @RK3288_LVDS_CH0_REG5, align 4
  %17 = tail call addrspace(1) i32 @lvds_writel(ptr nonnull %lvds, i32 %RK3288_LVDS_CH0_REG574, i32 0)
  br label %if_cont75

if_cont75:                                        ; preds = %if_else48, %if_then30
  %RK3288_LVDS_CH0_REG3 = load i32, ptr @RK3288_LVDS_CH0_REG3, align 4
  %18 = tail call addrspace(1) i32 @RK3288_LVDS_PLL_FBDIV_REG3(i32 70)
  %19 = tail call addrspace(1) i32 @lvds_writel(ptr nonnull %lvds, i32 %RK3288_LVDS_CH0_REG3, i32 %18)
  %RK3288_LVDS_CH0_REGD = load i32, ptr @RK3288_LVDS_CH0_REGD, align 4
  %20 = tail call addrspace(1) i32 @RK3288_LVDS_PLL_PREDIV_REGD(i32 10)
  %21 = tail call addrspace(1) i32 @lvds_writel(ptr nonnull %lvds, i32 %RK3288_LVDS_CH0_REGD, i32 %20)
  %RK3288_LVDS_CH0_REG20 = load i32, ptr @RK3288_LVDS_CH0_REG20, align 4
  %RK3288_LVDS_CH0_REG20_LSB = load i32, ptr @RK3288_LVDS_CH0_REG20_LSB, align 4
  %22 = tail call addrspace(1) i32 @lvds_writel(ptr nonnull %lvds, i32 %RK3288_LVDS_CH0_REG20, i32 %RK3288_LVDS_CH0_REG20_LSB)
  %RK3288_LVDS_CFG_REGC = load i32, ptr @RK3288_LVDS_CFG_REGC, align 4
  %RK3288_LVDS_CFG_REGC_PLL_ENABLE = load i32, ptr @RK3288_LVDS_CFG_REGC_PLL_ENABLE, align 4
  %23 = tail call addrspace(1) i32 @lvds_writel(ptr nonnull %lvds, i32 %RK3288_LVDS_CFG_REGC, i32 %RK3288_LVDS_CFG_REGC_PLL_ENABLE)
  %RK3288_LVDS_CFG_REG21 = load i32, ptr @RK3288_LVDS_CFG_REG21, align 4
  %RK3288_LVDS_CFG_REG21_TX_ENABLE = load i32, ptr @RK3288_LVDS_CFG_REG21_TX_ENABLE, align 4
  %24 = tail call addrspace(1) i32 @lvds_writel(ptr nonnull %lvds, i32 %RK3288_LVDS_CFG_REG21, i32 %RK3288_LVDS_CFG_REG21_TX_ENABLE)
  br label %common.ret
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
