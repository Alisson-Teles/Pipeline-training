; ModuleID = 'angha-ll-stm32f1/extr_ipvlan.h_ipvlan_mark_private.ll'
source_filename = "out/extr_ipvlan.h_ipvlan_mark_private.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@IPVLAN_F_PRIVATE = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"ipvl_port:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none)
define void @ipvlan_mark_private(ptr captures(none) %port) local_unnamed_addr addrspace(1) #1 {
body:
  %loadleftv = load i32, ptr %port, align 4
  %IPVLAN_F_PRIVATE = load i32, ptr @IPVLAN_F_PRIVATE, align 4
  %binop = or i32 %IPVLAN_F_PRIVATE, %loadleftv
  store i32 %binop, ptr %port, align 4
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
