; ModuleID = 'angha-ll-stm32f1/extr_skynet_mq.c_skynet_mq_overload.ll'
source_filename = "out/extr_skynet_mq.c_skynet_mq_overload.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"message_queue:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite)
define i32 @skynet_mq_overload(ptr captures(none) %q) local_unnamed_addr addrspace(1) #1 {
body:
  %overload2 = load i32, ptr %q, align 4
  %cmpi.not = icmp eq i32 %overload2, 0
  br i1 %cmpi.not, label %common.ret, label %if_then

common.ret:                                       ; preds = %if_then, %body
  ret i32 %overload2

if_then:                                          ; preds = %body
  store i32 0, ptr %q, align 4
  br label %common.ret
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
