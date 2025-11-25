; ModuleID = 'angha-ll-stm32f1/extr_halffloat.c_npy_half_lt.ll'
source_filename = "out/extr_halffloat.c_npy_half_lt.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

declare i32 @npy_half_isnan(i32) local_unnamed_addr addrspace(1) #0

declare i64 @npy_half_lt_nonan(i32, i32) local_unnamed_addr addrspace(1) #0

define range(i32 0, 2) i32 @npy_half_lt(i32 %h1, i32 %h2) local_unnamed_addr addrspace(1) #0 {
body:
  %0 = tail call addrspace(1) i32 @npy_half_isnan(i32 %h1)
  %cmpi = icmp eq i32 %0, 0
  br i1 %cmpi, label %fullev, label %phiblock8

fullev:                                           ; preds = %body
  %1 = tail call addrspace(1) i32 @npy_half_isnan(i32 %h2)
  %cmpi5 = icmp eq i32 %1, 0
  br i1 %cmpi5, label %fullev7, label %phiblock8

fullev7:                                          ; preds = %fullev
  %2 = tail call addrspace(1) i64 @npy_half_lt_nonan(i32 %h1, i32 %h2)
  %cmpi12 = icmp ne i64 %2, 0
  %3 = zext i1 %cmpi12 to i32
  br label %phiblock8

phiblock8:                                        ; preds = %fullev7, %fullev, %body
  %phi9 = phi i32 [ 0, %fullev ], [ %3, %fullev7 ], [ 0, %body ]
  ret i32 %phi9
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
