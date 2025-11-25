; ModuleID = 'angha-ll-stm32f1/extr_aac_pci.c_aacch_probe.ll'
source_filename = "out/extr_aac_pci.c_aacch_probe.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@ENXIO = local_unnamed_addr global i32 0
@conststr = private unnamed_addr constant [16 x i8] c"AAC RAID Channel"

declare i32 @device_set_desc(i32, ptr, i32 zeroext) local_unnamed_addr addrspace(1) #0

declare i32 @pci_get_device(i32) local_unnamed_addr addrspace(1) #0

declare i32 @pci_get_vendor(i32) local_unnamed_addr addrspace(1) #0

define i32 @aacch_probe(i32 %dev) local_unnamed_addr addrspace(1) #0 {
body:
  %0 = tail call addrspace(1) i32 @pci_get_vendor(i32 %dev)
  %cmpi.not = icmp eq i32 %0, 36869
  br i1 %cmpi.not, label %fullev, label %if_then

fullev:                                           ; preds = %body
  %1 = tail call addrspace(1) i32 @pci_get_device(i32 %dev)
  %cmpi5.not = icmp eq i32 %1, 197
  br i1 %cmpi5.not, label %if_cont, label %if_then

common.ret:                                       ; preds = %if_cont, %if_then
  %common.ret.op = phi i32 [ %ENXIO, %if_then ], [ -10, %if_cont ]
  ret i32 %common.ret.op

if_then:                                          ; preds = %fullev, %body
  %ENXIO = load i32, ptr @ENXIO, align 4
  br label %common.ret

if_cont:                                          ; preds = %fullev
  %2 = tail call addrspace(1) i32 @device_set_desc(i32 %dev, ptr nonnull @conststr, i32 zeroext 16)
  br label %common.ret
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
