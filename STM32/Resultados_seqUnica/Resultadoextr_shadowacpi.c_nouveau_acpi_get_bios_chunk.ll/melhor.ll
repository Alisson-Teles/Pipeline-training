; ModuleID = 'angha-ll-stm32f1/extr_shadowacpi.c_nouveau_acpi_get_bios_chunk.ll'
source_filename = "out/extr_shadowacpi.c_nouveau_acpi_get_bios_chunk.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@EINVAL = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none)
define i32 @nouveau_acpi_get_bios_chunk(i32 %bios, i32 %offset, i32 %len) local_unnamed_addr addrspace(1) #0 {
body:
  %EINVAL = load i32, ptr @EINVAL, align 4
  %binop = sub i32 0, %EINVAL
  ret i32 %binop
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
