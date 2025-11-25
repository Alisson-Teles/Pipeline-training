; ModuleID = 'angha-ll-stm32f1/extr_parport_ip32.c_parport_ip32_data_forward.ll'
source_filename = "out/extr_parport_ip32.c_parport_ip32_data_forward.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@DCR_DIR = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"parport:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @__parport_ip32_frob_control(ptr, i32, i32) local_unnamed_addr addrspace(1) #1

define void @parport_ip32_data_forward(ptr %p) local_unnamed_addr addrspace(1) #1 {
body:
  %DCR_DIR = load i32, ptr @DCR_DIR, align 4
  %0 = tail call addrspace(1) i32 @__parport_ip32_frob_control(ptr %p, i32 %DCR_DIR, i32 0)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
