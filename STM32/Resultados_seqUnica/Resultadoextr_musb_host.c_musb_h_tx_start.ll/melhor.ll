; ModuleID = 'angha-ll-stm32f1/extr_musb_host.c_musb_h_tx_start.ll'
source_filename = "out/extr_musb_host.c_musb_h_tx_start.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@MUSB_CSR0 = local_unnamed_addr global i32 0
@MUSB_CSR0_H_SETUPPKT = local_unnamed_addr global i32 0
@MUSB_CSR0_TXPKTRDY = local_unnamed_addr global i32 0
@MUSB_TXCSR = local_unnamed_addr global i32 0
@MUSB_TXCSR_H_WZC_BITS = local_unnamed_addr global i32 0
@MUSB_TXCSR_TXPKTRDY = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"musb_hw_ep:init"(ptr writeonly captures(none) initializes((0, 4), (8, 16)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  %gepepnum = getelementptr inbounds nuw i8, ptr %_this, i32 8
  store i64 0, ptr %gepepnum, align 8
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @musb_readw(i32, i32) local_unnamed_addr addrspace(1) #1

declare i32 @musb_writew(i32, i32, i32) local_unnamed_addr addrspace(1) #1

define void @musb_h_tx_start(ptr readonly captures(none) %ep) local_unnamed_addr addrspace(1) #1 {
body:
  %epnum = getelementptr inbounds nuw i8, ptr %ep, i32 8
  %epnum2 = load i64, ptr %epnum, align 8
  %cmpi.not = icmp eq i64 %epnum2, 0
  br i1 %cmpi.not, label %if_else, label %if_then

if_then:                                          ; preds = %body
  %regs4 = load i32, ptr %ep, align 4
  %MUSB_TXCSR = load i32, ptr @MUSB_TXCSR, align 4
  %0 = tail call addrspace(1) i32 @musb_readw(i32 %regs4, i32 %MUSB_TXCSR)
  %MUSB_TXCSR_TXPKTRDY = load i32, ptr @MUSB_TXCSR_TXPKTRDY, align 4
  %MUSB_TXCSR_H_WZC_BITS = load i32, ptr @MUSB_TXCSR_H_WZC_BITS, align 4
  %binop = or i32 %MUSB_TXCSR_TXPKTRDY, %0
  %binop5 = or i32 %binop, %MUSB_TXCSR_H_WZC_BITS
  br label %if_cont

if_else:                                          ; preds = %body
  %MUSB_CSR0_H_SETUPPKT = load i32, ptr @MUSB_CSR0_H_SETUPPKT, align 4
  %MUSB_CSR0_TXPKTRDY = load i32, ptr @MUSB_CSR0_TXPKTRDY, align 4
  %binop11 = or i32 %MUSB_CSR0_TXPKTRDY, %MUSB_CSR0_H_SETUPPKT
  br label %if_cont

if_cont:                                          ; preds = %if_else, %if_then
  %MUSB_CSR0.sink16 = phi ptr [ @MUSB_CSR0, %if_else ], [ @MUSB_TXCSR, %if_then ]
  %binop11.sink = phi i32 [ %binop11, %if_else ], [ %binop5, %if_then ]
  %regs14 = load i32, ptr %ep, align 4
  %MUSB_CSR0 = load i32, ptr %MUSB_CSR0.sink16, align 4
  %1 = tail call addrspace(1) i32 @musb_writew(i32 %regs14, i32 %MUSB_CSR0, i32 %binop11.sink)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
