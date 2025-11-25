; ModuleID = 'angha-ll-stm32f1/extr_asix_devices.c_ax88772_unbind.ll'
source_filename = "out/extr_asix_devices.c_ax88772_unbind.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"usbnet:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"usb_interface:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @asix_rx_fixup_common_free(i32) local_unnamed_addr addrspace(1) #1

declare i32 @kfree(i32) local_unnamed_addr addrspace(1) #1

define void @ax88772_unbind(ptr readonly captures(none) %dev, ptr readnone captures(none) %intf) local_unnamed_addr addrspace(1) #1 {
body:
  %driver_priv3 = load i32, ptr %dev, align 4
  %0 = tail call addrspace(1) i32 @asix_rx_fixup_common_free(i32 %driver_priv3)
  %driver_priv6 = load i32, ptr %dev, align 4
  %1 = tail call addrspace(1) i32 @kfree(i32 %driver_priv6)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
