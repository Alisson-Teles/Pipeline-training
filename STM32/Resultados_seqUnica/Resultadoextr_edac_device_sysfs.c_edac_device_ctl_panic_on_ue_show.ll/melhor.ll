; ModuleID = 'angha-ll-stm32f1/extr_edac_device_sysfs.c_edac_device_ctl_panic_on_ue_show.ll'
source_filename = "out/extr_edac_device_sysfs.c_edac_device_ctl_panic_on_ue_show.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@conststr = private unnamed_addr constant [3 x i8] c"%u\0A"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"edac_device_ctl_info:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @sprintf(ptr, ptr, i32, i32 zeroext, i32 zeroext) local_unnamed_addr addrspace(1) #1

define i32 @edac_device_ctl_panic_on_ue_show(ptr readonly captures(none) %ctl_info, ptr %data, i32 zeroext %data.size) local_unnamed_addr addrspace(1) #1 {
body:
  %panic_on_ue6 = load i32, ptr %ctl_info, align 4
  %0 = tail call addrspace(1) i32 @sprintf(ptr %data, ptr nonnull @conststr, i32 %panic_on_ue6, i32 zeroext %data.size, i32 zeroext 3)
  ret i32 %0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
