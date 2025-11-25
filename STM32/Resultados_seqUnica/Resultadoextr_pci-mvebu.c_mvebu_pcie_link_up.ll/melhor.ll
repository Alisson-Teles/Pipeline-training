; ModuleID = 'angha-ll-stm32f1/extr_pci-mvebu.c_mvebu_pcie_link_up.ll'
source_filename = "out/extr_pci-mvebu.c_mvebu_pcie_link_up.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@PCIE_STAT_LINK_DOWN = local_unnamed_addr global i32 0
@PCIE_STAT_OFF = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"mvebu_pcie_port:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @mvebu_readl(ptr, i32) local_unnamed_addr addrspace(1) #1

define range(i32 0, 2) i32 @mvebu_pcie_link_up(ptr %port) local_unnamed_addr addrspace(1) #1 {
body:
  %PCIE_STAT_OFF = load i32, ptr @PCIE_STAT_OFF, align 4
  %0 = tail call addrspace(1) i32 @mvebu_readl(ptr %port, i32 %PCIE_STAT_OFF)
  %PCIE_STAT_LINK_DOWN = load i32, ptr @PCIE_STAT_LINK_DOWN, align 4
  %binop = and i32 %PCIE_STAT_LINK_DOWN, %0
  %cmpi = icmp eq i32 %binop, 0
  %zext = zext i1 %cmpi to i32
  ret i32 %zext
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
