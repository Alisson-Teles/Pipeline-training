; ModuleID = 'angha-ll-stm32f1/extr_flexcop-hw-filter.c_flexcop_null_filter_ctrl.ll'
source_filename = "out/extr_flexcop-hw-filter.c_flexcop_null_filter_ctrl.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@Null_filter_sig = local_unnamed_addr global i32 0
@ctrl_208 = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"flexcop_device:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @flexcop_set_ibi_value(i32, i32, i32) local_unnamed_addr addrspace(1) #1

define void @flexcop_null_filter_ctrl(ptr readnone captures(none) %fc, i32 %onoff) local_unnamed_addr addrspace(1) #1 {
body:
  %ctrl_208 = load i32, ptr @ctrl_208, align 4
  %Null_filter_sig = load i32, ptr @Null_filter_sig, align 4
  %0 = tail call addrspace(1) i32 @flexcop_set_ibi_value(i32 %ctrl_208, i32 %Null_filter_sig, i32 %onoff)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
