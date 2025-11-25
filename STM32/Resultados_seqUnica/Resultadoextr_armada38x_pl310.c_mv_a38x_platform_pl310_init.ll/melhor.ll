; ModuleID = 'angha-ll-stm32f1/extr_armada38x_pl310.c_mv_a38x_platform_pl310_init.ll'
source_filename = "out/extr_armada38x_pl310.c_mv_a38x_platform_pl310_init.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@PL310_POWER_CTRL = local_unnamed_addr global i32 0
@PL310_PREFETCH_CTRL = local_unnamed_addr global i32 0
@POWER_CTRL_ENABLE_GATING = local_unnamed_addr global i32 0
@PREFETCH_CTRL_DATA_PREFETCH = local_unnamed_addr global i32 0
@PREFETCH_CTRL_DL = local_unnamed_addr global i32 0
@PREFETCH_CTRL_DL_ON_WRAP = local_unnamed_addr global i32 0
@PREFETCH_CTRL_INCR_DL = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"pl310_softc:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @pl310_read4(ptr, i32) local_unnamed_addr addrspace(1) #1

declare i32 @pl310_write4(ptr, i32, i32) local_unnamed_addr addrspace(1) #1

define void @mv_a38x_platform_pl310_init(i32 %plat, ptr %sc) local_unnamed_addr addrspace(1) #1 {
body:
  %PL310_POWER_CTRL = load i32, ptr @PL310_POWER_CTRL, align 4
  %0 = tail call addrspace(1) i32 @pl310_read4(ptr %sc, i32 %PL310_POWER_CTRL)
  %POWER_CTRL_ENABLE_GATING = load i32, ptr @POWER_CTRL_ENABLE_GATING, align 4
  %binop = or i32 %POWER_CTRL_ENABLE_GATING, %0
  %PL310_POWER_CTRL4 = load i32, ptr @PL310_POWER_CTRL, align 4
  %1 = tail call addrspace(1) i32 @pl310_write4(ptr %sc, i32 %PL310_POWER_CTRL4, i32 %binop)
  %PL310_PREFETCH_CTRL = load i32, ptr @PL310_PREFETCH_CTRL, align 4
  %PREFETCH_CTRL_DL = load i32, ptr @PREFETCH_CTRL_DL, align 4
  %PREFETCH_CTRL_DATA_PREFETCH = load i32, ptr @PREFETCH_CTRL_DATA_PREFETCH, align 4
  %binop7 = or i32 %PREFETCH_CTRL_DATA_PREFETCH, %PREFETCH_CTRL_DL
  %PREFETCH_CTRL_INCR_DL = load i32, ptr @PREFETCH_CTRL_INCR_DL, align 4
  %binop8 = or i32 %binop7, %PREFETCH_CTRL_INCR_DL
  %PREFETCH_CTRL_DL_ON_WRAP = load i32, ptr @PREFETCH_CTRL_DL_ON_WRAP, align 4
  %binop9 = or i32 %binop8, %PREFETCH_CTRL_DL_ON_WRAP
  %2 = tail call addrspace(1) i32 @pl310_write4(ptr %sc, i32 %PL310_PREFETCH_CTRL, i32 %binop9)
  store i32 1, ptr %sc, align 4
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
