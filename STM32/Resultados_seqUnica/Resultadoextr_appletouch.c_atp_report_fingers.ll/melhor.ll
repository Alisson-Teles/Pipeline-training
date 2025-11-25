; ModuleID = 'angha-ll-stm32f1/extr_appletouch.c_atp_report_fingers.ll'
source_filename = "out/extr_appletouch.c_atp_report_fingers.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@BTN_TOOL_DOUBLETAP = local_unnamed_addr global i32 0
@BTN_TOOL_FINGER = local_unnamed_addr global i32 0
@BTN_TOOL_TRIPLETAP = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"input_dev:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @input_report_key(ptr, i32, i32) local_unnamed_addr addrspace(1) #1

define void @atp_report_fingers(ptr %input, i32 %fingers) local_unnamed_addr addrspace(1) #1 {
body:
  %BTN_TOOL_FINGER = load i32, ptr @BTN_TOOL_FINGER, align 4
  %cmpi = icmp eq i32 %fingers, 1
  %zext = zext i1 %cmpi to i32
  %0 = tail call addrspace(1) i32 @input_report_key(ptr %input, i32 %BTN_TOOL_FINGER, i32 %zext)
  %BTN_TOOL_DOUBLETAP = load i32, ptr @BTN_TOOL_DOUBLETAP, align 4
  %cmpi6 = icmp eq i32 %fingers, 2
  %zext7 = zext i1 %cmpi6 to i32
  %1 = tail call addrspace(1) i32 @input_report_key(ptr %input, i32 %BTN_TOOL_DOUBLETAP, i32 %zext7)
  %BTN_TOOL_TRIPLETAP = load i32, ptr @BTN_TOOL_TRIPLETAP, align 4
  %cmpi10 = icmp sgt i32 %fingers, 2
  %zext11 = zext i1 %cmpi10 to i32
  %2 = tail call addrspace(1) i32 @input_report_key(ptr %input, i32 %BTN_TOOL_TRIPLETAP, i32 %zext11)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
