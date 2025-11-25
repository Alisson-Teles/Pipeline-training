; ModuleID = 'angha-ll-stm32f1/extr_mac_vfs.c_mac_vnode_check_setowner.ll'
source_filename = "out/extr_mac_vfs.c_mac_vnode_check_setowner.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@vnode_check_setowner = local_unnamed_addr global i32 0
@conststr = private unnamed_addr constant [24 x i8] c"mac_vnode_check_setowner"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"vnode:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"ucred:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @ASSERT_VOP_LOCKED(ptr, ptr, i32 zeroext) local_unnamed_addr addrspace(1) #1

declare i32 @MAC_CHECK_PROBE4(i32, i32, ptr, ptr, i32, i32) local_unnamed_addr addrspace(1) #1

declare i32 @MAC_POLICY_CHECK(i32, ptr, ptr, i32, i32, i32) local_unnamed_addr addrspace(1) #1

define noundef i32 @mac_vnode_check_setowner(ptr %cred, ptr %vp, i32 %uid, i32 %gid) local_unnamed_addr addrspace(1) #1 {
body:
  %0 = tail call addrspace(1) i32 @ASSERT_VOP_LOCKED(ptr %vp, ptr nonnull @conststr, i32 zeroext 24)
  %vnode_check_setowner = load i32, ptr @vnode_check_setowner, align 4
  %v_label8 = load i32, ptr %vp, align 4
  %1 = tail call addrspace(1) i32 @MAC_POLICY_CHECK(i32 %vnode_check_setowner, ptr %cred, ptr nonnull %vp, i32 %v_label8, i32 %uid, i32 %gid)
  %vnode_check_setowner11 = load i32, ptr @vnode_check_setowner, align 4
  %2 = tail call addrspace(1) i32 @MAC_CHECK_PROBE4(i32 %vnode_check_setowner11, i32 0, ptr %cred, ptr nonnull %vp, i32 %uid, i32 %gid)
  ret i32 0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
