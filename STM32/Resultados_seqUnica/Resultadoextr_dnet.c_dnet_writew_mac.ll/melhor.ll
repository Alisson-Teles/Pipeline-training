; ModuleID = 'angha-ll-stm32f1/extr_dnet.c_dnet_writew_mac.ll'
source_filename = "out/extr_dnet.c_dnet_writew_mac.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@DNET_INTERNAL_WRITE = local_unnamed_addr global i32 0
@MACREG_ADDR = local_unnamed_addr global i32 0
@MACREG_DATA = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"dnet:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @dnet_writel(ptr, i32, i32) local_unnamed_addr addrspace(1) #1

declare i32 @ndelay(i32) local_unnamed_addr addrspace(1) #1

define void @dnet_writew_mac(ptr %bp, i32 %reg, i32 %val) local_unnamed_addr addrspace(1) #1 {
body:
  %MACREG_DATA = load i32, ptr @MACREG_DATA, align 4
  %0 = tail call addrspace(1) i32 @dnet_writel(ptr %bp, i32 %val, i32 %MACREG_DATA)
  %DNET_INTERNAL_WRITE = load i32, ptr @DNET_INTERNAL_WRITE, align 4
  %binop = or i32 %DNET_INTERNAL_WRITE, %reg
  %MACREG_ADDR = load i32, ptr @MACREG_ADDR, align 4
  %1 = tail call addrspace(1) i32 @dnet_writel(ptr %bp, i32 %binop, i32 %MACREG_ADDR)
  %2 = tail call addrspace(1) i32 @ndelay(i32 500)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
