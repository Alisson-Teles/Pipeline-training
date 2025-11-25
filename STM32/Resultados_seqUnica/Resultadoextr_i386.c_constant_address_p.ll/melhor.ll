; ModuleID = 'angha-ll-stm32f1/extr_i386.c_constant_address_p.ll'
source_filename = "out/extr_i386.c_constant_address_p.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@Pmode = local_unnamed_addr global i32 0

declare i64 @CONSTANT_P(i32) local_unnamed_addr addrspace(1) #0

declare i64 @legitimate_address_p(i32, i32, i32) local_unnamed_addr addrspace(1) #0

define range(i32 0, 2) i32 @constant_address_p(i32 %x) local_unnamed_addr addrspace(1) #0 {
body:
  %0 = tail call addrspace(1) i64 @CONSTANT_P(i32 %x)
  %cmpi.not = icmp eq i64 %0, 0
  br i1 %cmpi.not, label %phiblock, label %fullev

fullev:                                           ; preds = %body
  %Pmode = load i32, ptr @Pmode, align 4
  %1 = tail call addrspace(1) i64 @legitimate_address_p(i32 %Pmode, i32 %x, i32 1)
  %cmpi4 = icmp ne i64 %1, 0
  %2 = zext i1 %cmpi4 to i32
  br label %phiblock

phiblock:                                         ; preds = %fullev, %body
  %phi = phi i32 [ 0, %body ], [ %2, %fullev ]
  ret i32 %phi
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
