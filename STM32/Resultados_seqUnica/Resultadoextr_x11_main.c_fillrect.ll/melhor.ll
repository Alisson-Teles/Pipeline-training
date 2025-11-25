; ModuleID = 'angha-ll-stm32f1/extr_x11_main.c_fillrect.ll'
source_filename = "out/extr_x11_main.c_fillrect.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@xdpy = local_unnamed_addr global i32 0
@xgc = local_unnamed_addr global i32 0
@xwin = local_unnamed_addr global i32 0

declare i32 @XFillRectangle(i32, i32, i32, i32, i32, i32, i32) local_unnamed_addr addrspace(1) #0

define void @fillrect(i32 %x, i32 %y, i32 %w, i32 %h) local_unnamed_addr addrspace(1) #0 {
body:
  %cmpi = icmp sgt i32 %w, 0
  %cmpi7 = icmp sgt i32 %h, 0
  %phi = select i1 %cmpi, i1 %cmpi7, i1 false
  br i1 %phi, label %if_then, label %if_cont

if_then:                                          ; preds = %body
  %xdpy = load i32, ptr @xdpy, align 4
  %xwin = load i32, ptr @xwin, align 4
  %xgc = load i32, ptr @xgc, align 4
  %0 = tail call addrspace(1) i32 @XFillRectangle(i32 %xdpy, i32 %xwin, i32 %xgc, i32 %x, i32 %y, i32 %w, i32 %h)
  br label %if_cont

if_cont:                                          ; preds = %if_then, %body
  ret void
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
