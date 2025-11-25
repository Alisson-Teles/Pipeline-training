; ModuleID = 'angha-ll-stm32f1/extr_mac.c_mt7603_wtbl4_addr.ll'
source_filename = "out/extr_mac.c_mt7603_wtbl4_addr.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@MT7603_WTBL_SIZE = local_unnamed_addr global i32 0
@MT_WTBL4_SIZE = local_unnamed_addr global i32 0

declare i64 @mt7603_wtbl3_addr(i32) local_unnamed_addr addrspace(1) #0

define i64 @mt7603_wtbl4_addr(i32 %idx) local_unnamed_addr addrspace(1) #0 {
body:
  %MT7603_WTBL_SIZE = load i32, ptr @MT7603_WTBL_SIZE, align 4
  %0 = tail call addrspace(1) i64 @mt7603_wtbl3_addr(i32 %MT7603_WTBL_SIZE)
  %MT_WTBL4_SIZE = load i32, ptr @MT_WTBL4_SIZE, align 4
  %binop = mul i32 %MT_WTBL4_SIZE, %idx
  %intcast = sext i32 %binop to i64
  %binop4 = add i64 %0, %intcast
  ret i64 %binop4
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
