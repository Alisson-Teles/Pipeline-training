; ModuleID = 'angha-ll-stm32f1/extr_bnx2x_ethtool.c_bnx2x_enable_nvram_access.ll'
source_filename = "out/extr_bnx2x_ethtool.c_bnx2x_enable_nvram_access.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@MCPR_NVM_ACCESS_ENABLE_EN = local_unnamed_addr global i32 0
@MCPR_NVM_ACCESS_ENABLE_WR_EN = local_unnamed_addr global i32 0
@MCP_REG_MCPR_NVM_ACCESS_ENABLE = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"bnx2x:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @REG_RD(ptr, i32) local_unnamed_addr addrspace(1) #1

declare i32 @REG_WR(ptr, i32, i32) local_unnamed_addr addrspace(1) #1

define void @bnx2x_enable_nvram_access(ptr %bp) local_unnamed_addr addrspace(1) #1 {
body:
  %MCP_REG_MCPR_NVM_ACCESS_ENABLE = load i32, ptr @MCP_REG_MCPR_NVM_ACCESS_ENABLE, align 4
  %0 = tail call addrspace(1) i32 @REG_RD(ptr %bp, i32 %MCP_REG_MCPR_NVM_ACCESS_ENABLE)
  %MCP_REG_MCPR_NVM_ACCESS_ENABLE3 = load i32, ptr @MCP_REG_MCPR_NVM_ACCESS_ENABLE, align 4
  %MCPR_NVM_ACCESS_ENABLE_EN = load i32, ptr @MCPR_NVM_ACCESS_ENABLE_EN, align 4
  %binop = or i32 %MCPR_NVM_ACCESS_ENABLE_EN, %0
  %MCPR_NVM_ACCESS_ENABLE_WR_EN = load i32, ptr @MCPR_NVM_ACCESS_ENABLE_WR_EN, align 4
  %binop5 = or i32 %binop, %MCPR_NVM_ACCESS_ENABLE_WR_EN
  %1 = tail call addrspace(1) i32 @REG_WR(ptr %bp, i32 %MCP_REG_MCPR_NVM_ACCESS_ENABLE3, i32 %binop5)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
