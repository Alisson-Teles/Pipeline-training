; ModuleID = 'angha-ll-stm32f1/extr_socfpga_a10_manager.c_fpgamgr_a10_probe.ll'
source_filename = "out/extr_socfpga_a10_manager.c_fpgamgr_a10_probe.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@BUS_PROBE_DEFAULT = local_unnamed_addr global i32 0
@ENXIO = local_unnamed_addr global i32 0
@conststr = private unnamed_addr constant [25 x i8] c"altr,socfpga-a10-fpga-mgr"
@conststr.1 = private unnamed_addr constant [21 x i8] c"Arria 10 FPGA Manager"

declare i32 @device_set_desc(i32, ptr, i32 zeroext) local_unnamed_addr addrspace(1) #0

declare i32 @ofw_bus_is_compatible(i32, ptr, i32 zeroext) local_unnamed_addr addrspace(1) #0

declare i32 @ofw_bus_status_okay(i32) local_unnamed_addr addrspace(1) #0

define i32 @fpgamgr_a10_probe(i32 %dev) local_unnamed_addr addrspace(1) #0 {
body:
  %0 = tail call addrspace(1) i32 @ofw_bus_status_okay(i32 %dev)
  %cmpi = icmp eq i32 %0, 0
  br i1 %cmpi, label %common.ret, label %if_cont

common.ret:                                       ; preds = %if_cont8, %if_cont, %body
  %common.ret.op.in = phi ptr [ @BUS_PROBE_DEFAULT, %if_cont8 ], [ @ENXIO, %body ], [ @ENXIO, %if_cont ]
  %common.ret.op = load i32, ptr %common.ret.op.in, align 4
  ret i32 %common.ret.op

if_cont:                                          ; preds = %body
  %1 = tail call addrspace(1) i32 @ofw_bus_is_compatible(i32 %dev, ptr nonnull @conststr, i32 zeroext 25)
  %cmpi4 = icmp eq i32 %1, 0
  br i1 %cmpi4, label %common.ret, label %if_cont8

if_cont8:                                         ; preds = %if_cont
  %2 = tail call addrspace(1) i32 @device_set_desc(i32 %dev, ptr nonnull @conststr.1, i32 zeroext 21)
  br label %common.ret
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
