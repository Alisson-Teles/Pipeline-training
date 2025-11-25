; ModuleID = 'angha-ll-stm32f1/extr_codec_mpeg12.c_codec_mpeg12_recycle.ll'
source_filename = "out/extr_codec_mpeg12.c_codec_mpeg12_recycle.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@MREG_BUFFERIN = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"amvdec_core:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @amvdec_write_dos(ptr, i32, i64) local_unnamed_addr addrspace(1) #1

define void @codec_mpeg12_recycle(ptr %core, i64 %buf_idx) local_unnamed_addr addrspace(1) #1 {
body:
  %MREG_BUFFERIN = load i32, ptr @MREG_BUFFERIN, align 4
  %binop = add i64 %buf_idx, 1
  %0 = tail call addrspace(1) i32 @amvdec_write_dos(ptr %core, i32 %MREG_BUFFERIN, i64 %binop)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
