; ModuleID = 'angha-ll-stm32f1/extr_v1.c_nvkm_falcon_v1_set_start_addr.ll'
source_filename = "out/extr_v1.c_nvkm_falcon_v1_set_start_addr.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"nvkm_falcon:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @nvkm_falcon_wr32(ptr, i32, i32) local_unnamed_addr addrspace(1) #1

define void @nvkm_falcon_v1_set_start_addr(ptr %falcon, i32 %start_addr) local_unnamed_addr addrspace(1) #1 {
body:
  %0 = tail call addrspace(1) i32 @nvkm_falcon_wr32(ptr %falcon, i32 260, i32 %start_addr)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
