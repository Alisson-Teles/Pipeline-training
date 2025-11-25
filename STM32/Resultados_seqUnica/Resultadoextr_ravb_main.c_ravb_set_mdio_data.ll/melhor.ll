; ModuleID = 'angha-ll-stm32f1/extr_ravb_main.c_ravb_set_mdio_data.ll'
source_filename = "out/extr_ravb_main.c_ravb_set_mdio_data.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@PIR_MDO = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"mdiobb_ctrl:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @ravb_mdio_ctrl(ptr, i32, i32) local_unnamed_addr addrspace(1) #1

define void @ravb_set_mdio_data(ptr %ctrl, i32 %value) local_unnamed_addr addrspace(1) #1 {
body:
  %PIR_MDO = load i32, ptr @PIR_MDO, align 4
  %0 = tail call addrspace(1) i32 @ravb_mdio_ctrl(ptr %ctrl, i32 %PIR_MDO, i32 %value)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
