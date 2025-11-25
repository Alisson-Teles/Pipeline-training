; ModuleID = 'angha-ll-stm32f1/extr_scan.c_wpa_supplicant_notify_scanning.ll'
source_filename = "out/extr_scan.c_wpa_supplicant_notify_scanning.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"wpa_supplicant:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @wpas_notify_scanning(ptr) local_unnamed_addr addrspace(1) #1

define void @wpa_supplicant_notify_scanning(ptr %wpa_s, i32 %scanning) local_unnamed_addr addrspace(1) #1 {
body:
  %scanning4 = load i32, ptr %wpa_s, align 4
  %cmpi.not = icmp eq i32 %scanning4, %scanning
  br i1 %cmpi.not, label %if_cont, label %if_then

if_then:                                          ; preds = %body
  store i32 %scanning, ptr %wpa_s, align 4
  %0 = tail call addrspace(1) i32 @wpas_notify_scanning(ptr nonnull %wpa_s)
  br label %if_cont

if_cont:                                          ; preds = %if_then, %body
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
