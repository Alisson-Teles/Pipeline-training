; ModuleID = 'angha-ll-stm32f1/extr_nic.c_ef4_nic_event_present.ll'
source_filename = "out/extr_nic.c_ef4_nic_event_present.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"ef4_channel:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @ef4_event(ptr, i32) local_unnamed_addr addrspace(1) #1

declare i32 @ef4_event_present(i32) local_unnamed_addr addrspace(1) #1

define i32 @ef4_nic_event_present(ptr %channel) local_unnamed_addr addrspace(1) #1 {
body:
  %eventq_read_ptr3 = load i32, ptr %channel, align 4
  %0 = tail call addrspace(1) i32 @ef4_event(ptr nonnull %channel, i32 %eventq_read_ptr3)
  %1 = tail call addrspace(1) i32 @ef4_event_present(i32 %0)
  ret i32 %1
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
