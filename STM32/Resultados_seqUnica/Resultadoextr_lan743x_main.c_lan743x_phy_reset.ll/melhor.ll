; ModuleID = 'angha-ll-stm32f1/extr_lan743x_main.c_lan743x_phy_reset.ll'
source_filename = "out/extr_lan743x_main.c_lan743x_phy_reset.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@LAN743X_CSR_READ_OP = local_unnamed_addr global i32 0
@PMT_CTL = local_unnamed_addr global i32 0
@PMT_CTL_ETH_PHY_RST_ = local_unnamed_addr global i32 0
@PMT_CTL_READY_ = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"lan743x_adapter:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @lan743x_csr_read(ptr, i32) local_unnamed_addr addrspace(1) #1

declare i32 @lan743x_csr_write(ptr, i32, i32) local_unnamed_addr addrspace(1) #1

declare i32 @readx_poll_timeout(i32, i32, i32, i32, i32, i32) local_unnamed_addr addrspace(1) #1

define i32 @lan743x_phy_reset(ptr %adapter) local_unnamed_addr addrspace(1) #1 {
body:
  %PMT_CTL = load i32, ptr @PMT_CTL, align 4
  %0 = tail call addrspace(1) i32 @lan743x_csr_read(ptr %adapter, i32 %PMT_CTL)
  %PMT_CTL_ETH_PHY_RST_ = load i32, ptr @PMT_CTL_ETH_PHY_RST_, align 4
  %binop = or i32 %PMT_CTL_ETH_PHY_RST_, %0
  %PMT_CTL3 = load i32, ptr @PMT_CTL, align 4
  %1 = tail call addrspace(1) i32 @lan743x_csr_write(ptr %adapter, i32 %PMT_CTL3, i32 %binop)
  %LAN743X_CSR_READ_OP = load i32, ptr @LAN743X_CSR_READ_OP, align 4
  %PMT_CTL5 = load i32, ptr @PMT_CTL, align 4
  %PMT_CTL_ETH_PHY_RST_8 = load i32, ptr @PMT_CTL_ETH_PHY_RST_, align 4
  %binop9 = and i32 %PMT_CTL_ETH_PHY_RST_8, %binop
  %cmpi = icmp eq i32 %binop9, 0
  %PMT_CTL_READY_ = load i32, ptr @PMT_CTL_READY_, align 4
  %binop11 = and i32 %PMT_CTL_READY_, %binop
  %cmpi12 = icmp ne i32 %binop11, 0
  %narrow = select i1 %cmpi, i1 %cmpi12, i1 false
  %phi = zext i1 %narrow to i32
  %2 = tail call addrspace(1) i32 @readx_poll_timeout(i32 %LAN743X_CSR_READ_OP, i32 %PMT_CTL5, i32 %binop, i32 %phi, i32 50000, i32 1000000)
  ret i32 %2
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
