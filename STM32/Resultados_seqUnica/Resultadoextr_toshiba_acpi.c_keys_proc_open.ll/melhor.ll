; ModuleID = 'angha-ll-stm32f1/extr_toshiba_acpi.c_keys_proc_open.ll'
source_filename = "out/extr_toshiba_acpi.c_keys_proc_open.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@keys_proc_show = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"inode:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"file:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @PDE_DATA(ptr) local_unnamed_addr addrspace(1) #1

declare i32 @single_open(ptr, i32, i32) local_unnamed_addr addrspace(1) #1

define i32 @keys_proc_open(ptr %inode, ptr %file) local_unnamed_addr addrspace(1) #1 {
body:
  %keys_proc_show = load i32, ptr @keys_proc_show, align 4
  %0 = tail call addrspace(1) i32 @PDE_DATA(ptr %inode)
  %1 = tail call addrspace(1) i32 @single_open(ptr %file, i32 %keys_proc_show, i32 %0)
  ret i32 %1
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
