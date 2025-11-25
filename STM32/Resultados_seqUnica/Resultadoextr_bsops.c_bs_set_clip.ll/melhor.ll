; ModuleID = 'angha-ll-stm32f1/extr_bsops.c_bs_set_clip.ll'
source_filename = "out/extr_bsops.c_bs_set_clip.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@g_clip_bottom1 = local_unnamed_addr global i32 0
@g_clip_left1 = local_unnamed_addr global i32 0
@g_clip_right1 = local_unnamed_addr global i32 0
@g_clip_top1 = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none)
define void @bs_set_clip(i32 %x, i32 %y, i32 %cx, i32 %cy) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 %x, ptr @g_clip_left1, align 4
  store i32 %y, ptr @g_clip_top1, align 4
  %binop = add i32 %cx, %x
  store i32 %binop, ptr @g_clip_right1, align 4
  %binop11 = add i32 %cy, %y
  store i32 %binop11, ptr @g_clip_bottom1, align 4
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
