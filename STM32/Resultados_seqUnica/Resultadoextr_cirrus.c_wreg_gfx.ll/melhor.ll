; ModuleID = 'angha-ll-stm32f1/extr_cirrus.c_wreg_gfx.ll'
source_filename = "out/extr_cirrus.c_wreg_gfx.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@GFX_DATA = local_unnamed_addr global i64 0
@GFX_INDEX = local_unnamed_addr global i64 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"cirrus_device:init"(ptr writeonly captures(none) initializes((0, 8)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i64 0, ptr %_this, align 8
  ret void
}

declare i32 @iowrite8(i32, i64) local_unnamed_addr addrspace(1) #1

define void @wreg_gfx(ptr readonly captures(none) %cirrus, i32 %reg, i32 %val) local_unnamed_addr addrspace(1) #1 {
body:
  %mmio5 = load i64, ptr %cirrus, align 8
  %GFX_INDEX = load i64, ptr @GFX_INDEX, align 8
  %binop = add i64 %GFX_INDEX, %mmio5
  %0 = tail call addrspace(1) i32 @iowrite8(i32 %reg, i64 %binop)
  %mmio9 = load i64, ptr %cirrus, align 8
  %GFX_DATA = load i64, ptr @GFX_DATA, align 8
  %binop10 = add i64 %GFX_DATA, %mmio9
  %1 = tail call addrspace(1) i32 @iowrite8(i32 %val, i64 %binop10)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
