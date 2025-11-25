; ModuleID = 'angha-ll-stm32f1/extr_ks8842.c_ks8842_clear_bits.ll'
source_filename = "out/extr_ks8842.c_ks8842_clear_bits.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"ks8842_adapter:init"(ptr writeonly captures(none) initializes((0, 8)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i64 0, ptr %_this, align 8
  ret void
}

declare i32 @ioread16(i64) local_unnamed_addr addrspace(1) #1

declare i32 @iowrite16(i32, i64) local_unnamed_addr addrspace(1) #1

declare i32 @ks8842_select_bank(ptr, i32) local_unnamed_addr addrspace(1) #1

define void @ks8842_clear_bits(ptr %adapter, i32 %bank, i32 %bits, i32 %offset) local_unnamed_addr addrspace(1) #1 {
body:
  %0 = tail call addrspace(1) i32 @ks8842_select_bank(ptr %adapter, i32 %bank)
  %hw_addr7 = load i64, ptr %adapter, align 8
  %intcast = sext i32 %offset to i64
  %binop = add i64 %hw_addr7, %intcast
  %1 = tail call addrspace(1) i32 @ioread16(i64 %binop)
  %neg = xor i32 %bits, -1
  %binop10 = and i32 %1, %neg
  %hw_addr14 = load i64, ptr %adapter, align 8
  %binop17 = add i64 %hw_addr14, %intcast
  %2 = tail call addrspace(1) i32 @iowrite16(i32 %binop10, i64 %binop17)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
