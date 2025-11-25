; ModuleID = 'angha-ll-stm32f1/extr_wbusb.c_wbsoft_get_tsf.ll'
source_filename = "out/extr_wbusb.c_wbsoft_get_tsf.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@conststr = private unnamed_addr constant [22 x i8] c"wbsoft_get_tsf called\0A"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"ieee80211_hw:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @printk(ptr, i32 zeroext) local_unnamed_addr addrspace(1) #1

define noundef i32 @wbsoft_get_tsf(ptr readnone captures(none) %dev) local_unnamed_addr addrspace(1) #1 {
body:
  %0 = tail call addrspace(1) i32 @printk(ptr nonnull @conststr, i32 zeroext 22)
  ret i32 0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
