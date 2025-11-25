; ModuleID = 'angha-ll-stm32f1/extr_ugidfw_vnode.c_ugidfw_vnode_check_listextattr.ll'
source_filename = "out/extr_ugidfw_vnode.c_ugidfw_vnode_check_listextattr.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@MBI_READ = local_unnamed_addr global i32 0

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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"label:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @ugidfw_check_vp(ptr, ptr, i32) local_unnamed_addr addrspace(1) #1

define i32 @ugidfw_vnode_check_listextattr(ptr %cred, ptr %vp, ptr readnone captures(none) %vplabel, i32 %attrnamespace) local_unnamed_addr addrspace(1) #1 {
body:
  %MBI_READ = load i32, ptr @MBI_READ, align 4
  %0 = tail call addrspace(1) i32 @ugidfw_check_vp(ptr %cred, ptr %vp, i32 %MBI_READ)
  ret i32 %0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
