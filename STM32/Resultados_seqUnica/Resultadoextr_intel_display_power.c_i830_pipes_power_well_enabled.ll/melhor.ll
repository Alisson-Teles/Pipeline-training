; ModuleID = 'angha-ll-stm32f1/extr_intel_display_power.c_i830_pipes_power_well_enabled.ll'
source_filename = "out/extr_intel_display_power.c_i830_pipes_power_well_enabled.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@PIPECONF_ENABLE = local_unnamed_addr global i32 0
@PIPE_A = local_unnamed_addr global i32 0
@PIPE_B = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"i915_power_well:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"drm_i915_private:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @I915_READ(i32) local_unnamed_addr addrspace(1) #1

declare i32 @PIPECONF(i32) local_unnamed_addr addrspace(1) #1

define range(i32 0, 2) i32 @i830_pipes_power_well_enabled(ptr readnone captures(none) %dev_priv, ptr readnone captures(none) %power_well) local_unnamed_addr addrspace(1) #1 {
body:
  %PIPE_A = load i32, ptr @PIPE_A, align 4
  %0 = tail call addrspace(1) i32 @PIPECONF(i32 %PIPE_A)
  %1 = tail call addrspace(1) i32 @I915_READ(i32 %0)
  %PIPECONF_ENABLE = load i32, ptr @PIPECONF_ENABLE, align 4
  %binop = and i32 %PIPECONF_ENABLE, %1
  %intcast = trunc i32 %binop to i1
  br i1 %intcast, label %fullev, label %phiblock

fullev:                                           ; preds = %body
  %PIPE_B = load i32, ptr @PIPE_B, align 4
  %2 = tail call addrspace(1) i32 @PIPECONF(i32 %PIPE_B)
  %3 = tail call addrspace(1) i32 @I915_READ(i32 %2)
  %PIPECONF_ENABLE3 = load i32, ptr @PIPECONF_ENABLE, align 4
  %binop4 = and i32 %3, 1
  %4 = and i32 %binop4, %PIPECONF_ENABLE3
  br label %phiblock

phiblock:                                         ; preds = %fullev, %body
  %phi = phi i32 [ 0, %body ], [ %4, %fullev ]
  ret i32 %phi
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
