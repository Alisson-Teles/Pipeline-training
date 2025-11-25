; ModuleID = 'angha-ll-stm32f1/extr_amdsbwd.c_wdctrl_read.ll'
source_filename = "out/extr_amdsbwd.c_wdctrl_read.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"amdsbwd_softc:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @bus_read_4(i32, i32) local_unnamed_addr addrspace(1) #1

define i32 @wdctrl_read(ptr readonly captures(none) %sc) local_unnamed_addr addrspace(1) #1 {
body:
  %res_ctrl2 = load i32, ptr %sc, align 4
  %0 = tail call addrspace(1) i32 @bus_read_4(i32 %res_ctrl2, i32 0)
  ret i32 %0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
