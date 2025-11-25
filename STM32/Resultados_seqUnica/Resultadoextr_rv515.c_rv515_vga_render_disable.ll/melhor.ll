; ModuleID = 'angha-ll-stm32f1/extr_rv515.c_rv515_vga_render_disable.ll'
source_filename = "out/extr_rv515.c_rv515_vga_render_disable.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@C_000300_VGA_VSTATUS_CNTL = local_unnamed_addr global i32 0
@R_000300_VGA_RENDER_CONTROL = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"radeon_device:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @RREG32(i32) local_unnamed_addr addrspace(1) #1

declare i32 @WREG32(i32, i32) local_unnamed_addr addrspace(1) #1

define void @rv515_vga_render_disable(ptr readnone captures(none) %rdev) local_unnamed_addr addrspace(1) #1 {
body:
  %R_000300_VGA_RENDER_CONTROL = load i32, ptr @R_000300_VGA_RENDER_CONTROL, align 4
  %0 = tail call addrspace(1) i32 @RREG32(i32 %R_000300_VGA_RENDER_CONTROL)
  %C_000300_VGA_VSTATUS_CNTL = load i32, ptr @C_000300_VGA_VSTATUS_CNTL, align 4
  %binop = and i32 %C_000300_VGA_VSTATUS_CNTL, %0
  %1 = tail call addrspace(1) i32 @WREG32(i32 %R_000300_VGA_RENDER_CONTROL, i32 %binop)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
