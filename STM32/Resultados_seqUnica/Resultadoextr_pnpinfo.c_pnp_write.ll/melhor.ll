; ModuleID = 'angha-ll-stm32f1/extr_pnpinfo.c_pnp_write.ll'
source_filename = "out/extr_pnpinfo.c_pnp_write.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@_PNP_ADDRESS = local_unnamed_addr global i32 0
@_PNP_WRITE_DATA = local_unnamed_addr global i32 0

declare i32 @outb(i32, i32) local_unnamed_addr addrspace(1) #0

define void @pnp_write(i32 %d, i32 %r) local_unnamed_addr addrspace(1) #0 {
body:
  %_PNP_ADDRESS = load i32, ptr @_PNP_ADDRESS, align 4
  %0 = tail call addrspace(1) i32 @outb(i32 %_PNP_ADDRESS, i32 %d)
  %_PNP_WRITE_DATA = load i32, ptr @_PNP_WRITE_DATA, align 4
  %1 = tail call addrspace(1) i32 @outb(i32 %_PNP_WRITE_DATA, i32 %r)
  ret void
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
