; ModuleID = 'angha-ll-stm32f1/extr_test-connect-unspecified.c_connect_6.ll'
source_filename = "out/extr_test-connect-unspecified.c_connect_6.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@UV_EADDRNOTAVAIL = local_unnamed_addr global i32 0

declare i32 @ASSERT(i32) local_unnamed_addr addrspace(1) #0

define void @connect_6(i32 %req, i32 %status) local_unnamed_addr addrspace(1) #0 {
body:
  %UV_EADDRNOTAVAIL = load i32, ptr @UV_EADDRNOTAVAIL, align 4
  %cmpi = icmp ne i32 %status, %UV_EADDRNOTAVAIL
  %zext = zext i1 %cmpi to i32
  %0 = tail call addrspace(1) i32 @ASSERT(i32 %zext)
  ret void
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
