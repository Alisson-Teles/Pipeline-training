; ModuleID = 'angha-ll-stm32f1/extr_ntb_transport.c_ntb_list_add.ll'
source_filename = "out/extr_ntb_transport.c_ntb_list_add.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"ntb_queue_list:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"ntb_queue_entry:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"mtx:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @STAILQ_INSERT_TAIL(ptr, ptr, ptr) local_unnamed_addr addrspace(1) #1

declare i32 @mtx_lock_spin(ptr) local_unnamed_addr addrspace(1) #1

declare i32 @mtx_unlock_spin(ptr) local_unnamed_addr addrspace(1) #1

define void @ntb_list_add(ptr %lock, ptr %entry, ptr %list) local_unnamed_addr addrspace(1) #1 {
body:
  %0 = tail call addrspace(1) i32 @mtx_lock_spin(ptr %lock)
  %1 = tail call addrspace(1) i32 @STAILQ_INSERT_TAIL(ptr %list, ptr %entry, ptr %entry)
  %2 = tail call addrspace(1) i32 @mtx_unlock_spin(ptr %lock)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
