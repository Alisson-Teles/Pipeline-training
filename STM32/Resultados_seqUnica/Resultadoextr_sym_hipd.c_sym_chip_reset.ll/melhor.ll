; ModuleID = 'angha-ll-stm32f1/extr_sym_hipd.c_sym_chip_reset.ll'
source_filename = "out/extr_sym_hipd.c_sym_chip_reset.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@SRST = local_unnamed_addr global i32 0
@nc_istat = local_unnamed_addr global i32 0
@nc_mbox1 = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"sym_hcb:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @INB(ptr, i32) local_unnamed_addr addrspace(1) #1

declare i32 @OUTB(ptr, i32, i32) local_unnamed_addr addrspace(1) #1

declare i32 @udelay(i32) local_unnamed_addr addrspace(1) #1

define void @sym_chip_reset(ptr %np) local_unnamed_addr addrspace(1) #1 {
body:
  %nc_istat = load i32, ptr @nc_istat, align 4
  %SRST = load i32, ptr @SRST, align 4
  %0 = tail call addrspace(1) i32 @OUTB(ptr %np, i32 %nc_istat, i32 %SRST)
  %nc_mbox1 = load i32, ptr @nc_mbox1, align 4
  %1 = tail call addrspace(1) i32 @INB(ptr %np, i32 %nc_mbox1)
  %2 = tail call addrspace(1) i32 @udelay(i32 10)
  %nc_istat4 = load i32, ptr @nc_istat, align 4
  %3 = tail call addrspace(1) i32 @OUTB(ptr %np, i32 %nc_istat4, i32 0)
  %nc_mbox16 = load i32, ptr @nc_mbox1, align 4
  %4 = tail call addrspace(1) i32 @INB(ptr %np, i32 %nc_mbox16)
  %5 = tail call addrspace(1) i32 @udelay(i32 2000)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
