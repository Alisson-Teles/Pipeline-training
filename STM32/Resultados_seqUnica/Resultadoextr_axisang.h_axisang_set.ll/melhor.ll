; ModuleID = 'angha-ll-stm32f1/extr_axisang.h_axisang_set.ll'
source_filename = "out/extr_axisang.h_axisang_set.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"axisang:init"(ptr writeonly captures(none) initializes((0, 16)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %_this, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @axisang_set(ptr writeonly captures(none) initializes((0, 16)) %dst, float %x, float %y, float %z, float %w) local_unnamed_addr addrspace(1) #0 {
body:
  store float %x, ptr %dst, align 4
  %y9 = getelementptr inbounds nuw i8, ptr %dst, i32 4
  store float %y, ptr %y9, align 4
  %z12 = getelementptr inbounds nuw i8, ptr %dst, i32 8
  store float %z, ptr %z12, align 4
  %w15 = getelementptr inbounds nuw i8, ptr %dst, i32 12
  store float %w, ptr %w15, align 4
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
