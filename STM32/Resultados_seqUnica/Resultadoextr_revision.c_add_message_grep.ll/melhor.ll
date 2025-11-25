; ModuleID = 'angha-ll-stm32f1/extr_revision.c_add_message_grep.ll'
source_filename = "out/extr_revision.c_add_message_grep.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@GREP_PATTERN_BODY = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"rev_info:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @add_grep(ptr, ptr, i32, i32 zeroext) local_unnamed_addr addrspace(1) #1

define void @add_message_grep(ptr %revs, ptr %pattern, i32 zeroext %pattern.size) local_unnamed_addr addrspace(1) #1 {
body:
  %GREP_PATTERN_BODY = load i32, ptr @GREP_PATTERN_BODY, align 4
  %0 = tail call addrspace(1) i32 @add_grep(ptr %revs, ptr %pattern, i32 %GREP_PATTERN_BODY, i32 zeroext %pattern.size)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
