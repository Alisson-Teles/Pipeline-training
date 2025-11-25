; ModuleID = 'angha-ll-stm32f1/extr_msrle32.c_Intensity.ll'
source_filename = "out/extr_msrle32.c_Intensity.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"TYPE_3__:init"(ptr writeonly captures(none) initializes((0, 12)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  %geprgbBlue = getelementptr inbounds nuw i8, ptr %_this, i32 8
  store i32 0, ptr %geprgbBlue, align 4
  %geprgbGreen = getelementptr inbounds nuw i8, ptr %_this, i32 4
  store i32 0, ptr %geprgbGreen, align 4
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read)
define range(i32 -536870912, 536870912) i32 @Intensity(ptr readonly captures(none) %clr) local_unnamed_addr addrspace(1) #1 {
body:
  %rgbRed2 = load i32, ptr %clr, align 4
  %binop = mul i32 %rgbRed2, 30
  %rgbGreen = getelementptr inbounds nuw i8, ptr %clr, i32 4
  %rgbGreen4 = load i32, ptr %rgbGreen, align 4
  %binop5 = mul i32 %rgbGreen4, 59
  %binop6 = add i32 %binop5, %binop
  %rgbBlue = getelementptr inbounds nuw i8, ptr %clr, i32 8
  %rgbBlue8 = load i32, ptr %rgbBlue, align 4
  %binop9 = mul i32 %rgbBlue8, 11
  %binop10 = add i32 %binop6, %binop9
  %binop11 = sdiv i32 %binop10, 4
  ret i32 %binop11
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
