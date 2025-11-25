; ModuleID = 'angha-ll-stm32f1/extr_mite.c_mite_bytes_written_to_memory_lb.ll'
source_filename = "out/extr_mite.c_mite_bytes_written_to_memory_lb.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"mite_channel:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i64 @mite_bytes_in_transit(ptr) local_unnamed_addr addrspace(1) #1

declare i64 @mite_device_bytes_transferred(ptr) local_unnamed_addr addrspace(1) #1

define i64 @mite_bytes_written_to_memory_lb(ptr %mite_chan) local_unnamed_addr addrspace(1) #1 {
body:
  %0 = tail call addrspace(1) i64 @mite_device_bytes_transferred(ptr %mite_chan)
  %1 = tail call addrspace(1) i64 @mite_bytes_in_transit(ptr %mite_chan)
  %binop = sub i64 %0, %1
  ret i64 %binop
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
