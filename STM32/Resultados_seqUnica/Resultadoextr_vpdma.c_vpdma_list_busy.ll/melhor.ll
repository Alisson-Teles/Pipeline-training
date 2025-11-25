; ModuleID = 'angha-ll-stm32f1/extr_vpdma.c_vpdma_list_busy.ll'
source_filename = "out/extr_vpdma.c_vpdma_list_busy.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@VPDMA_LIST_STAT_SYNC = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"vpdma_data:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @BIT(i32) local_unnamed_addr addrspace(1) #1

declare i32 @read_reg(ptr, i32) local_unnamed_addr addrspace(1) #1

define i32 @vpdma_list_busy(ptr %vpdma, i32 %list_num) local_unnamed_addr addrspace(1) #1 {
body:
  %VPDMA_LIST_STAT_SYNC = load i32, ptr @VPDMA_LIST_STAT_SYNC, align 4
  %0 = tail call addrspace(1) i32 @read_reg(ptr %vpdma, i32 %VPDMA_LIST_STAT_SYNC)
  %binop = add i32 %list_num, 16
  %1 = tail call addrspace(1) i32 @BIT(i32 %binop)
  %binop4 = and i32 %1, %0
  ret i32 %binop4
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
