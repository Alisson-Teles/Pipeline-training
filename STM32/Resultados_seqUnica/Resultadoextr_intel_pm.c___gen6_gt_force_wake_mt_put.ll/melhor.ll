; ModuleID = 'angha-ll-stm32f1/extr_intel_pm.c___gen6_gt_force_wake_mt_put.ll'
source_filename = "out/extr_intel_pm.c___gen6_gt_force_wake_mt_put.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@ECOBUS = local_unnamed_addr global i32 0
@FORCEWAKE_KERNEL = local_unnamed_addr global i32 0
@FORCEWAKE_MT = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"drm_i915_private:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @I915_WRITE_NOTRACE(i32, i32) local_unnamed_addr addrspace(1) #1

declare i32 @POSTING_READ(i32) local_unnamed_addr addrspace(1) #1

declare i32 @_MASKED_BIT_DISABLE(i32) local_unnamed_addr addrspace(1) #1

declare i32 @gen6_gt_check_fifodbg(ptr) local_unnamed_addr addrspace(1) #1

define void @__gen6_gt_force_wake_mt_put(ptr %dev_priv) local_unnamed_addr addrspace(1) #1 {
body:
  %FORCEWAKE_MT = load i32, ptr @FORCEWAKE_MT, align 4
  %FORCEWAKE_KERNEL = load i32, ptr @FORCEWAKE_KERNEL, align 4
  %0 = tail call addrspace(1) i32 @_MASKED_BIT_DISABLE(i32 %FORCEWAKE_KERNEL)
  %1 = tail call addrspace(1) i32 @I915_WRITE_NOTRACE(i32 %FORCEWAKE_MT, i32 %0)
  %ECOBUS = load i32, ptr @ECOBUS, align 4
  %2 = tail call addrspace(1) i32 @POSTING_READ(i32 %ECOBUS)
  %3 = tail call addrspace(1) i32 @gen6_gt_check_fifodbg(ptr %dev_priv)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
