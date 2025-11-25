; ModuleID = 'angha-ll-stm32f1/extr_usb_halinit.c__InitRxSetting.ll'
source_filename = "out/extr_usb_halinit.c__InitRxSetting.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@REG_MACID = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"adapter:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @usb_write32(ptr, i32, i32) local_unnamed_addr addrspace(1) #1

define void @_InitRxSetting(ptr %Adapter) local_unnamed_addr addrspace(1) #1 {
body:
  %REG_MACID = load i32, ptr @REG_MACID, align 4
  %0 = tail call addrspace(1) i32 @usb_write32(ptr %Adapter, i32 %REG_MACID, i32 -2023406815)
  %1 = tail call addrspace(1) i32 @usb_write32(ptr %Adapter, i32 1792, i32 -2023406815)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
