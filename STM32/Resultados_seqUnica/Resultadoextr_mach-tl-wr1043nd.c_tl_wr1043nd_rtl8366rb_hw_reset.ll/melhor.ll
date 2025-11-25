; ModuleID = 'angha-ll-stm32f1/extr_mach-tl-wr1043nd.c_tl_wr1043nd_rtl8366rb_hw_reset.ll'
source_filename = "out/extr_mach-tl-wr1043nd.c_tl_wr1043nd_rtl8366rb_hw_reset.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@AR71XX_RESET_GE0_PHY = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"rtl8366_smi:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @ath79_device_reset_clear(i32) local_unnamed_addr addrspace(1) #1

declare i32 @ath79_device_reset_set(i32) local_unnamed_addr addrspace(1) #1

define void @tl_wr1043nd_rtl8366rb_hw_reset(ptr readnone captures(none) %smi, i32 %active) local_unnamed_addr addrspace(1) #1 {
body:
  %cmpi.not = icmp eq i32 %active, 0
  %AR71XX_RESET_GE0_PHY4 = load i32, ptr @AR71XX_RESET_GE0_PHY, align 4
  br i1 %cmpi.not, label %if_else, label %if_then

if_then:                                          ; preds = %body
  %0 = tail call addrspace(1) i32 @ath79_device_reset_set(i32 %AR71XX_RESET_GE0_PHY4)
  br label %if_cont

if_else:                                          ; preds = %body
  %1 = tail call addrspace(1) i32 @ath79_device_reset_clear(i32 %AR71XX_RESET_GE0_PHY4)
  br label %if_cont

if_cont:                                          ; preds = %if_else, %if_then
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
