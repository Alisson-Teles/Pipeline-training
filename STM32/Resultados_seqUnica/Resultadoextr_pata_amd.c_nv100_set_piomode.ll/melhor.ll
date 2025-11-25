; ModuleID = 'angha-ll-stm32f1/extr_pata_amd.c_nv100_set_piomode.ll'
source_filename = "out/extr_pata_amd.c_nv100_set_piomode.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"ata_port:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"ata_device:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @timing_setup(ptr, ptr, i32, i32, i32) local_unnamed_addr addrspace(1) #1

define void @nv100_set_piomode(ptr %ap, ptr %adev) local_unnamed_addr addrspace(1) #1 {
body:
  %pio_mode5 = load i32, ptr %adev, align 4
  %0 = tail call addrspace(1) i32 @timing_setup(ptr %ap, ptr nonnull %adev, i32 80, i32 %pio_mode5, i32 3)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
