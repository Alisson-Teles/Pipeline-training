; ModuleID = 'angha-ll-stm32f1/extr_softdog.c_softdog_set_heartbeat.ll'
source_filename = "out/extr_softdog.c_softdog_set_heartbeat.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@EINVAL = local_unnamed_addr global i32 0
@soft_margin = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none)
define i32 @softdog_set_heartbeat(i32 %t) local_unnamed_addr addrspace(1) #0 {
body:
  %0 = add i32 %t, -65536
  %phi = icmp ult i32 %0, -65535
  br i1 %phi, label %if_then, label %if_cont

common.ret:                                       ; preds = %if_cont, %if_then
  %common.ret.op = phi i32 [ %binop, %if_then ], [ 0, %if_cont ]
  ret i32 %common.ret.op

if_then:                                          ; preds = %body
  %EINVAL = load i32, ptr @EINVAL, align 4
  %binop = sub i32 0, %EINVAL
  br label %common.ret

if_cont:                                          ; preds = %body
  store i32 %t, ptr @soft_margin, align 4
  br label %common.ret
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
