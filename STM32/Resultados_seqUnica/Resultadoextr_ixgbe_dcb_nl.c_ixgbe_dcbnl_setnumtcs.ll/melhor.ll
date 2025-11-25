; ModuleID = 'angha-ll-stm32f1/extr_ixgbe_dcb_nl.c_ixgbe_dcbnl_setnumtcs.ll'
source_filename = "out/extr_ixgbe_dcb_nl.c_ixgbe_dcbnl_setnumtcs.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@EINVAL = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"net_device:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none)
define i32 @ixgbe_dcbnl_setnumtcs(ptr readnone captures(none) %netdev, i32 %tcid, i32 %num) local_unnamed_addr addrspace(1) #1 {
body:
  %EINVAL = load i32, ptr @EINVAL, align 4
  %binop = sub i32 0, %EINVAL
  ret i32 %binop
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
