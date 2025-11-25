; ModuleID = 'angha-ll-stm32f1/extr_gx.c_GX_SetClipMode.ll'
source_filename = "out/extr_gx.c_GX_SetClipMode.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

declare i32 @GX_LOAD_XF_REG(i32, i32) local_unnamed_addr addrspace(1) #0

define void @GX_SetClipMode(i32 %mode) local_unnamed_addr addrspace(1) #0 {
body:
  %binop = and i32 %mode, 1
  %0 = tail call addrspace(1) i32 @GX_LOAD_XF_REG(i32 4101, i32 %binop)
  ret void
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
