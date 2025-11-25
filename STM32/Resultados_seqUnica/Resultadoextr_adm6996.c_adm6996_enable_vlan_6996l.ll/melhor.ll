; ModuleID = 'angha-ll-stm32f1/extr_adm6996.c_adm6996_enable_vlan_6996l.ll'
source_filename = "out/extr_adm6996.c_adm6996_enable_vlan_6996l.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@ADM_MAC_CLONE = local_unnamed_addr global i32 0
@ADM_SYSC3 = local_unnamed_addr global i32 0
@ADM_TBV = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"adm6996_priv:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @r16(ptr, i32) local_unnamed_addr addrspace(1) #1

declare i32 @w16(ptr, i32, i32) local_unnamed_addr addrspace(1) #1

define void @adm6996_enable_vlan_6996l(ptr %priv) local_unnamed_addr addrspace(1) #1 {
body:
  %ADM_SYSC3 = load i32, ptr @ADM_SYSC3, align 4
  %0 = tail call addrspace(1) i32 @r16(ptr %priv, i32 %ADM_SYSC3)
  %ADM_TBV = load i32, ptr @ADM_TBV, align 4
  %binop = or i32 %ADM_TBV, %0
  %ADM_MAC_CLONE = load i32, ptr @ADM_MAC_CLONE, align 4
  %binop3 = or i32 %binop, %ADM_MAC_CLONE
  %ADM_SYSC35 = load i32, ptr @ADM_SYSC3, align 4
  %1 = tail call addrspace(1) i32 @w16(ptr %priv, i32 %ADM_SYSC35, i32 %binop3)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
