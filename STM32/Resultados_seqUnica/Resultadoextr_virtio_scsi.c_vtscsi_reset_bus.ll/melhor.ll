; ModuleID = 'angha-ll-stm32f1/extr_virtio_scsi.c_vtscsi_reset_bus.ll'
source_filename = "out/extr_virtio_scsi.c_vtscsi_reset_bus.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@AC_BUS_RESET = local_unnamed_addr global i32 0
@CAM_LUN_WILDCARD = local_unnamed_addr global i32 0
@CAM_TARGET_WILDCARD = local_unnamed_addr global i32 0
@VTSCSI_FLAG_RESET = local_unnamed_addr global i32 0
@VTSCSI_REQUEST = local_unnamed_addr global i32 0
@VTSCSI_REQUEST_VQ = local_unnamed_addr global i32 0
@vtscsi_bus_reset_disable = local_unnamed_addr global i64 0
@conststr = private unnamed_addr constant [19 x i8] c"bus reset disabled\0A"
@conststr.1 = private unnamed_addr constant [44 x i8] c"reinitialization failed, stopping device...\0A"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"vtscsi_softc:init"(ptr writeonly captures(none) initializes((0, 12)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  %gepvtscsi_dev = getelementptr inbounds nuw i8, ptr %_this, i32 4
  store i32 0, ptr %gepvtscsi_dev, align 4
  store i32 0, ptr %_this, align 4
  %gepvtscsi_sim = getelementptr inbounds nuw i8, ptr %_this, i32 8
  store i32 0, ptr %gepvtscsi_sim, align 4
  ret void
}

declare i32 @VTSCSI_LOCK_OWNED(ptr) local_unnamed_addr addrspace(1) #1

declare i32 @device_printf(i32, ptr, i32 zeroext) local_unnamed_addr addrspace(1) #1

declare i32 @vtscsi_announce(ptr, i32, i32, i32) local_unnamed_addr addrspace(1) #1

declare i32 @vtscsi_complete_vqs_locked(ptr) local_unnamed_addr addrspace(1) #1

declare i32 @vtscsi_drain_vqs(ptr) local_unnamed_addr addrspace(1) #1

declare i32 @vtscsi_reinit(ptr) local_unnamed_addr addrspace(1) #1

declare i32 @vtscsi_stop(ptr) local_unnamed_addr addrspace(1) #1

declare i64 @vtscsi_thaw_simq(ptr, i32) local_unnamed_addr addrspace(1) #1

declare i32 @xpt_release_simq(i32, i32) local_unnamed_addr addrspace(1) #1

define i32 @vtscsi_reset_bus(ptr %sc) local_unnamed_addr addrspace(1) #1 {
body:
  %0 = tail call addrspace(1) i32 @VTSCSI_LOCK_OWNED(ptr %sc)
  %vtscsi_bus_reset_disable = load i64, ptr @vtscsi_bus_reset_disable, align 8
  %cmpi.not = icmp eq i64 %vtscsi_bus_reset_disable, 0
  br i1 %cmpi.not, label %if_cont, label %if_then

common.ret:                                       ; preds = %if_cont26, %if_then
  %common.ret.op = phi i32 [ 0, %if_then ], [ %7, %if_cont26 ]
  ret i32 %common.ret.op

if_then:                                          ; preds = %body
  %vtscsi_dev = getelementptr inbounds nuw i8, ptr %sc, i32 4
  %vtscsi_dev3 = load i32, ptr %vtscsi_dev, align 4
  %1 = tail call addrspace(1) i32 @device_printf(i32 %vtscsi_dev3, ptr nonnull @conststr, i32 zeroext 19)
  br label %common.ret

if_cont:                                          ; preds = %body
  %loadleftv = load i32, ptr %sc, align 4
  %VTSCSI_FLAG_RESET = load i32, ptr @VTSCSI_FLAG_RESET, align 4
  %binop = or i32 %VTSCSI_FLAG_RESET, %loadleftv
  store i32 %binop, ptr %sc, align 4
  %2 = tail call addrspace(1) i32 @vtscsi_stop(ptr nonnull %sc)
  %3 = tail call addrspace(1) i32 @vtscsi_complete_vqs_locked(ptr nonnull %sc)
  %4 = tail call addrspace(1) i32 @vtscsi_drain_vqs(ptr nonnull %sc)
  %VTSCSI_REQUEST = load i32, ptr @VTSCSI_REQUEST, align 4
  %VTSCSI_REQUEST_VQ = load i32, ptr @VTSCSI_REQUEST_VQ, align 4
  %binop9 = or i32 %VTSCSI_REQUEST_VQ, %VTSCSI_REQUEST
  %5 = tail call addrspace(1) i64 @vtscsi_thaw_simq(ptr nonnull %sc, i32 %binop9)
  %cmpi10.not = icmp eq i64 %5, 0
  br i1 %cmpi10.not, label %if_cont15, label %if_then11

if_then11:                                        ; preds = %if_cont
  %vtscsi_sim = getelementptr inbounds nuw i8, ptr %sc, i32 8
  %vtscsi_sim13 = load i32, ptr %vtscsi_sim, align 4
  %6 = tail call addrspace(1) i32 @xpt_release_simq(i32 %vtscsi_sim13, i32 0)
  br label %if_cont15

if_cont15:                                        ; preds = %if_then11, %if_cont
  %7 = tail call addrspace(1) i32 @vtscsi_reinit(ptr nonnull %sc)
  %cmpi18.not = icmp eq i32 %7, 0
  br i1 %cmpi18.not, label %if_else24, label %if_then19

if_then19:                                        ; preds = %if_cont15
  %vtscsi_dev21 = getelementptr inbounds nuw i8, ptr %sc, i32 4
  %vtscsi_dev22 = load i32, ptr %vtscsi_dev21, align 4
  %8 = tail call addrspace(1) i32 @device_printf(i32 %vtscsi_dev22, ptr nonnull @conststr.1, i32 zeroext 44)
  %9 = tail call addrspace(1) i32 @vtscsi_stop(ptr nonnull %sc)
  br label %if_cont26

if_else24:                                        ; preds = %if_cont15
  %AC_BUS_RESET = load i32, ptr @AC_BUS_RESET, align 4
  %CAM_TARGET_WILDCARD = load i32, ptr @CAM_TARGET_WILDCARD, align 4
  %CAM_LUN_WILDCARD = load i32, ptr @CAM_LUN_WILDCARD, align 4
  %10 = tail call addrspace(1) i32 @vtscsi_announce(ptr nonnull %sc, i32 %AC_BUS_RESET, i32 %CAM_TARGET_WILDCARD, i32 %CAM_LUN_WILDCARD)
  br label %if_cont26

if_cont26:                                        ; preds = %if_else24, %if_then19
  %loadleftv29 = load i32, ptr %sc, align 4
  %VTSCSI_FLAG_RESET30 = load i32, ptr @VTSCSI_FLAG_RESET, align 4
  %neg = xor i32 %VTSCSI_FLAG_RESET30, -1
  %binop31 = and i32 %loadleftv29, %neg
  store i32 %binop31, ptr %sc, align 4
  br label %common.ret
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
