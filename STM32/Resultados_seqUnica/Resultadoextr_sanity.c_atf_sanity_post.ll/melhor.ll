; ModuleID = 'angha-ll-stm32f1/extr_sanity.c_atf_sanity_post.ll'
source_filename = "out/extr_sanity.c_atf_sanity_post.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@conststr = private unnamed_addr constant [39 x i8] c"Postcondition check failed at %s:%d: %s"

declare i32 @fail(ptr, ptr, i32, ptr, i32 zeroext, i32 zeroext, i32 zeroext) local_unnamed_addr addrspace(1) #0

define void @atf_sanity_post(ptr %file, i32 %line, ptr %cond, i32 zeroext %file.size, i32 zeroext %cond.size) local_unnamed_addr addrspace(1) #0 {
body:
  %0 = tail call addrspace(1) i32 @fail(ptr nonnull @conststr, ptr %file, i32 %line, ptr %cond, i32 zeroext 39, i32 zeroext %file.size, i32 zeroext %cond.size)
  ret void
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
