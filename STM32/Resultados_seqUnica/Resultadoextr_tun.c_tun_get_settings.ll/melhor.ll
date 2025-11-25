; ModuleID = 'angha-ll-stm32f1/extr_tun.c_tun_get_settings.ll'
source_filename = "out/extr_tun.c_tun_get_settings.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@AUTONEG_DISABLE = local_unnamed_addr global i32 0
@DUPLEX_FULL = local_unnamed_addr global i32 0
@PORT_TP = local_unnamed_addr global i32 0
@SPEED_10 = local_unnamed_addr global i32 0
@XCVR_INTERNAL = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"net_device:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"ethtool_cmd:init"(ptr writeonly captures(none) initializes((0, 44), (48, 64)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  %gepadvertising = getelementptr inbounds nuw i8, ptr %_this, i32 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %_this, i8 0, i64 44, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %gepadvertising, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none)
define noundef i32 @tun_get_settings(ptr readnone captures(none) %dev, ptr writeonly captures(none) initializes((0, 44), (48, 64)) %cmd) local_unnamed_addr addrspace(1) #1 {
body:
  %advertising = getelementptr inbounds nuw i8, ptr %cmd, i32 48
  %speed = getelementptr inbounds nuw i8, ptr %cmd, i32 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %advertising, i8 0, i64 16, i1 false)
  %SPEED_10 = load i32, ptr @SPEED_10, align 4
  store i32 %SPEED_10, ptr %speed, align 4
  %duplex = getelementptr inbounds nuw i8, ptr %cmd, i32 36
  %DUPLEX_FULL = load i32, ptr @DUPLEX_FULL, align 4
  store i32 %DUPLEX_FULL, ptr %duplex, align 4
  %port = getelementptr inbounds nuw i8, ptr %cmd, i32 32
  %PORT_TP = load i32, ptr @PORT_TP, align 4
  store i32 %PORT_TP, ptr %port, align 4
  %phy_address = getelementptr inbounds nuw i8, ptr %cmd, i32 24
  store i64 0, ptr %phy_address, align 8
  %transceiver = getelementptr inbounds nuw i8, ptr %cmd, i32 20
  %XCVR_INTERNAL = load i32, ptr @XCVR_INTERNAL, align 4
  store i32 %XCVR_INTERNAL, ptr %transceiver, align 4
  %autoneg = getelementptr inbounds nuw i8, ptr %cmd, i32 16
  %AUTONEG_DISABLE = load i32, ptr @AUTONEG_DISABLE, align 4
  store i32 %AUTONEG_DISABLE, ptr %autoneg, align 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %cmd, i8 0, i64 16, i1 false)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
