; ModuleID = 'angha-ll-stm32f1/extr_xo_buf.h_xo_buf_left.ll'
source_filename = "out/extr_xo_buf.h_xo_buf_left.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"TYPE_3__:init"(ptr writeonly captures(none) initializes((0, 12)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  %gepxb_bufp = getelementptr inbounds nuw i8, ptr %_this, i32 8
  store i32 0, ptr %gepxb_bufp, align 4
  %gepxb_curp = getelementptr inbounds nuw i8, ptr %_this, i32 4
  store i32 0, ptr %gepxb_curp, align 4
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read)
define i32 @xo_buf_left(ptr readonly captures(none) %xbp) local_unnamed_addr addrspace(1) #1 {
body:
  %xb_size2 = load i32, ptr %xbp, align 4
  %xb_curp = getelementptr inbounds nuw i8, ptr %xbp, i32 4
  %xb_curp4 = load i32, ptr %xb_curp, align 4
  %xb_bufp = getelementptr inbounds nuw i8, ptr %xbp, i32 8
  %xb_bufp6 = load i32, ptr %xb_bufp, align 4
  %binop.neg = sub i32 %xb_size2, %xb_curp4
  %binop7 = add i32 %binop.neg, %xb_bufp6
  ret i32 %binop7
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
