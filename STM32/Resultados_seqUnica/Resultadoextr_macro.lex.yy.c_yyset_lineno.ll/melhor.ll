; ModuleID = 'angha-ll-stm32f1/extr_macro.lex.yy.c_yyset_lineno.ll'
source_filename = "out/extr_macro.lex.yy.c_yyset_lineno.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@yylineno = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none)
define void @yyset_lineno(i32 %line_number) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 %line_number, ptr @yylineno, align 4
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
