; ModuleID = 'angha-ll-stm32f1/extr_slc-gram.c_defval_strings.ll'
source_filename = "out/extr_slc-gram.c_defval_strings.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@conststr = private unnamed_addr constant [24 x i8] c"opt.%s.num_strings = 0;\0A"
@conststr.1 = private unnamed_addr constant [23 x i8] c"opt.%s.strings = NULL;\0A"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"assignment:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @cprint(i32, ptr, ptr, i32 zeroext, i32 zeroext) local_unnamed_addr addrspace(1) #1

define void @defval_strings(ptr %name, ptr readnone captures(none) %defval, i32 zeroext %name.size) local_unnamed_addr addrspace(1) #1 {
body:
  %0 = tail call addrspace(1) i32 @cprint(i32 1, ptr nonnull @conststr, ptr %name, i32 zeroext 24, i32 zeroext %name.size)
  %1 = tail call addrspace(1) i32 @cprint(i32 1, ptr nonnull @conststr.1, ptr %name, i32 zeroext 23, i32 zeroext %name.size)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
