; ModuleID = 'angha-ll-stm32f1/extr_if_cas.c_cas_disable_rx.ll'
source_filename = "out/extr_if_cas.c_cas_disable_rx.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@BUS_SPACE_BARRIER_READ = local_unnamed_addr global i32 0
@BUS_SPACE_BARRIER_WRITE = local_unnamed_addr global i32 0
@CAS_MAC_RX_CONF = local_unnamed_addr global i32 0
@CAS_MAC_RX_CONF_EN = local_unnamed_addr global i32 0
@bootverbose = local_unnamed_addr global i64 0
@conststr = private unnamed_addr constant [22 x i8] c"cannot disable RX MAC\0A"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"cas_softc:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @CAS_BARRIER(ptr, i32, i32, i32) local_unnamed_addr addrspace(1) #1

declare i32 @CAS_READ_4(ptr, i32) local_unnamed_addr addrspace(1) #1

declare i32 @CAS_WRITE_4(ptr, i32, i32) local_unnamed_addr addrspace(1) #1

declare i64 @cas_bitwait(ptr, i32, i32, i32) local_unnamed_addr addrspace(1) #1

declare i32 @device_printf(i32, ptr, i32 zeroext) local_unnamed_addr addrspace(1) #1

define range(i32 0, 2) i32 @cas_disable_rx(ptr %sc) local_unnamed_addr addrspace(1) #1 {
body:
  %CAS_MAC_RX_CONF = load i32, ptr @CAS_MAC_RX_CONF, align 4
  %0 = tail call addrspace(1) i32 @CAS_READ_4(ptr %sc, i32 %CAS_MAC_RX_CONF)
  %CAS_MAC_RX_CONF_EN = load i32, ptr @CAS_MAC_RX_CONF_EN, align 4
  %neg = xor i32 %CAS_MAC_RX_CONF_EN, -1
  %binop = and i32 %0, %neg
  %1 = tail call addrspace(1) i32 @CAS_WRITE_4(ptr %sc, i32 %CAS_MAC_RX_CONF, i32 %binop)
  %CAS_MAC_RX_CONF5 = load i32, ptr @CAS_MAC_RX_CONF, align 4
  %BUS_SPACE_BARRIER_READ = load i32, ptr @BUS_SPACE_BARRIER_READ, align 4
  %BUS_SPACE_BARRIER_WRITE = load i32, ptr @BUS_SPACE_BARRIER_WRITE, align 4
  %binop6 = or i32 %BUS_SPACE_BARRIER_WRITE, %BUS_SPACE_BARRIER_READ
  %2 = tail call addrspace(1) i32 @CAS_BARRIER(ptr %sc, i32 %CAS_MAC_RX_CONF5, i32 4, i32 %binop6)
  %CAS_MAC_RX_CONF8 = load i32, ptr @CAS_MAC_RX_CONF, align 4
  %CAS_MAC_RX_CONF_EN9 = load i32, ptr @CAS_MAC_RX_CONF_EN, align 4
  %3 = tail call addrspace(1) i64 @cas_bitwait(ptr %sc, i32 %CAS_MAC_RX_CONF8, i32 %CAS_MAC_RX_CONF_EN9, i32 0)
  %cmpi.not = icmp eq i64 %3, 0
  br i1 %cmpi.not, label %if_cont, label %common.ret

common.ret:                                       ; preds = %if_then11, %if_cont, %body
  %common.ret.op = phi i32 [ 1, %body ], [ 0, %if_cont ], [ 0, %if_then11 ]
  ret i32 %common.ret.op

if_cont:                                          ; preds = %body
  %bootverbose = load i64, ptr @bootverbose, align 8
  %cmpi10.not = icmp eq i64 %bootverbose, 0
  br i1 %cmpi10.not, label %common.ret, label %if_then11

if_then11:                                        ; preds = %if_cont
  %sc_dev13 = load i32, ptr %sc, align 4
  %4 = tail call addrspace(1) i32 @device_printf(i32 %sc_dev13, ptr nonnull @conststr, i32 zeroext 22)
  br label %common.ret
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
