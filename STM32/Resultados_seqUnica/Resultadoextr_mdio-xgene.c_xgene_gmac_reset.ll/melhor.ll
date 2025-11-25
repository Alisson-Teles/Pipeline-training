; ModuleID = 'angha-ll-stm32f1/extr_mdio-xgene.c_xgene_gmac_reset.ll'
source_filename = "out/extr_mdio-xgene.c_xgene_gmac_reset.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@MAC_CONFIG_1_ADDR = local_unnamed_addr global i32 0
@SOFT_RESET = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"xgene_mdio_pdata:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @xgene_mdio_wr_mac(ptr, i32, i32) local_unnamed_addr addrspace(1) #1

define void @xgene_gmac_reset(ptr %pdata) local_unnamed_addr addrspace(1) #1 {
body:
  %MAC_CONFIG_1_ADDR = load i32, ptr @MAC_CONFIG_1_ADDR, align 4
  %SOFT_RESET = load i32, ptr @SOFT_RESET, align 4
  %0 = tail call addrspace(1) i32 @xgene_mdio_wr_mac(ptr %pdata, i32 %MAC_CONFIG_1_ADDR, i32 %SOFT_RESET)
  %MAC_CONFIG_1_ADDR3 = load i32, ptr @MAC_CONFIG_1_ADDR, align 4
  %1 = tail call addrspace(1) i32 @xgene_mdio_wr_mac(ptr %pdata, i32 %MAC_CONFIG_1_ADDR3, i32 0)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
