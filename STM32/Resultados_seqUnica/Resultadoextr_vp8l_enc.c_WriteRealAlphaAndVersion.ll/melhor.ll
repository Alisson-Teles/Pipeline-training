; ModuleID = 'angha-ll-stm32f1/extr_vp8l_enc.c_WriteRealAlphaAndVersion.ll'
source_filename = "out/extr_vp8l_enc.c_WriteRealAlphaAndVersion.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@VP8L_VERSION = local_unnamed_addr global i32 0
@VP8L_VERSION_BITS = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"TYPE_4__:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @VP8LPutBits(ptr, i32, i32) local_unnamed_addr addrspace(1) #1

define range(i32 0, 2) i32 @WriteRealAlphaAndVersion(ptr %bw, i32 %has_alpha) local_unnamed_addr addrspace(1) #1 {
body:
  %0 = tail call addrspace(1) i32 @VP8LPutBits(ptr %bw, i32 %has_alpha, i32 1)
  %VP8L_VERSION = load i32, ptr @VP8L_VERSION, align 4
  %VP8L_VERSION_BITS = load i32, ptr @VP8L_VERSION_BITS, align 4
  %1 = tail call addrspace(1) i32 @VP8LPutBits(ptr %bw, i32 %VP8L_VERSION, i32 %VP8L_VERSION_BITS)
  %error_6 = load i32, ptr %bw, align 4
  %cmpi = icmp eq i32 %error_6, 0
  %zext = zext i1 %cmpi to i32
  ret i32 %zext
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
