; ModuleID = 'angha-ll-stm32f1/extr_hw_atl_llh.c_hw_atl_tps_tx_pkt_shed_tc_data_weight_set.ll'
source_filename = "out/extr_hw_atl_llh.c_hw_atl_tps_tx_pkt_shed_tc_data_weight_set.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@HW_ATL_TPS_DATA_TCTWEIGHT_MSK = local_unnamed_addr global i32 0
@HW_ATL_TPS_DATA_TCTWEIGHT_SHIFT = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"aq_hw_s:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @HW_ATL_TPS_DATA_TCTWEIGHT_ADR(i32) local_unnamed_addr addrspace(1) #1

declare i32 @aq_hw_write_reg_bit(ptr, i32, i32, i32, i32) local_unnamed_addr addrspace(1) #1

define void @hw_atl_tps_tx_pkt_shed_tc_data_weight_set(ptr %aq_hw, i32 %tx_pkt_shed_tc_data_weight, i32 %tc) local_unnamed_addr addrspace(1) #1 {
body:
  %0 = tail call addrspace(1) i32 @HW_ATL_TPS_DATA_TCTWEIGHT_ADR(i32 %tc)
  %HW_ATL_TPS_DATA_TCTWEIGHT_MSK = load i32, ptr @HW_ATL_TPS_DATA_TCTWEIGHT_MSK, align 4
  %HW_ATL_TPS_DATA_TCTWEIGHT_SHIFT = load i32, ptr @HW_ATL_TPS_DATA_TCTWEIGHT_SHIFT, align 4
  %1 = tail call addrspace(1) i32 @aq_hw_write_reg_bit(ptr %aq_hw, i32 %0, i32 %HW_ATL_TPS_DATA_TCTWEIGHT_MSK, i32 %HW_ATL_TPS_DATA_TCTWEIGHT_SHIFT, i32 %tx_pkt_shed_tc_data_weight)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
