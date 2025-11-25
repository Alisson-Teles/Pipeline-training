; ModuleID = 'angha-ll-stm32f1/extr_intel_color.c_icl_color_check.ll'
source_filename = "out/extr_intel_color.c_icl_color_check.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"intel_crtc_state:init"(ptr writeonly captures(none) initializes((0, 8)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  %gepgamma_mode = getelementptr inbounds nuw i8, ptr %_this, i32 4
  store i32 0, ptr %gepgamma_mode, align 4
  ret void
}

declare i32 @check_luts(ptr) local_unnamed_addr addrspace(1) #1

declare i32 @icl_csc_mode(ptr) local_unnamed_addr addrspace(1) #1

declare i32 @icl_gamma_mode(ptr) local_unnamed_addr addrspace(1) #1

define i32 @icl_color_check(ptr %crtc_state) local_unnamed_addr addrspace(1) #1 {
body:
  %0 = tail call addrspace(1) i32 @check_luts(ptr %crtc_state)
  %cmpi.not = icmp eq i32 %0, 0
  br i1 %cmpi.not, label %if_cont, label %common.ret

common.ret:                                       ; preds = %if_cont, %body
  %common.ret.op = phi i32 [ 0, %if_cont ], [ %0, %body ]
  ret i32 %common.ret.op

if_cont:                                          ; preds = %body
  %gamma_mode = getelementptr inbounds nuw i8, ptr %crtc_state, i32 4
  %1 = tail call addrspace(1) i32 @icl_gamma_mode(ptr %crtc_state)
  store i32 %1, ptr %gamma_mode, align 4
  %2 = tail call addrspace(1) i32 @icl_csc_mode(ptr %crtc_state)
  store i32 %2, ptr %crtc_state, align 4
  br label %common.ret
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
