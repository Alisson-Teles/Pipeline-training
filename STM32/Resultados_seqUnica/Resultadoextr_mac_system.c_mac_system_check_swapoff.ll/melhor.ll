; ModuleID = 'angha-ll-stm32f1/extr_mac_system.c_mac_system_check_swapoff.ll'
source_filename = "out/extr_mac_system.c_mac_system_check_swapoff.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@system_check_swapoff = local_unnamed_addr global i32 0
@conststr = private unnamed_addr constant [24 x i8] c"mac_system_check_swapoff"

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

declare i32 @MAC_CHECK_PROBE2(i32, i32, ptr, ptr) local_unnamed_addr addrspace(1) #1

declare i32 @MAC_POLICY_CHECK(i32, ptr, ptr, i32) local_unnamed_addr addrspace(1) #1

define noundef i32 @mac_system_check_swapoff(ptr %cred, ptr %vp) local_unnamed_addr addrspace(1) #1 {
body:
  %0 = tail call addrspace(1) i32 @ASSERT_VOP_LOCKED(ptr %vp, ptr nonnull @conststr, i32 zeroext 24)
  %system_check_swapoff = load i32, ptr @system_check_swapoff, align 4
  %v_label6 = load i32, ptr %vp, align 4
  %1 = tail call addrspace(1) i32 @MAC_POLICY_CHECK(i32 %system_check_swapoff, ptr %cred, ptr nonnull %vp, i32 %v_label6)
  %system_check_swapoff7 = load i32, ptr @system_check_swapoff, align 4
  %2 = tail call addrspace(1) i32 @MAC_CHECK_PROBE2(i32 %system_check_swapoff7, i32 0, ptr %cred, ptr nonnull %vp)
  ret i32 0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
