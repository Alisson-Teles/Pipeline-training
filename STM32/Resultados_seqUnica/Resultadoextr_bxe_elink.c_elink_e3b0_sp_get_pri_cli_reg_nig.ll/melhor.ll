; ModuleID = 'angha-ll-stm32f1/extr_bxe_elink.c_elink_e3b0_sp_get_pri_cli_reg_nig.ll'
source_filename = "out/extr_bxe_elink.c_elink_e3b0_sp_get_pri_cli_reg_nig.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

declare i32 @elink_e3b0_sp_get_pri_cli_reg(i32, i32, i32, i32, i32) local_unnamed_addr addrspace(1) #0

define i32 @elink_e3b0_sp_get_pri_cli_reg_nig(i32 %cos, i32 %pri_set) local_unnamed_addr addrspace(1) #0 {
body:
  %0 = tail call addrspace(1) i32 @elink_e3b0_sp_get_pri_cli_reg(i32 %cos, i32 3, i32 %pri_set, i32 3, i32 4)
  ret i32 %0
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
