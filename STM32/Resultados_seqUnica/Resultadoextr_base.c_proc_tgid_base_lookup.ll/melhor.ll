; ModuleID = 'angha-ll-stm32f1/extr_base.c_proc_tgid_base_lookup.ll'
source_filename = "out/extr_base.c_proc_tgid_base_lookup.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

%dentry = type { i32 }

@tgid_base_stuff = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"nameidata:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"inode:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"dentry:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @ARRAY_SIZE(i32) local_unnamed_addr addrspace(1) #1

declare %dentry @proc_pident_lookup(ptr, ptr, i32, i32) local_unnamed_addr addrspace(1) #1

define %dentry @proc_tgid_base_lookup(ptr %dir, ptr %dentry, ptr readnone captures(none) %nd) local_unnamed_addr addrspace(1) #1 {
body:
  %tgid_base_stuff = load i32, ptr @tgid_base_stuff, align 4
  %0 = tail call addrspace(1) i32 @ARRAY_SIZE(i32 %tgid_base_stuff)
  %1 = tail call addrspace(1) %dentry @proc_pident_lookup(ptr %dir, ptr %dentry, i32 %tgid_base_stuff, i32 %0)
  ret %dentry %1
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
