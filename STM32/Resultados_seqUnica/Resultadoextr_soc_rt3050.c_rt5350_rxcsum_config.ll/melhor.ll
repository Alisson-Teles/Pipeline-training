; ModuleID = 'angha-ll-stm32f1/extr_soc_rt3050.c_rt5350_rxcsum_config.ll'
source_filename = "out/extr_soc_rt3050.c_rt5350_rxcsum_config.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@RT5350_SDM_CFG = local_unnamed_addr global i32 0
@RT5350_SDM_ICS_EN = local_unnamed_addr global i32 0
@RT5350_SDM_TCS_EN = local_unnamed_addr global i32 0
@RT5350_SDM_UCS_EN = local_unnamed_addr global i32 0

declare i32 @fe_r32(i32) local_unnamed_addr addrspace(1) #0

declare i32 @fe_w32(i32, i32) local_unnamed_addr addrspace(1) #0

define void @rt5350_rxcsum_config(i32 %enable) local_unnamed_addr addrspace(1) #0 {
body:
  %cmpi.not = icmp eq i32 %enable, 0
  %RT5350_SDM_CFG6 = load i32, ptr @RT5350_SDM_CFG, align 4
  %0 = tail call addrspace(1) i32 @fe_r32(i32 %RT5350_SDM_CFG6)
  %RT5350_SDM_ICS_EN7 = load i32, ptr @RT5350_SDM_ICS_EN, align 4
  %RT5350_SDM_TCS_EN8 = load i32, ptr @RT5350_SDM_TCS_EN, align 4
  br i1 %cmpi.not, label %if_else, label %if_then

if_then:                                          ; preds = %body
  %RT5350_SDM_UCS_EN = load i32, ptr @RT5350_SDM_UCS_EN, align 4
  %1 = or i32 %0, %RT5350_SDM_UCS_EN
  %2 = or i32 %1, %RT5350_SDM_ICS_EN7
  %binop4 = or i32 %2, %RT5350_SDM_TCS_EN8
  br label %if_cont

if_else:                                          ; preds = %body
  %RT5350_SDM_UCS_EN10 = load i32, ptr @RT5350_SDM_UCS_EN, align 4
  %3 = or i32 %RT5350_SDM_ICS_EN7, %RT5350_SDM_UCS_EN10
  %binop11 = or i32 %3, %RT5350_SDM_TCS_EN8
  %neg = xor i32 %binop11, -1
  %binop12 = and i32 %0, %neg
  br label %if_cont

if_cont:                                          ; preds = %if_else, %if_then
  %binop12.sink = phi i32 [ %binop12, %if_else ], [ %binop4, %if_then ]
  %RT5350_SDM_CFG13 = load i32, ptr @RT5350_SDM_CFG, align 4
  %4 = tail call addrspace(1) i32 @fe_w32(i32 %binop12.sink, i32 %RT5350_SDM_CFG13)
  ret void
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
