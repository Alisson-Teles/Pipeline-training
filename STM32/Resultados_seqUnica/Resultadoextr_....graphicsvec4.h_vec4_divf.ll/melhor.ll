; ModuleID = 'angha-ll-stm32f1/extr_....graphicsvec4.h_vec4_divf.ll'
source_filename = "out/extr_....graphicsvec4.h_vec4_divf.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"vec4:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @_mm_div_ps(i32, i32) local_unnamed_addr addrspace(1) #1

declare i32 @_mm_set1_ps(float) local_unnamed_addr addrspace(1) #1

define void @vec4_divf(ptr writeonly captures(none) initializes((0, 4)) %dst, ptr readonly captures(none) %v, float %f) local_unnamed_addr addrspace(1) #1 {
body:
  %m6 = load i32, ptr %v, align 4
  %0 = tail call addrspace(1) i32 @_mm_set1_ps(float %f)
  %1 = tail call addrspace(1) i32 @_mm_div_ps(i32 %m6, i32 %0)
  store i32 %1, ptr %dst, align 4
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
