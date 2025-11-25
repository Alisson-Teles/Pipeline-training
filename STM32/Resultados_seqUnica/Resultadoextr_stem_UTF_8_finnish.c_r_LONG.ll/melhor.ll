; ModuleID = 'angha-ll-stm32f1/extr_stem_UTF_8_finnish.c_r_LONG.ll'
source_filename = "out/extr_stem_UTF_8_finnish.c_r_LONG.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@a_5 = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"SN_env:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @find_among_b(ptr, i32, i32) local_unnamed_addr addrspace(1) #1

define range(i32 0, 2) i32 @r_LONG(ptr %z) local_unnamed_addr addrspace(1) #1 {
body:
  %a_5 = load i32, ptr @a_5, align 4
  %0 = tail call addrspace(1) i32 @find_among_b(ptr %z, i32 %a_5, i32 7)
  %cmpi = icmp ne i32 %0, 0
  %spec.select = zext i1 %cmpi to i32
  ret i32 %spec.select
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
