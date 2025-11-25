; ModuleID = 'angha-ll-stm32f1/extr_rpmsg_core.c_rpmsg_find_device.ll'
source_filename = "out/extr_rpmsg_core.c_rpmsg_find_device.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

%device = type { i32 }

@rpmsg_device_match = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"rpmsg_channel_info:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"device:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare %device @device_find_child(ptr, ptr, i32) local_unnamed_addr addrspace(1) #1

define %device @rpmsg_find_device(ptr %parent, ptr %chinfo) local_unnamed_addr addrspace(1) #1 {
body:
  %rpmsg_device_match = load i32, ptr @rpmsg_device_match, align 4
  %0 = tail call addrspace(1) %device @device_find_child(ptr %parent, ptr %chinfo, i32 %rpmsg_device_match)
  ret %device %0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
