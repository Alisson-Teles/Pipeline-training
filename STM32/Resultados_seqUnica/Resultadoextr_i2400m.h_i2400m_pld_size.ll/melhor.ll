; ModuleID = 'angha-ll-stm32f1/extr_i2400m.h_i2400m_pld_size.ll'
source_filename = "out/extr_i2400m.h_i2400m_pld_size.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@I2400M_PLD_SIZE_MASK = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"i2400m_pld:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare zeroext i32 @le32_to_cpu(i32) local_unnamed_addr addrspace(1) #1

define zeroext i32 @i2400m_pld_size(ptr readonly captures(none) %pld) local_unnamed_addr addrspace(1) #1 {
body:
  %I2400M_PLD_SIZE_MASK = load i32, ptr @I2400M_PLD_SIZE_MASK, align 4
  %val2 = load i32, ptr %pld, align 4
  %0 = tail call zeroext addrspace(1) i32 @le32_to_cpu(i32 %val2)
  %binop = and i32 %0, %I2400M_PLD_SIZE_MASK
  ret i32 %binop
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
