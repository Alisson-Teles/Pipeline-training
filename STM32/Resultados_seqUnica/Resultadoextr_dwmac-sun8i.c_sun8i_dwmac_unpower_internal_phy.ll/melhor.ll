; ModuleID = 'angha-ll-stm32f1/extr_dwmac-sun8i.c_sun8i_dwmac_unpower_internal_phy.ll'
source_filename = "out/extr_dwmac-sun8i.c_sun8i_dwmac_unpower_internal_phy.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"sunxi_priv_data:init"(ptr writeonly captures(none) initializes((0, 12)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  %gepephy_clk = getelementptr inbounds nuw i8, ptr %_this, i32 8
  store i32 0, ptr %gepephy_clk, align 4
  store i32 0, ptr %_this, align 4
  %geprst_ephy = getelementptr inbounds nuw i8, ptr %_this, i32 4
  store i32 0, ptr %geprst_ephy, align 4
  ret void
}

declare i32 @clk_disable_unprepare(i32) local_unnamed_addr addrspace(1) #1

declare i32 @reset_control_assert(i32) local_unnamed_addr addrspace(1) #1

define noundef i32 @sun8i_dwmac_unpower_internal_phy(ptr captures(none) %gmac) local_unnamed_addr addrspace(1) #1 {
body:
  %internal_phy_powered2 = load i32, ptr %gmac, align 4
  %cmpi = icmp eq i32 %internal_phy_powered2, 0
  br i1 %cmpi, label %common.ret, label %if_cont

common.ret:                                       ; preds = %if_cont, %body
  ret i32 0

if_cont:                                          ; preds = %body
  %ephy_clk = getelementptr inbounds nuw i8, ptr %gmac, i32 8
  %ephy_clk4 = load i32, ptr %ephy_clk, align 4
  %0 = tail call addrspace(1) i32 @clk_disable_unprepare(i32 %ephy_clk4)
  %rst_ephy = getelementptr inbounds nuw i8, ptr %gmac, i32 4
  %rst_ephy6 = load i32, ptr %rst_ephy, align 4
  %1 = tail call addrspace(1) i32 @reset_control_assert(i32 %rst_ephy6)
  store i32 0, ptr %gmac, align 4
  br label %common.ret
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
