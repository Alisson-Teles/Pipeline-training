; ModuleID = 'angha-ll-stm32f1/extr_qlcnic_83xx_init.c_qlcnic_83xx_take_eport_out_of_reset.ll'
source_filename = "out/extr_qlcnic_83xx_init.c_qlcnic_83xx_take_eport_out_of_reset.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@QLC_83XX_RESET_CONTROL = local_unnamed_addr global i32 0
@QLC_83XX_RESET_EPGSHIM = local_unnamed_addr global i32 0
@QLC_83XX_RESET_ETHERPCS = local_unnamed_addr global i32 0
@QLC_83XX_RESET_PORT0 = local_unnamed_addr global i32 0
@QLC_83XX_RESET_PORT1 = local_unnamed_addr global i32 0
@QLC_83XX_RESET_PORT2 = local_unnamed_addr global i32 0
@QLC_83XX_RESET_PORT3 = local_unnamed_addr global i32 0
@QLC_83XX_RESET_REG = local_unnamed_addr global i32 0
@QLC_83XX_RESET_SRESHIM = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"qlcnic_adapter:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @QLCWR32(ptr, i32, i32) local_unnamed_addr addrspace(1) #1

define void @qlcnic_83xx_take_eport_out_of_reset(ptr %adapter) local_unnamed_addr addrspace(1) #1 {
body:
  %QLC_83XX_RESET_REG = load i32, ptr @QLC_83XX_RESET_REG, align 4
  %0 = tail call addrspace(1) i32 @QLCWR32(ptr %adapter, i32 %QLC_83XX_RESET_REG, i32 0)
  %QLC_83XX_RESET_PORT0 = load i32, ptr @QLC_83XX_RESET_PORT0, align 4
  %1 = tail call addrspace(1) i32 @QLCWR32(ptr %adapter, i32 %QLC_83XX_RESET_PORT0, i32 0)
  %QLC_83XX_RESET_PORT1 = load i32, ptr @QLC_83XX_RESET_PORT1, align 4
  %2 = tail call addrspace(1) i32 @QLCWR32(ptr %adapter, i32 %QLC_83XX_RESET_PORT1, i32 0)
  %QLC_83XX_RESET_PORT2 = load i32, ptr @QLC_83XX_RESET_PORT2, align 4
  %3 = tail call addrspace(1) i32 @QLCWR32(ptr %adapter, i32 %QLC_83XX_RESET_PORT2, i32 0)
  %QLC_83XX_RESET_PORT3 = load i32, ptr @QLC_83XX_RESET_PORT3, align 4
  %4 = tail call addrspace(1) i32 @QLCWR32(ptr %adapter, i32 %QLC_83XX_RESET_PORT3, i32 0)
  %QLC_83XX_RESET_SRESHIM = load i32, ptr @QLC_83XX_RESET_SRESHIM, align 4
  %5 = tail call addrspace(1) i32 @QLCWR32(ptr %adapter, i32 %QLC_83XX_RESET_SRESHIM, i32 0)
  %QLC_83XX_RESET_EPGSHIM = load i32, ptr @QLC_83XX_RESET_EPGSHIM, align 4
  %6 = tail call addrspace(1) i32 @QLCWR32(ptr %adapter, i32 %QLC_83XX_RESET_EPGSHIM, i32 0)
  %QLC_83XX_RESET_ETHERPCS = load i32, ptr @QLC_83XX_RESET_ETHERPCS, align 4
  %7 = tail call addrspace(1) i32 @QLCWR32(ptr %adapter, i32 %QLC_83XX_RESET_ETHERPCS, i32 0)
  %QLC_83XX_RESET_CONTROL = load i32, ptr @QLC_83XX_RESET_CONTROL, align 4
  %8 = tail call addrspace(1) i32 @QLCWR32(ptr %adapter, i32 %QLC_83XX_RESET_CONTROL, i32 1)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
