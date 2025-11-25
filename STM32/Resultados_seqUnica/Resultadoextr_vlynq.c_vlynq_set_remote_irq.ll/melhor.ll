; ModuleID = 'angha-ll-stm32f1/extr_vlynq.c_vlynq_set_remote_irq.ll'
source_filename = "out/extr_vlynq.c_vlynq_set_remote_irq.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@EBUSY = local_unnamed_addr global i32 0
@EINVAL = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"vlynq_device:init"(ptr writeonly captures(none) initializes((0, 24)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %_this, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none)
define i32 @vlynq_set_remote_irq(ptr captures(none) %dev, i32 %virq) local_unnamed_addr addrspace(1) #1 {
body:
  %irq_start3 = load i32, ptr %dev, align 4
  %binop = add i32 %irq_start3, %virq
  %enabled = getelementptr inbounds nuw i8, ptr %dev, i32 16
  %enabled6 = load i64, ptr %enabled, align 8
  %cmpi.not = icmp eq i64 %enabled6, 0
  br i1 %cmpi.not, label %if_cont, label %if_then

common.ret:                                       ; preds = %if_cont32, %if_then28, %if_then20, %if_then
  %common.ret.op = phi i32 [ %binop7, %if_then ], [ %binop21, %if_then20 ], [ %binop30, %if_then28 ], [ 0, %if_cont32 ]
  ret i32 %common.ret.op

if_then:                                          ; preds = %body
  %EBUSY = load i32, ptr @EBUSY, align 4
  %binop7 = sub i32 0, %EBUSY
  br label %common.ret

if_cont:                                          ; preds = %body
  %cmpi12 = icmp slt i32 %binop, %irq_start3
  br i1 %cmpi12, label %if_then20, label %fullev

fullev:                                           ; preds = %if_cont
  %irq_end = getelementptr inbounds nuw i8, ptr %dev, i32 4
  %irq_end16 = load i32, ptr %irq_end, align 4
  %cmpi17 = icmp sgt i32 %binop, %irq_end16
  br i1 %cmpi17, label %if_then20, label %if_cont23

if_then20:                                        ; preds = %fullev, %if_cont
  %EINVAL = load i32, ptr @EINVAL, align 4
  %binop21 = sub i32 0, %EINVAL
  br label %common.ret

if_cont23:                                        ; preds = %fullev
  %local_irq = getelementptr inbounds nuw i8, ptr %dev, i32 8
  %local_irq26 = load i32, ptr %local_irq, align 4
  %cmpi27 = icmp eq i32 %virq, %local_irq26
  br i1 %cmpi27, label %if_then28, label %if_cont32

if_then28:                                        ; preds = %if_cont23
  %EINVAL29 = load i32, ptr @EINVAL, align 4
  %binop30 = sub i32 0, %EINVAL29
  br label %common.ret

if_cont32:                                        ; preds = %if_cont23
  %remote_irq = getelementptr inbounds nuw i8, ptr %dev, i32 12
  store i32 %virq, ptr %remote_irq, align 4
  br label %common.ret
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
