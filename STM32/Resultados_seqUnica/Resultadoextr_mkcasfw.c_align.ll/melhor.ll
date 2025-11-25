; ModuleID = 'angha-ll-stm32f1/extr_mkcasfw.c_align.ll'
source_filename = "out/extr_mkcasfw.c_align.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define i32 @align(i32 %base, i32 %alignment) local_unnamed_addr addrspace(1) #0 {
body:
  %cmpi.not = icmp eq i32 %alignment, 0
  %binop = add i32 %base, -1
  %binop6 = add i32 %binop, %alignment
  %neg = sub i32 0, %alignment
  %binop9 = and i32 %binop6, %neg
  %ret.0 = select i1 %cmpi.not, i32 %base, i32 %binop9
  ret i32 %ret.0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
