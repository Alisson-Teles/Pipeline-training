; ModuleID = 'angha-ll-stm32f1/extr_hnae.c_hnae_free_buffers.ll'
source_filename = "out/extr_hnae.c_hnae_free_buffers.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"hnae_ring:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @hnae_free_buffer_detach(ptr, i32) local_unnamed_addr addrspace(1) #1

define void @hnae_free_buffers(ptr %ring) local_unnamed_addr addrspace(1) #1 {
body:
  %desc_num36 = load i32, ptr %ring, align 4
  %cmpi7 = icmp sgt i32 %desc_num36, 0
  br i1 %cmpi7, label %while_body, label %while_end

while_body:                                       ; preds = %while_body, %body
  %i.08 = phi i32 [ %binop, %while_body ], [ 0, %body ]
  %0 = tail call addrspace(1) i32 @hnae_free_buffer_detach(ptr nonnull %ring, i32 %i.08)
  %binop = add nuw nsw i32 %i.08, 1
  %desc_num3 = load i32, ptr %ring, align 4
  %cmpi = icmp slt i32 %binop, %desc_num3
  br i1 %cmpi, label %while_body, label %while_end

while_end:                                        ; preds = %while_body, %body
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
