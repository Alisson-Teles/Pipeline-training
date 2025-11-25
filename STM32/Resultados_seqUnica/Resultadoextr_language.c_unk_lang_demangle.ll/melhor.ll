; ModuleID = 'angha-ll-stm32f1/extr_language.c_unk_lang_demangle.ll'
source_filename = "out/extr_language.c_unk_lang_demangle.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

declare zeroext i8 @cplus_demangle(ptr, i32, i32 zeroext) local_unnamed_addr addrspace(1) #0

define zeroext i8 @unk_lang_demangle(ptr %mangled, i32 %options, i32 zeroext %mangled.size) local_unnamed_addr addrspace(1) #0 {
body:
  %0 = tail call zeroext addrspace(1) i8 @cplus_demangle(ptr %mangled, i32 %options, i32 zeroext %mangled.size)
  ret i8 %0
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
