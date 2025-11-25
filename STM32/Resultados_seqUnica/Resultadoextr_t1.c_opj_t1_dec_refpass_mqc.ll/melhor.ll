; ModuleID = 'angha-ll-stm32f1/extr_t1.c_opj_t1_dec_refpass_mqc.ll'
source_filename = "out/extr_t1.c_opj_t1_dec_refpass_mqc.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"TYPE_5__:init"(ptr writeonly captures(none) initializes((0, 8)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  %geph = getelementptr inbounds nuw i8, ptr %_this, i32 4
  store i32 0, ptr %geph, align 4
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @opj_t1_dec_refpass_mqc_64x64(ptr, i32) local_unnamed_addr addrspace(1) #1

declare i32 @opj_t1_dec_refpass_mqc_generic(ptr, i32) local_unnamed_addr addrspace(1) #1

define void @opj_t1_dec_refpass_mqc(ptr %t1, i32 %bpno) local_unnamed_addr addrspace(1) #1 {
body:
  %w3 = load i32, ptr %t1, align 4
  %cmpi = icmp eq i32 %w3, 64
  br i1 %cmpi, label %fullev, label %if_else

fullev:                                           ; preds = %body
  %h = getelementptr inbounds nuw i8, ptr %t1, i32 4
  %h5 = load i32, ptr %h, align 4
  %cmpi6 = icmp eq i32 %h5, 64
  br i1 %cmpi6, label %if_then, label %if_else

if_then:                                          ; preds = %fullev
  %0 = tail call addrspace(1) i32 @opj_t1_dec_refpass_mqc_64x64(ptr nonnull %t1, i32 %bpno)
  br label %if_cont

if_else:                                          ; preds = %fullev, %body
  %1 = tail call addrspace(1) i32 @opj_t1_dec_refpass_mqc_generic(ptr nonnull %t1, i32 %bpno)
  br label %if_cont

if_cont:                                          ; preds = %if_else, %if_then
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
