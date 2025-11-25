; ModuleID = 'angha-ll-stm32f1/extr_jit.c_jne_reg.ll'
source_filename = "out/extr_jit.c_jne_reg.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@ALU_OP_XOR = local_unnamed_addr global i32 0
@BR_BNE = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"nfp_prog:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"nfp_insn_meta:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @wrp_test_reg(ptr, ptr, i32, i32) local_unnamed_addr addrspace(1) #1

define i32 @jne_reg(ptr %nfp_prog, ptr %meta) local_unnamed_addr addrspace(1) #1 {
body:
  %ALU_OP_XOR = load i32, ptr @ALU_OP_XOR, align 4
  %BR_BNE = load i32, ptr @BR_BNE, align 4
  %0 = tail call addrspace(1) i32 @wrp_test_reg(ptr %nfp_prog, ptr %meta, i32 %ALU_OP_XOR, i32 %BR_BNE)
  ret i32 %0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
