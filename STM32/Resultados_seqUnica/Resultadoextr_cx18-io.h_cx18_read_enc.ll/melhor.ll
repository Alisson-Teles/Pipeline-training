; ModuleID = 'angha-ll-stm32f1/extr_cx18-io.h_cx18_read_enc.ll'
source_filename = "out/extr_cx18-io.h_cx18_read_enc.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"cx18:init"(ptr writeonly captures(none) initializes((0, 8)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i64 0, ptr %_this, align 8
  ret void
}

declare i64 @cx18_readl(ptr, i64) local_unnamed_addr addrspace(1) #1

define i64 @cx18_read_enc(ptr %cx, i64 %addr) local_unnamed_addr addrspace(1) #1 {
body:
  %enc_mem4 = load i64, ptr %cx, align 8
  %binop = add i64 %enc_mem4, %addr
  %0 = tail call addrspace(1) i64 @cx18_readl(ptr nonnull %cx, i64 %binop)
  ret i64 %0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
