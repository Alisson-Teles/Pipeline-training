; ModuleID = 'angha-ll-stm32f1/extr_tcic.c_tcic_aux_getw.ll'
source_filename = "out/extr_tcic.c_tcic_aux_getw.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@TCIC_AUX = local_unnamed_addr global i32 0
@TCIC_MODE = local_unnamed_addr global i32 0
@TCIC_MODE_PGMMASK = local_unnamed_addr global i32 0

declare i32 @tcic_getb(i32) local_unnamed_addr addrspace(1) #0

declare i32 @tcic_getw(i32) local_unnamed_addr addrspace(1) #0

declare i32 @tcic_setb(i32, i32) local_unnamed_addr addrspace(1) #0

define i32 @tcic_aux_getw(i32 %reg) local_unnamed_addr addrspace(1) #0 {
body:
  %TCIC_MODE = load i32, ptr @TCIC_MODE, align 4
  %0 = tail call addrspace(1) i32 @tcic_getb(i32 %TCIC_MODE)
  %TCIC_MODE_PGMMASK = load i32, ptr @TCIC_MODE_PGMMASK, align 4
  %binop = and i32 %TCIC_MODE_PGMMASK, %0
  %binop3 = or i32 %binop, %reg
  %TCIC_MODE4 = load i32, ptr @TCIC_MODE, align 4
  %1 = tail call addrspace(1) i32 @tcic_setb(i32 %TCIC_MODE4, i32 %binop3)
  %TCIC_AUX = load i32, ptr @TCIC_AUX, align 4
  %2 = tail call addrspace(1) i32 @tcic_getw(i32 %TCIC_AUX)
  ret i32 %2
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
