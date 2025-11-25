; ModuleID = 'angha-ll-stm32f1/extr_phy_ht.c_b43_phy_ht_op_radio_read.ll'
source_filename = "out/extr_phy_ht.c_b43_phy_ht_op_radio_read.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@B43_MMIO_RADIO24_CONTROL = local_unnamed_addr global i32 0
@B43_MMIO_RADIO24_DATA = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"b43_wldev:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @b43_read16(ptr, i32) local_unnamed_addr addrspace(1) #1

declare i32 @b43_write16(ptr, i32, i32) local_unnamed_addr addrspace(1) #1

define i32 @b43_phy_ht_op_radio_read(ptr %dev, i32 %reg) local_unnamed_addr addrspace(1) #1 {
body:
  %binop = or i32 %reg, 512
  %B43_MMIO_RADIO24_CONTROL = load i32, ptr @B43_MMIO_RADIO24_CONTROL, align 4
  %0 = tail call addrspace(1) i32 @b43_write16(ptr %dev, i32 %B43_MMIO_RADIO24_CONTROL, i32 %binop)
  %B43_MMIO_RADIO24_DATA = load i32, ptr @B43_MMIO_RADIO24_DATA, align 4
  %1 = tail call addrspace(1) i32 @b43_read16(ptr %dev, i32 %B43_MMIO_RADIO24_DATA)
  ret i32 %1
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
