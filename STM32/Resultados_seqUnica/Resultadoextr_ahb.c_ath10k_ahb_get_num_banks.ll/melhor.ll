; ModuleID = 'angha-ll-stm32f1/extr_ahb.c_ath10k_ahb_get_num_banks.ll'
source_filename = "out/extr_ahb.c_ath10k_ahb_get_num_banks.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@ATH10K_HW_QCA4019 = local_unnamed_addr global i64 0
@conststr = private unnamed_addr constant [36 x i8] c"unknown number of banks, assuming 1\0A"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"ath10k:init"(ptr writeonly captures(none) initializes((0, 8)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i64 0, ptr %_this, align 8
  ret void
}

declare i32 @ath10k_warn(ptr, ptr, i32 zeroext) local_unnamed_addr addrspace(1) #1

define noundef i32 @ath10k_ahb_get_num_banks(ptr %ar) local_unnamed_addr addrspace(1) #1 {
body:
  %hw_rev2 = load i64, ptr %ar, align 8
  %ATH10K_HW_QCA4019 = load i64, ptr @ATH10K_HW_QCA4019, align 8
  %cmpi = icmp eq i64 %hw_rev2, %ATH10K_HW_QCA4019
  br i1 %cmpi, label %common.ret, label %if_cont

common.ret:                                       ; preds = %if_cont, %body
  ret i32 1

if_cont:                                          ; preds = %body
  %0 = tail call addrspace(1) i32 @ath10k_warn(ptr nonnull %ar, ptr nonnull @conststr, i32 zeroext 36)
  br label %common.ret
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
