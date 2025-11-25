; ModuleID = 'angha-ll-stm32f1/extr_pcie-altera.c_tlp_write_tx.ll'
source_filename = "out/extr_pcie-altera.c_tlp_write_tx.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@RP_TX_CNTRL = local_unnamed_addr global i32 0
@RP_TX_REG0 = local_unnamed_addr global i32 0
@RP_TX_REG1 = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"tlp_rp_regpair_t:init"(ptr writeonly captures(none) initializes((0, 12)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  %gepreg0 = getelementptr inbounds nuw i8, ptr %_this, i32 8
  store i32 0, ptr %gepreg0, align 4
  %gepreg1 = getelementptr inbounds nuw i8, ptr %_this, i32 4
  store i32 0, ptr %gepreg1, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"altera_pcie:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @cra_writel(ptr, i32, i32) local_unnamed_addr addrspace(1) #1

define void @tlp_write_tx(ptr %pcie, ptr readonly captures(none) %tlp_rp_regdata) local_unnamed_addr addrspace(1) #1 {
body:
  %reg0 = getelementptr inbounds nuw i8, ptr %tlp_rp_regdata, i32 8
  %reg04 = load i32, ptr %reg0, align 4
  %RP_TX_REG0 = load i32, ptr @RP_TX_REG0, align 4
  %0 = tail call addrspace(1) i32 @cra_writel(ptr %pcie, i32 %reg04, i32 %RP_TX_REG0)
  %reg1 = getelementptr inbounds nuw i8, ptr %tlp_rp_regdata, i32 4
  %reg17 = load i32, ptr %reg1, align 4
  %RP_TX_REG1 = load i32, ptr @RP_TX_REG1, align 4
  %1 = tail call addrspace(1) i32 @cra_writel(ptr %pcie, i32 %reg17, i32 %RP_TX_REG1)
  %ctrl10 = load i32, ptr %tlp_rp_regdata, align 4
  %RP_TX_CNTRL = load i32, ptr @RP_TX_CNTRL, align 4
  %2 = tail call addrspace(1) i32 @cra_writel(ptr %pcie, i32 %ctrl10, i32 %RP_TX_CNTRL)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
