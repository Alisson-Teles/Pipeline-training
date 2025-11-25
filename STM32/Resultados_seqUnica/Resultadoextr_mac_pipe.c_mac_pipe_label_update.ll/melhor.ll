; ModuleID = 'angha-ll-stm32f1/extr_mac_pipe.c_mac_pipe_label_update.ll'
source_filename = "out/extr_mac_pipe.c_mac_pipe_label_update.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@pipe_label_update = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"pipe:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"label:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @MAC_PERFORM(i32, i32, ptr, i32, ptr) local_unnamed_addr addrspace(1) #1

declare i32 @mac_pipe_check_label_update(i32, ptr, ptr) local_unnamed_addr addrspace(1) #1

define i32 @mac_pipe_label_update(i32 %cred, ptr %cpipe, ptr %label) local_unnamed_addr addrspace(1) #1 {
body:
  %0 = tail call addrspace(1) i32 @mac_pipe_check_label_update(i32 %cred, ptr %cpipe, ptr %label)
  %cmpi.not = icmp eq i32 %0, 0
  br i1 %cmpi.not, label %if_cont, label %common.ret

common.ret:                                       ; preds = %if_cont, %body
  %common.ret.op = phi i32 [ 0, %if_cont ], [ %0, %body ]
  ret i32 %common.ret.op

if_cont:                                          ; preds = %body
  %pipe_label_update = load i32, ptr @pipe_label_update, align 4
  %pipe_label11 = load i32, ptr %cpipe, align 4
  %1 = tail call addrspace(1) i32 @MAC_PERFORM(i32 %pipe_label_update, i32 %cred, ptr nonnull %cpipe, i32 %pipe_label11, ptr %label)
  br label %common.ret
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
