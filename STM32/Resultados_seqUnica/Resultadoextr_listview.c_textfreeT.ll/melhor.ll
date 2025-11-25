; ModuleID = 'angha-ll-stm32f1/extr_listview.c_textfreeT.ll'
source_filename = "out/extr_listview.c_textfreeT.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

declare i32 @Free(i32) local_unnamed_addr addrspace(1) #0

declare i64 @is_text(i32) local_unnamed_addr addrspace(1) #0

define void @textfreeT(i32 %wstr, i32 %isW) local_unnamed_addr addrspace(1) #0 {
body:
  %cmpi = icmp eq i32 %isW, 0
  br i1 %cmpi, label %fullev, label %if_cont

fullev:                                           ; preds = %body
  %0 = tail call addrspace(1) i64 @is_text(i32 %wstr)
  %cmpi5.not = icmp eq i64 %0, 0
  br i1 %cmpi5.not, label %if_cont, label %if_then

if_then:                                          ; preds = %fullev
  %1 = tail call addrspace(1) i32 @Free(i32 %wstr)
  br label %if_cont

if_cont:                                          ; preds = %if_then, %fullev, %body
  ret void
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
