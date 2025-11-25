; ModuleID = 'angha-ll-stm32f1/extr_gfx_v6_0.c_gfx_v6_0_select_me_pipe_q.ll'
source_filename = "out/extr_gfx_v6_0.c_gfx_v6_0_select_me_pipe_q.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@conststr = private unnamed_addr constant [16 x i8] c"Not implemented\0A"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"amdgpu_device:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @DRM_INFO(ptr, i32 zeroext) local_unnamed_addr addrspace(1) #1

define void @gfx_v6_0_select_me_pipe_q(ptr readnone captures(none) %adev, i32 %me, i32 %pipe, i32 %q, i32 %vm) local_unnamed_addr addrspace(1) #1 {
body:
  %0 = tail call addrspace(1) i32 @DRM_INFO(ptr nonnull @conststr, i32 zeroext 16)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
