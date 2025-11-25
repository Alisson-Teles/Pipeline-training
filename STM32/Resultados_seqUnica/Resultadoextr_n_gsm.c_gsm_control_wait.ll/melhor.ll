; ModuleID = 'angha-ll-stm32f1/extr_n_gsm.c_gsm_control_wait.ll'
source_filename = "out/extr_n_gsm.c_gsm_control_wait.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"gsm_mux:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"gsm_control:init"(ptr writeonly captures(none) initializes((0, 8)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  %geperror = getelementptr inbounds nuw i8, ptr %_this, i32 4
  store i32 0, ptr %geperror, align 4
  ret void
}

declare i32 @kfree(ptr) local_unnamed_addr addrspace(1) #1

declare i32 @wait_event(i32, i32) local_unnamed_addr addrspace(1) #1

define i32 @gsm_control_wait(ptr readonly captures(none) %gsm, ptr %control) local_unnamed_addr addrspace(1) #1 {
body:
  %event3 = load i32, ptr %gsm, align 4
  %done5 = load i32, ptr %control, align 4
  %cmpi = icmp eq i32 %done5, 1
  %zext = zext i1 %cmpi to i32
  %0 = tail call addrspace(1) i32 @wait_event(i32 %event3, i32 %zext)
  %error = getelementptr inbounds nuw i8, ptr %control, i32 4
  %error7 = load i32, ptr %error, align 4
  %1 = tail call addrspace(1) i32 @kfree(ptr nonnull %control)
  ret i32 %error7
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
