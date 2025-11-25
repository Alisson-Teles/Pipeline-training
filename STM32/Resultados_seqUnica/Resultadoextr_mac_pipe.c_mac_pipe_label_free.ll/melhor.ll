; ModuleID = 'angha-ll-stm32f1/extr_mac_pipe.c_mac_pipe_label_free.ll'
source_filename = "out/extr_mac_pipe.c_mac_pipe_label_free.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@pipe_label_destroy = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"label:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @MAC_PERFORM(i32, ptr) local_unnamed_addr addrspace(1) #1

declare i32 @mac_labelzone_free(ptr) local_unnamed_addr addrspace(1) #1

define void @mac_pipe_label_free(ptr %label) local_unnamed_addr addrspace(1) #1 {
body:
  %pipe_label_destroy = load i32, ptr @pipe_label_destroy, align 4
  %0 = tail call addrspace(1) i32 @MAC_PERFORM(i32 %pipe_label_destroy, ptr %label)
  %1 = tail call addrspace(1) i32 @mac_labelzone_free(ptr %label)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
