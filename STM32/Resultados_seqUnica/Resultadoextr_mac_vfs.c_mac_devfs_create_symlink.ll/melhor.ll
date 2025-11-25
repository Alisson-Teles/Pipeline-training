; ModuleID = 'angha-ll-stm32f1/extr_mac_vfs.c_mac_devfs_create_symlink.ll'
source_filename = "out/extr_mac_vfs.c_mac_devfs_create_symlink.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@devfs_create_symlink = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"ucred:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"mount:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"devfs_dirent:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @MAC_POLICY_PERFORM_NOSLEEP(i32, ptr, ptr, ptr, i32, ptr, i32) local_unnamed_addr addrspace(1) #1

define void @mac_devfs_create_symlink(ptr %cred, ptr %mp, ptr %dd, ptr %de) local_unnamed_addr addrspace(1) #1 {
body:
  %devfs_create_symlink = load i32, ptr @devfs_create_symlink, align 4
  %de_label8 = load i32, ptr %dd, align 4
  %de_label12 = load i32, ptr %de, align 4
  %0 = tail call addrspace(1) i32 @MAC_POLICY_PERFORM_NOSLEEP(i32 %devfs_create_symlink, ptr %cred, ptr %mp, ptr nonnull %dd, i32 %de_label8, ptr nonnull %de, i32 %de_label12)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
