; ModuleID = 'angha-ll-stm32f1/extr_specifier.h_specifier_escape.ll'
source_filename = "out/extr_specifier.h_specifier_escape.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@conststr = private unnamed_addr constant [1 x i8] c"%"
@conststr.1 = private unnamed_addr constant [2 x i8] c"%%"

declare zeroext i8 @strreplace(ptr, ptr, ptr, i32 zeroext, i32 zeroext, i32 zeroext) local_unnamed_addr addrspace(1) #0

define zeroext i8 @specifier_escape(ptr %string, i32 zeroext %string.size) local_unnamed_addr addrspace(1) #0 {
body:
  %0 = tail call zeroext addrspace(1) i8 @strreplace(ptr %string, ptr nonnull @conststr, ptr nonnull @conststr.1, i32 zeroext %string.size, i32 zeroext 1, i32 zeroext 2)
  ret i8 %0
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
