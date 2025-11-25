; ModuleID = 'angha-ll-stm32f1/extr_jz4725b_bch.c_jz4725b_bch_config_clear.ll'
source_filename = "out/extr_jz4725b_bch.c_jz4725b_bch_config_clear.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@BCH_BHCCR = local_unnamed_addr global i64 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"ingenic_ecc:init"(ptr writeonly captures(none) initializes((0, 8)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i64 0, ptr %_this, align 8
  ret void
}

declare i32 @writel(i32, i64) local_unnamed_addr addrspace(1) #1

define void @jz4725b_bch_config_clear(ptr readonly captures(none) %bch, i32 %cfg) local_unnamed_addr addrspace(1) #1 {
body:
  %base4 = load i64, ptr %bch, align 8
  %BCH_BHCCR = load i64, ptr @BCH_BHCCR, align 8
  %binop = add i64 %BCH_BHCCR, %base4
  %0 = tail call addrspace(1) i32 @writel(i32 %cfg, i64 %binop)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
