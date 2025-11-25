; ModuleID = 'angha-ll-stm32f1/extr_if_wpi.c_wpi_nic_lock.ll'
source_filename = "out/extr_if_wpi.c_wpi_nic_lock.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@ETIMEDOUT = local_unnamed_addr global i32 0
@WPI_GP_CNTRL = local_unnamed_addr global i32 0
@WPI_GP_CNTRL_MAC_ACCESS_ENA = local_unnamed_addr global i32 0
@WPI_GP_CNTRL_MAC_ACCESS_REQ = local_unnamed_addr global i32 0
@WPI_GP_CNTRL_SLEEP = local_unnamed_addr global i32 0
@conststr = private unnamed_addr constant [22 x i8] c"could not lock memory\0A"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"wpi_softc:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @DELAY(i32) local_unnamed_addr addrspace(1) #1

declare i32 @WPI_READ(ptr, i32) local_unnamed_addr addrspace(1) #1

declare i32 @WPI_SETBITS(ptr, i32, i32) local_unnamed_addr addrspace(1) #1

declare i32 @device_printf(i32, ptr, i32 zeroext) local_unnamed_addr addrspace(1) #1

define i32 @wpi_nic_lock(ptr %sc) local_unnamed_addr addrspace(1) #1 {
body:
  %WPI_GP_CNTRL = load i32, ptr @WPI_GP_CNTRL, align 4
  %WPI_GP_CNTRL_MAC_ACCESS_REQ = load i32, ptr @WPI_GP_CNTRL_MAC_ACCESS_REQ, align 4
  %0 = tail call addrspace(1) i32 @WPI_SETBITS(ptr %sc, i32 %WPI_GP_CNTRL, i32 %WPI_GP_CNTRL_MAC_ACCESS_REQ)
  br label %while_body

while_body:                                       ; preds = %if_cont, %body
  %ntries.011 = phi i32 [ 0, %body ], [ %binop8, %if_cont ]
  %WPI_GP_CNTRL4 = load i32, ptr @WPI_GP_CNTRL, align 4
  %1 = tail call addrspace(1) i32 @WPI_READ(ptr %sc, i32 %WPI_GP_CNTRL4)
  %WPI_GP_CNTRL_MAC_ACCESS_ENA = load i32, ptr @WPI_GP_CNTRL_MAC_ACCESS_ENA, align 4
  %WPI_GP_CNTRL_SLEEP = load i32, ptr @WPI_GP_CNTRL_SLEEP, align 4
  %binop = or i32 %WPI_GP_CNTRL_SLEEP, %WPI_GP_CNTRL_MAC_ACCESS_ENA
  %binop5 = and i32 %binop, %1
  %cmpi7 = icmp eq i32 %binop5, %WPI_GP_CNTRL_MAC_ACCESS_ENA
  br i1 %cmpi7, label %common.ret, label %if_cont

common.ret:                                       ; preds = %while_end, %while_body
  %common.ret.op = phi i32 [ %ETIMEDOUT, %while_end ], [ 0, %while_body ]
  ret i32 %common.ret.op

while_end:                                        ; preds = %if_cont
  %sc_dev10 = load i32, ptr %sc, align 4
  %2 = tail call addrspace(1) i32 @device_printf(i32 %sc_dev10, ptr nonnull @conststr, i32 zeroext 22)
  %ETIMEDOUT = load i32, ptr @ETIMEDOUT, align 4
  br label %common.ret

if_cont:                                          ; preds = %while_body
  %3 = tail call addrspace(1) i32 @DELAY(i32 10)
  %binop8 = add nuw nsw i32 %ntries.011, 1
  %exitcond.not = icmp eq i32 %binop8, 1000
  br i1 %exitcond.not, label %while_end, label %while_body
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
