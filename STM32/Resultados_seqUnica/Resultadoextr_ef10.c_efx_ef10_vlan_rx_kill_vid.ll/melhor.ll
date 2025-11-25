; ModuleID = 'angha-ll-stm32f1/extr_ef10.c_efx_ef10_vlan_rx_kill_vid.ll'
source_filename = "out/extr_ef10.c_efx_ef10_vlan_rx_kill_vid.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@EINVAL = local_unnamed_addr global i32 0
@ETH_P_8021Q = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"efx_nic:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @efx_ef10_del_vlan(ptr, i32) local_unnamed_addr addrspace(1) #1

declare i64 @htons(i32) local_unnamed_addr addrspace(1) #1

define i32 @efx_ef10_vlan_rx_kill_vid(ptr %efx, i64 %proto, i32 %vid) local_unnamed_addr addrspace(1) #1 {
body:
  %ETH_P_8021Q = load i32, ptr @ETH_P_8021Q, align 4
  %0 = tail call addrspace(1) i64 @htons(i32 %ETH_P_8021Q)
  %cmpi.not = icmp eq i64 %proto, %0
  br i1 %cmpi.not, label %if_cont, label %if_then

common.ret:                                       ; preds = %if_cont, %if_then
  %common.ret.op = phi i32 [ %binop, %if_then ], [ %1, %if_cont ]
  ret i32 %common.ret.op

if_then:                                          ; preds = %body
  %EINVAL = load i32, ptr @EINVAL, align 4
  %binop = sub i32 0, %EINVAL
  br label %common.ret

if_cont:                                          ; preds = %body
  %1 = tail call addrspace(1) i32 @efx_ef10_del_vlan(ptr %efx, i32 %vid)
  br label %common.ret
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
