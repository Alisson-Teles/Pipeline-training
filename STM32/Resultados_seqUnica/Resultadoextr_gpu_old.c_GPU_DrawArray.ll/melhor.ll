; ModuleID = 'angha-ll-stm32f1/extr_gpu_old.c_GPU_DrawArray.ll'
source_filename = "out/extr_gpu_old.c_GPU_DrawArray.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@GPUREG_DRAWARRAYS = local_unnamed_addr global i32 0
@GPUREG_FRAMEBUFFER_FLUSH = local_unnamed_addr global i32 0
@GPUREG_GEOSTAGE_CONFIG2 = local_unnamed_addr global i32 0
@GPUREG_INDEXBUFFER_CONFIG = local_unnamed_addr global i32 0
@GPUREG_NUMVERTICES = local_unnamed_addr global i32 0
@GPUREG_PRIMITIVE_CONFIG = local_unnamed_addr global i32 0
@GPUREG_RESTART_PRIMITIVE = local_unnamed_addr global i32 0
@GPUREG_START_DRAW_FUNC0 = local_unnamed_addr global i32 0
@GPUREG_VERTEX_OFFSET = local_unnamed_addr global i32 0
@GPUREG_VTX_FUNC = local_unnamed_addr global i32 0

declare i32 @GPUCMD_AddMaskedWrite(i32, i32, i32) local_unnamed_addr addrspace(1) #0

declare i32 @GPUCMD_AddWrite(i32, i32) local_unnamed_addr addrspace(1) #0

define void @GPU_DrawArray(i32 %primitive, i32 %first, i32 %count) local_unnamed_addr addrspace(1) #0 {
body:
  %GPUREG_PRIMITIVE_CONFIG = load i32, ptr @GPUREG_PRIMITIVE_CONFIG, align 4
  %0 = tail call addrspace(1) i32 @GPUCMD_AddMaskedWrite(i32 %GPUREG_PRIMITIVE_CONFIG, i32 2, i32 %primitive)
  %GPUREG_RESTART_PRIMITIVE = load i32, ptr @GPUREG_RESTART_PRIMITIVE, align 4
  %1 = tail call addrspace(1) i32 @GPUCMD_AddMaskedWrite(i32 %GPUREG_RESTART_PRIMITIVE, i32 2, i32 1)
  %GPUREG_INDEXBUFFER_CONFIG = load i32, ptr @GPUREG_INDEXBUFFER_CONFIG, align 4
  %2 = tail call addrspace(1) i32 @GPUCMD_AddWrite(i32 %GPUREG_INDEXBUFFER_CONFIG, i32 -2147483648)
  %GPUREG_NUMVERTICES = load i32, ptr @GPUREG_NUMVERTICES, align 4
  %3 = tail call addrspace(1) i32 @GPUCMD_AddWrite(i32 %GPUREG_NUMVERTICES, i32 %count)
  %GPUREG_VERTEX_OFFSET = load i32, ptr @GPUREG_VERTEX_OFFSET, align 4
  %4 = tail call addrspace(1) i32 @GPUCMD_AddWrite(i32 %GPUREG_VERTEX_OFFSET, i32 %first)
  %GPUREG_GEOSTAGE_CONFIG2 = load i32, ptr @GPUREG_GEOSTAGE_CONFIG2, align 4
  %5 = tail call addrspace(1) i32 @GPUCMD_AddMaskedWrite(i32 %GPUREG_GEOSTAGE_CONFIG2, i32 1, i32 1)
  %GPUREG_START_DRAW_FUNC0 = load i32, ptr @GPUREG_START_DRAW_FUNC0, align 4
  %6 = tail call addrspace(1) i32 @GPUCMD_AddMaskedWrite(i32 %GPUREG_START_DRAW_FUNC0, i32 1, i32 0)
  %GPUREG_DRAWARRAYS = load i32, ptr @GPUREG_DRAWARRAYS, align 4
  %7 = tail call addrspace(1) i32 @GPUCMD_AddWrite(i32 %GPUREG_DRAWARRAYS, i32 1)
  %GPUREG_START_DRAW_FUNC07 = load i32, ptr @GPUREG_START_DRAW_FUNC0, align 4
  %8 = tail call addrspace(1) i32 @GPUCMD_AddMaskedWrite(i32 %GPUREG_START_DRAW_FUNC07, i32 1, i32 1)
  %GPUREG_VTX_FUNC = load i32, ptr @GPUREG_VTX_FUNC, align 4
  %9 = tail call addrspace(1) i32 @GPUCMD_AddWrite(i32 %GPUREG_VTX_FUNC, i32 1)
  %GPUREG_FRAMEBUFFER_FLUSH = load i32, ptr @GPUREG_FRAMEBUFFER_FLUSH, align 4
  %10 = tail call addrspace(1) i32 @GPUCMD_AddWrite(i32 %GPUREG_FRAMEBUFFER_FLUSH, i32 1)
  ret void
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
