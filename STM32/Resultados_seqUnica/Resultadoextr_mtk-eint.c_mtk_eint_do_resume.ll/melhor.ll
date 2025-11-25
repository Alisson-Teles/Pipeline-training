; ModuleID = 'angha-ll-stm32f1/extr_mtk-eint.c_mtk_eint_do_resume.ll'
source_filename = "out/extr_mtk-eint.c_mtk_eint_do_resume.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"mtk_eint:init"(ptr writeonly captures(none) initializes((0, 8)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  %gepbase = getelementptr inbounds nuw i8, ptr %_this, i32 4
  store i32 0, ptr %gepbase, align 4
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @mtk_eint_chip_write_mask(ptr, i32, i32) local_unnamed_addr addrspace(1) #1

define noundef i32 @mtk_eint_do_resume(ptr %eint) local_unnamed_addr addrspace(1) #1 {
body:
  %base = getelementptr inbounds nuw i8, ptr %eint, i32 4
  %base3 = load i32, ptr %base, align 4
  %cur_mask5 = load i32, ptr %eint, align 4
  %0 = tail call addrspace(1) i32 @mtk_eint_chip_write_mask(ptr nonnull %eint, i32 %base3, i32 %cur_mask5)
  ret i32 0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
