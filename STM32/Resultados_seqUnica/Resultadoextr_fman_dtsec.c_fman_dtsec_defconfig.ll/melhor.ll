; ModuleID = 'angha-ll-stm32f1/extr_fman_dtsec.c_fman_dtsec_defconfig.ll'
source_filename = "out/extr_fman_dtsec.c_fman_dtsec_defconfig.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@DEFAULT_BACK_TO_BACK_IPG = local_unnamed_addr global i32 0
@DEFAULT_HALFDUP_ALT_BACKOFF_EN = local_unnamed_addr global i32 0
@DEFAULT_HALFDUP_ALT_BACKOFF_VAL = local_unnamed_addr global i32 0
@DEFAULT_HALFDUP_BP_NO_BACKOFF = local_unnamed_addr global i32 0
@DEFAULT_HALFDUP_COLL_WINDOW = local_unnamed_addr global i32 0
@DEFAULT_HALFDUP_EXCESS_DEFER = local_unnamed_addr global i32 0
@DEFAULT_HALFDUP_NO_BACKOFF = local_unnamed_addr global i32 0
@DEFAULT_HALFDUP_ON = local_unnamed_addr global i32 0
@DEFAULT_HALFDUP_RETRANSMIT = local_unnamed_addr global i32 0
@DEFAULT_LOOPBACK = local_unnamed_addr global i32 0
@DEFAULT_MAXIMUM_FRAME = local_unnamed_addr global i32 0
@DEFAULT_MIN_IFG_ENFORCEMENT = local_unnamed_addr global i32 0
@DEFAULT_NON_BACK_TO_BACK_IPG1 = local_unnamed_addr global i32 0
@DEFAULT_NON_BACK_TO_BACK_IPG2 = local_unnamed_addr global i32 0
@DEFAULT_PREAMBLE_LEN = local_unnamed_addr global i32 0
@DEFAULT_PTP_EXCEPTION_EN = local_unnamed_addr global i32 0
@DEFAULT_PTP_TSU_EN = local_unnamed_addr global i32 0
@DEFAULT_RX_CTRL_ACC = local_unnamed_addr global i32 0
@DEFAULT_RX_DROP_BCAST = local_unnamed_addr global i32 0
@DEFAULT_RX_FLOW = local_unnamed_addr global i32 0
@DEFAULT_RX_GROUP_HASH_EXD = local_unnamed_addr global i32 0
@DEFAULT_RX_LEN_CHECK = local_unnamed_addr global i32 0
@DEFAULT_RX_PREAMBLE = local_unnamed_addr global i32 0
@DEFAULT_RX_PREPEND = local_unnamed_addr global i32 0
@DEFAULT_RX_PROMISC = local_unnamed_addr global i32 0
@DEFAULT_RX_SHORT_FRM = local_unnamed_addr global i32 0
@DEFAULT_RX_TIME_STAMP_EN = local_unnamed_addr global i32 0
@DEFAULT_TBIPA = local_unnamed_addr global i32 0
@DEFAULT_TBI_PHY_ADDR = local_unnamed_addr global i32 0
@DEFAULT_TX_CRC = local_unnamed_addr global i32 0
@DEFAULT_TX_FLOW = local_unnamed_addr global i32 0
@DEFAULT_TX_PAD_CRC = local_unnamed_addr global i32 0
@DEFAULT_TX_PAUSE_TIME = local_unnamed_addr global i32 0
@DEFAULT_TX_PAUSE_TIME_EXTD = local_unnamed_addr global i32 0
@DEFAULT_TX_PREAMBLE = local_unnamed_addr global i32 0
@DEFAULT_TX_TIME_STAMP_EN = local_unnamed_addr global i32 0
@DEFAULT_WAKE_ON_LAN = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"dtsec_cfg:init"(ptr writeonly captures(none) initializes((0, 148)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(148) %_this, i8 0, i64 148, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none)
define void @fman_dtsec_defconfig(ptr writeonly captures(none) initializes((0, 148)) %cfg) local_unnamed_addr addrspace(1) #1 {
body:
  %halfdup_on = getelementptr inbounds nuw i8, ptr %cfg, i32 144
  %DEFAULT_HALFDUP_ON = load i32, ptr @DEFAULT_HALFDUP_ON, align 4
  store i32 %DEFAULT_HALFDUP_ON, ptr %halfdup_on, align 4
  %halfdup_retransmit = getelementptr inbounds nuw i8, ptr %cfg, i32 140
  %DEFAULT_HALFDUP_RETRANSMIT = load i32, ptr @DEFAULT_HALFDUP_RETRANSMIT, align 4
  store i32 %DEFAULT_HALFDUP_RETRANSMIT, ptr %halfdup_retransmit, align 4
  %halfdup_coll_window = getelementptr inbounds nuw i8, ptr %cfg, i32 136
  %DEFAULT_HALFDUP_COLL_WINDOW = load i32, ptr @DEFAULT_HALFDUP_COLL_WINDOW, align 4
  store i32 %DEFAULT_HALFDUP_COLL_WINDOW, ptr %halfdup_coll_window, align 4
  %halfdup_excess_defer = getelementptr inbounds nuw i8, ptr %cfg, i32 132
  %DEFAULT_HALFDUP_EXCESS_DEFER = load i32, ptr @DEFAULT_HALFDUP_EXCESS_DEFER, align 4
  store i32 %DEFAULT_HALFDUP_EXCESS_DEFER, ptr %halfdup_excess_defer, align 4
  %halfdup_no_backoff = getelementptr inbounds nuw i8, ptr %cfg, i32 128
  %DEFAULT_HALFDUP_NO_BACKOFF = load i32, ptr @DEFAULT_HALFDUP_NO_BACKOFF, align 4
  store i32 %DEFAULT_HALFDUP_NO_BACKOFF, ptr %halfdup_no_backoff, align 4
  %halfdup_bp_no_backoff = getelementptr inbounds nuw i8, ptr %cfg, i32 124
  %DEFAULT_HALFDUP_BP_NO_BACKOFF = load i32, ptr @DEFAULT_HALFDUP_BP_NO_BACKOFF, align 4
  store i32 %DEFAULT_HALFDUP_BP_NO_BACKOFF, ptr %halfdup_bp_no_backoff, align 4
  %halfdup_alt_backoff_val = getelementptr inbounds nuw i8, ptr %cfg, i32 120
  %DEFAULT_HALFDUP_ALT_BACKOFF_VAL = load i32, ptr @DEFAULT_HALFDUP_ALT_BACKOFF_VAL, align 4
  store i32 %DEFAULT_HALFDUP_ALT_BACKOFF_VAL, ptr %halfdup_alt_backoff_val, align 4
  %halfdup_alt_backoff_en = getelementptr inbounds nuw i8, ptr %cfg, i32 116
  %DEFAULT_HALFDUP_ALT_BACKOFF_EN = load i32, ptr @DEFAULT_HALFDUP_ALT_BACKOFF_EN, align 4
  store i32 %DEFAULT_HALFDUP_ALT_BACKOFF_EN, ptr %halfdup_alt_backoff_en, align 4
  %rx_drop_bcast = getelementptr inbounds nuw i8, ptr %cfg, i32 112
  %DEFAULT_RX_DROP_BCAST = load i32, ptr @DEFAULT_RX_DROP_BCAST, align 4
  store i32 %DEFAULT_RX_DROP_BCAST, ptr %rx_drop_bcast, align 4
  %rx_short_frm = getelementptr inbounds nuw i8, ptr %cfg, i32 108
  %DEFAULT_RX_SHORT_FRM = load i32, ptr @DEFAULT_RX_SHORT_FRM, align 4
  store i32 %DEFAULT_RX_SHORT_FRM, ptr %rx_short_frm, align 4
  %rx_len_check = getelementptr inbounds nuw i8, ptr %cfg, i32 104
  %DEFAULT_RX_LEN_CHECK = load i32, ptr @DEFAULT_RX_LEN_CHECK, align 4
  store i32 %DEFAULT_RX_LEN_CHECK, ptr %rx_len_check, align 4
  %tx_pad_crc = getelementptr inbounds nuw i8, ptr %cfg, i32 100
  %DEFAULT_TX_PAD_CRC = load i32, ptr @DEFAULT_TX_PAD_CRC, align 4
  store i32 %DEFAULT_TX_PAD_CRC, ptr %tx_pad_crc, align 4
  %tx_crc = getelementptr inbounds nuw i8, ptr %cfg, i32 96
  %DEFAULT_TX_CRC = load i32, ptr @DEFAULT_TX_CRC, align 4
  store i32 %DEFAULT_TX_CRC, ptr %tx_crc, align 4
  %rx_ctrl_acc = getelementptr inbounds nuw i8, ptr %cfg, i32 92
  %DEFAULT_RX_CTRL_ACC = load i32, ptr @DEFAULT_RX_CTRL_ACC, align 4
  store i32 %DEFAULT_RX_CTRL_ACC, ptr %rx_ctrl_acc, align 4
  %tx_pause_time = getelementptr inbounds nuw i8, ptr %cfg, i32 88
  %DEFAULT_TX_PAUSE_TIME = load i32, ptr @DEFAULT_TX_PAUSE_TIME, align 4
  store i32 %DEFAULT_TX_PAUSE_TIME, ptr %tx_pause_time, align 4
  %tbipa = getelementptr inbounds nuw i8, ptr %cfg, i32 84
  %DEFAULT_TBIPA = load i32, ptr @DEFAULT_TBIPA, align 4
  store i32 %DEFAULT_TBIPA, ptr %tbipa, align 4
  %rx_prepend = getelementptr inbounds nuw i8, ptr %cfg, i32 80
  %DEFAULT_RX_PREPEND = load i32, ptr @DEFAULT_RX_PREPEND, align 4
  store i32 %DEFAULT_RX_PREPEND, ptr %rx_prepend, align 4
  %ptp_tsu_en = getelementptr inbounds nuw i8, ptr %cfg, i32 76
  %DEFAULT_PTP_TSU_EN = load i32, ptr @DEFAULT_PTP_TSU_EN, align 4
  store i32 %DEFAULT_PTP_TSU_EN, ptr %ptp_tsu_en, align 4
  %ptp_exception_en = getelementptr inbounds nuw i8, ptr %cfg, i32 72
  %DEFAULT_PTP_EXCEPTION_EN = load i32, ptr @DEFAULT_PTP_EXCEPTION_EN, align 4
  store i32 %DEFAULT_PTP_EXCEPTION_EN, ptr %ptp_exception_en, align 4
  %preamble_len = getelementptr inbounds nuw i8, ptr %cfg, i32 68
  %DEFAULT_PREAMBLE_LEN = load i32, ptr @DEFAULT_PREAMBLE_LEN, align 4
  store i32 %DEFAULT_PREAMBLE_LEN, ptr %preamble_len, align 4
  %rx_preamble = getelementptr inbounds nuw i8, ptr %cfg, i32 64
  %DEFAULT_RX_PREAMBLE = load i32, ptr @DEFAULT_RX_PREAMBLE, align 4
  store i32 %DEFAULT_RX_PREAMBLE, ptr %rx_preamble, align 4
  %tx_preamble = getelementptr inbounds nuw i8, ptr %cfg, i32 60
  %DEFAULT_TX_PREAMBLE = load i32, ptr @DEFAULT_TX_PREAMBLE, align 4
  store i32 %DEFAULT_TX_PREAMBLE, ptr %tx_preamble, align 4
  %loopback = getelementptr inbounds nuw i8, ptr %cfg, i32 56
  %DEFAULT_LOOPBACK = load i32, ptr @DEFAULT_LOOPBACK, align 4
  store i32 %DEFAULT_LOOPBACK, ptr %loopback, align 4
  %rx_time_stamp_en = getelementptr inbounds nuw i8, ptr %cfg, i32 52
  %DEFAULT_RX_TIME_STAMP_EN = load i32, ptr @DEFAULT_RX_TIME_STAMP_EN, align 4
  store i32 %DEFAULT_RX_TIME_STAMP_EN, ptr %rx_time_stamp_en, align 4
  %tx_time_stamp_en = getelementptr inbounds nuw i8, ptr %cfg, i32 48
  %DEFAULT_TX_TIME_STAMP_EN = load i32, ptr @DEFAULT_TX_TIME_STAMP_EN, align 4
  store i32 %DEFAULT_TX_TIME_STAMP_EN, ptr %tx_time_stamp_en, align 4
  %rx_flow = getelementptr inbounds nuw i8, ptr %cfg, i32 44
  %DEFAULT_RX_FLOW = load i32, ptr @DEFAULT_RX_FLOW, align 4
  store i32 %DEFAULT_RX_FLOW, ptr %rx_flow, align 4
  %tx_flow = getelementptr inbounds nuw i8, ptr %cfg, i32 40
  %DEFAULT_TX_FLOW = load i32, ptr @DEFAULT_TX_FLOW, align 4
  store i32 %DEFAULT_TX_FLOW, ptr %tx_flow, align 4
  %rx_group_hash_exd = getelementptr inbounds nuw i8, ptr %cfg, i32 36
  %DEFAULT_RX_GROUP_HASH_EXD = load i32, ptr @DEFAULT_RX_GROUP_HASH_EXD, align 4
  store i32 %DEFAULT_RX_GROUP_HASH_EXD, ptr %rx_group_hash_exd, align 4
  %tx_pause_time_extd = getelementptr inbounds nuw i8, ptr %cfg, i32 32
  %DEFAULT_TX_PAUSE_TIME_EXTD = load i32, ptr @DEFAULT_TX_PAUSE_TIME_EXTD, align 4
  store i32 %DEFAULT_TX_PAUSE_TIME_EXTD, ptr %tx_pause_time_extd, align 4
  %rx_promisc = getelementptr inbounds nuw i8, ptr %cfg, i32 28
  %DEFAULT_RX_PROMISC = load i32, ptr @DEFAULT_RX_PROMISC, align 4
  store i32 %DEFAULT_RX_PROMISC, ptr %rx_promisc, align 4
  %non_back_to_back_ipg1 = getelementptr inbounds nuw i8, ptr %cfg, i32 24
  %DEFAULT_NON_BACK_TO_BACK_IPG1 = load i32, ptr @DEFAULT_NON_BACK_TO_BACK_IPG1, align 4
  store i32 %DEFAULT_NON_BACK_TO_BACK_IPG1, ptr %non_back_to_back_ipg1, align 4
  %non_back_to_back_ipg2 = getelementptr inbounds nuw i8, ptr %cfg, i32 20
  %DEFAULT_NON_BACK_TO_BACK_IPG2 = load i32, ptr @DEFAULT_NON_BACK_TO_BACK_IPG2, align 4
  store i32 %DEFAULT_NON_BACK_TO_BACK_IPG2, ptr %non_back_to_back_ipg2, align 4
  %min_ifg_enforcement = getelementptr inbounds nuw i8, ptr %cfg, i32 16
  %DEFAULT_MIN_IFG_ENFORCEMENT = load i32, ptr @DEFAULT_MIN_IFG_ENFORCEMENT, align 4
  store i32 %DEFAULT_MIN_IFG_ENFORCEMENT, ptr %min_ifg_enforcement, align 4
  %back_to_back_ipg = getelementptr inbounds nuw i8, ptr %cfg, i32 12
  %DEFAULT_BACK_TO_BACK_IPG = load i32, ptr @DEFAULT_BACK_TO_BACK_IPG, align 4
  store i32 %DEFAULT_BACK_TO_BACK_IPG, ptr %back_to_back_ipg, align 4
  %maximum_frame = getelementptr inbounds nuw i8, ptr %cfg, i32 8
  %DEFAULT_MAXIMUM_FRAME = load i32, ptr @DEFAULT_MAXIMUM_FRAME, align 4
  store i32 %DEFAULT_MAXIMUM_FRAME, ptr %maximum_frame, align 4
  %tbi_phy_addr = getelementptr inbounds nuw i8, ptr %cfg, i32 4
  %DEFAULT_TBI_PHY_ADDR = load i32, ptr @DEFAULT_TBI_PHY_ADDR, align 4
  store i32 %DEFAULT_TBI_PHY_ADDR, ptr %tbi_phy_addr, align 4
  %DEFAULT_WAKE_ON_LAN = load i32, ptr @DEFAULT_WAKE_ON_LAN, align 4
  store i32 %DEFAULT_WAKE_ON_LAN, ptr %cfg, align 4
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
