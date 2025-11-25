; ModuleID = 'angha-ll-stm32f1/extr_qlcnic_sriov_common.c_qlcnic_sriov_get_bc_paysize.ll'
source_filename = "out/extr_qlcnic_sriov_common.c_qlcnic_sriov_get_bc_paysize.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@QLC_BC_PAYLOAD_SZ = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none)
define i32 @qlcnic_sriov_get_bc_paysize(i32 %real_pay_size, i32 %curr_frag) local_unnamed_addr addrspace(1) #0 {
body:
  %binop = add i32 %curr_frag, 1
  %QLC_BC_PAYLOAD_SZ = load i32, ptr @QLC_BC_PAYLOAD_SZ, align 4
  %binop5 = mul i32 %QLC_BC_PAYLOAD_SZ, %binop
  %binop6 = sdiv i32 %real_pay_size, %binop5
  %cmpi.not = icmp eq i32 %binop6, 0
  br i1 %cmpi.not, label %if_else, label %if_cont

if_else:                                          ; preds = %body
  %binop11 = srem i32 %real_pay_size, %QLC_BC_PAYLOAD_SZ
  br label %if_cont

if_cont:                                          ; preds = %if_else, %body
  %pay_size.0 = phi i32 [ %binop11, %if_else ], [ %QLC_BC_PAYLOAD_SZ, %body ]
  ret i32 %pay_size.0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
