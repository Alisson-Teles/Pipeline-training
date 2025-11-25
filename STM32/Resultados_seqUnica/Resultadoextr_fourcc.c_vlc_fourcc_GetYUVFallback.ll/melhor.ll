; ModuleID = 'angha-ll-stm32f1/extr_fourcc.c_vlc_fourcc_GetYUVFallback.ll'
source_filename = "out/extr_fourcc.c_vlc_fourcc_GetYUVFallback.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@p_list_YUV = local_unnamed_addr global i32 0
@pp_YUV_fallback = local_unnamed_addr global i32 0

declare i32 @GetFallback(i32, i32, i32) local_unnamed_addr addrspace(1) #0

define i32 @vlc_fourcc_GetYUVFallback(i32 %i_fourcc) local_unnamed_addr addrspace(1) #0 {
body:
  %pp_YUV_fallback = load i32, ptr @pp_YUV_fallback, align 4
  %p_list_YUV = load i32, ptr @p_list_YUV, align 4
  %0 = tail call addrspace(1) i32 @GetFallback(i32 %i_fourcc, i32 %pp_YUV_fallback, i32 %p_list_YUV)
  ret i32 %0
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
