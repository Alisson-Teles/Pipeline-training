; ModuleID = 'angha-ll-stm32f1/extr_mips-dis.c_print_insn_big_mips.ll'
source_filename = "out/extr_mips-dis.c_print_insn_big_mips.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@BFD_ENDIAN_BIG = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"disassemble_info:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @_print_insn_mips(i32, ptr, i32) local_unnamed_addr addrspace(1) #1

define i32 @print_insn_big_mips(i32 %memaddr, ptr %info) local_unnamed_addr addrspace(1) #1 {
body:
  %BFD_ENDIAN_BIG = load i32, ptr @BFD_ENDIAN_BIG, align 4
  %0 = tail call addrspace(1) i32 @_print_insn_mips(i32 %memaddr, ptr %info, i32 %BFD_ENDIAN_BIG)
  ret i32 %0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
