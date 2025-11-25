; ModuleID = 'angha-ll-stm32f1/extr_reg.h_mlxsw_reg_recr2_pack.ll'
source_filename = "out/extr_reg.h_mlxsw_reg_recr2_pack.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@recr2 = local_unnamed_addr global i32 0

declare i32 @MLXSW_REG_ZERO(i32, ptr, i32 zeroext) local_unnamed_addr addrspace(1) #0

declare i32 @mlxsw_reg_recr2_pp_set(ptr, i32, i32 zeroext) local_unnamed_addr addrspace(1) #0

declare i32 @mlxsw_reg_recr2_seed_set(ptr, i32, i32 zeroext) local_unnamed_addr addrspace(1) #0

declare i32 @mlxsw_reg_recr2_sh_set(ptr, i32, i32 zeroext) local_unnamed_addr addrspace(1) #0

define void @mlxsw_reg_recr2_pack(ptr %payload, i32 %seed, i32 zeroext %payload.size) local_unnamed_addr addrspace(1) #0 {
body:
  %recr2 = load i32, ptr @recr2, align 4
  %0 = tail call addrspace(1) i32 @MLXSW_REG_ZERO(i32 %recr2, ptr %payload, i32 zeroext %payload.size)
  %1 = tail call addrspace(1) i32 @mlxsw_reg_recr2_pp_set(ptr %payload, i32 0, i32 zeroext %payload.size)
  %2 = tail call addrspace(1) i32 @mlxsw_reg_recr2_sh_set(ptr %payload, i32 1, i32 zeroext %payload.size)
  %3 = tail call addrspace(1) i32 @mlxsw_reg_recr2_seed_set(ptr %payload, i32 %seed, i32 zeroext %payload.size)
  ret void
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
