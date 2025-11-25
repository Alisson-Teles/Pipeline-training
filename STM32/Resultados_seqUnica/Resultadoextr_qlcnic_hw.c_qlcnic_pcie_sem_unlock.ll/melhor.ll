; ModuleID = 'angha-ll-stm32f1/extr_qlcnic_hw.c_qlcnic_pcie_sem_unlock.ll'
source_filename = "out/extr_qlcnic_hw.c_qlcnic_pcie_sem_unlock.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"qlcnic_adapter:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @PCIE_SEM_UNLOCK(i32) local_unnamed_addr addrspace(1) #1

declare i32 @QLCNIC_PCIE_REG(i32) local_unnamed_addr addrspace(1) #1

declare i32 @QLCRD32(ptr, i32) local_unnamed_addr addrspace(1) #1

define void @qlcnic_pcie_sem_unlock(ptr %adapter, i32 %sem) local_unnamed_addr addrspace(1) #1 {
body:
  %0 = tail call addrspace(1) i32 @PCIE_SEM_UNLOCK(i32 %sem)
  %1 = tail call addrspace(1) i32 @QLCNIC_PCIE_REG(i32 %0)
  %2 = tail call addrspace(1) i32 @QLCRD32(ptr %adapter, i32 %1)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
