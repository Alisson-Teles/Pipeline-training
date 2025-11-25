; ModuleID = 'angha-ll-stm32f1/extr_drm_bufs.c_drm_rmmap.ll'
source_filename = "out/extr_drm_bufs.c_drm_rmmap.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"drm_local_map:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"drm_device:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @DRM_LOCK(ptr) local_unnamed_addr addrspace(1) #1

declare i32 @DRM_UNLOCK(ptr) local_unnamed_addr addrspace(1) #1

declare i32 @drm_rmmap_locked(ptr, ptr) local_unnamed_addr addrspace(1) #1

define i32 @drm_rmmap(ptr %dev, ptr %map) local_unnamed_addr addrspace(1) #1 {
body:
  %0 = tail call addrspace(1) i32 @DRM_LOCK(ptr %dev)
  %1 = tail call addrspace(1) i32 @drm_rmmap_locked(ptr %dev, ptr %map)
  %2 = tail call addrspace(1) i32 @DRM_UNLOCK(ptr %dev)
  ret i32 %1
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
