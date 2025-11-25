; ModuleID = 'angha-ll-stm32f1/extr_print.c_twips_to_pixels.ll'
source_filename = "out/extr_print.c_twips_to_pixels.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@TWIPS_PER_INCH = local_unnamed_addr global i32 0

declare i32 @MulDiv(i32, i32, i32) local_unnamed_addr addrspace(1) #0

define i32 @twips_to_pixels(i32 %twips, i32 %dpi) local_unnamed_addr addrspace(1) #0 {
body:
  %TWIPS_PER_INCH = load i32, ptr @TWIPS_PER_INCH, align 4
  %0 = tail call addrspace(1) i32 @MulDiv(i32 %twips, i32 %dpi, i32 %TWIPS_PER_INCH)
  ret i32 %0
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
