; ModuleID = 'angha-ll-stm32f1/extr_gfx_v10_0.c_gfx_v10_0_ring_emit_sb.ll'
source_filename = "out/extr_gfx_v10_0.c_gfx_v10_0_ring_emit_sb.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@PACKET3_SWITCH_BUFFER = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"amdgpu_ring:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @PACKET3(i32, i32) local_unnamed_addr addrspace(1) #1

declare i32 @amdgpu_ring_write(ptr, i32) local_unnamed_addr addrspace(1) #1

define void @gfx_v10_0_ring_emit_sb(ptr %ring) local_unnamed_addr addrspace(1) #1 {
body:
  %PACKET3_SWITCH_BUFFER = load i32, ptr @PACKET3_SWITCH_BUFFER, align 4
  %0 = tail call addrspace(1) i32 @PACKET3(i32 %PACKET3_SWITCH_BUFFER, i32 0)
  %1 = tail call addrspace(1) i32 @amdgpu_ring_write(ptr %ring, i32 %0)
  %2 = tail call addrspace(1) i32 @amdgpu_ring_write(ptr %ring, i32 0)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
