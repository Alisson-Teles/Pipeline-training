; ModuleID = 'angha-ll-stm32f1/extr_shpchp_hpc.c_is_ctrl_busy.ll'
source_filename = "out/extr_shpchp_hpc.c_is_ctrl_busy.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@CMD_STATUS = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"controller:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @shpc_readw(ptr, i32) local_unnamed_addr addrspace(1) #1

define range(i32 0, 2) i32 @is_ctrl_busy(ptr %ctrl) local_unnamed_addr addrspace(1) #1 {
body:
  %CMD_STATUS = load i32, ptr @CMD_STATUS, align 4
  %0 = tail call addrspace(1) i32 @shpc_readw(ptr %ctrl, i32 %CMD_STATUS)
  %binop = and i32 %0, 1
  ret i32 %binop
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
