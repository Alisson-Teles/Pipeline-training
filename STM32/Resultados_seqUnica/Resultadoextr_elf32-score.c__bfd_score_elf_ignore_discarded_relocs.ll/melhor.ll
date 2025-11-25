; ModuleID = 'angha-ll-stm32f1/extr_elf32-score.c__bfd_score_elf_ignore_discarded_relocs.ll'
source_filename = "out/extr_elf32-score.c__bfd_score_elf_ignore_discarded_relocs.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@FALSE = local_unnamed_addr global i32 0
@TRUE = local_unnamed_addr global i32 0
@conststr = private unnamed_addr constant [4 x i8] c".pdr"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"TYPE_3__:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i64 @strcmp(i32, ptr, i32 zeroext) local_unnamed_addr addrspace(1) #1

define i32 @_bfd_score_elf_ignore_discarded_relocs(ptr readonly captures(none) %sec) local_unnamed_addr addrspace(1) #1 {
body:
  %name2 = load i32, ptr %sec, align 4
  %0 = tail call addrspace(1) i64 @strcmp(i32 %name2, ptr nonnull @conststr, i32 zeroext 4)
  %cmpi = icmp eq i64 %0, 0
  %TRUE = load i32, ptr @TRUE, align 4
  %FALSE = load i32, ptr @FALSE, align 4
  %common.ret.op = select i1 %cmpi, i32 %TRUE, i32 %FALSE
  ret i32 %common.ret.op
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
