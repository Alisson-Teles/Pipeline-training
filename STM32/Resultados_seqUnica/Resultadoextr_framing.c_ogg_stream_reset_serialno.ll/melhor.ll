; ModuleID = 'angha-ll-stm32f1/extr_framing.c_ogg_stream_reset_serialno.ll'
source_filename = "out/extr_framing.c_ogg_stream_reset_serialno.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@OGG_SUCCESS = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"TYPE_4__:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @ogg_stream_reset(ptr) local_unnamed_addr addrspace(1) #1

define i32 @ogg_stream_reset_serialno(ptr %os, i32 %serialno) local_unnamed_addr addrspace(1) #1 {
body:
  %0 = tail call addrspace(1) i32 @ogg_stream_reset(ptr %os)
  store i32 %serialno, ptr %os, align 4
  %OGG_SUCCESS = load i32, ptr @OGG_SUCCESS, align 4
  ret i32 %OGG_SUCCESS
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
