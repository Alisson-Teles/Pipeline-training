; ModuleID = 'angha-ll-stm32f1/extr_r8169.c_rtl_w1w0_phy_ocp.ll'
source_filename = "out/extr_r8169.c_rtl_w1w0_phy_ocp.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"rtl8169_private:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @r8168_phy_ocp_read(ptr, i32) local_unnamed_addr addrspace(1) #1

declare i32 @r8168_phy_ocp_write(ptr, i32, i32) local_unnamed_addr addrspace(1) #1

define void @rtl_w1w0_phy_ocp(ptr %tp, i32 %reg, i32 %p, i32 %m) local_unnamed_addr addrspace(1) #1 {
body:
  %0 = tail call addrspace(1) i32 @r8168_phy_ocp_read(ptr %tp, i32 %reg)
  %binop = or i32 %0, %p
  %neg = xor i32 %m, -1
  %binop11 = and i32 %binop, %neg
  %1 = tail call addrspace(1) i32 @r8168_phy_ocp_write(ptr %tp, i32 %reg, i32 %binop11)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
