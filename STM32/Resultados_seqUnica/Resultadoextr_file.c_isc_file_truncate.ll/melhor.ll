; ModuleID = 'angha-ll-stm32f1/extr_file.c_isc_file_truncate.ll'
source_filename = "out/extr_file.c_isc_file_truncate.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@ISC_R_SUCCESS = local_unnamed_addr global i32 0
@errno = local_unnamed_addr global i32 0

declare i32 @isc__errno2result(i32) local_unnamed_addr addrspace(1) #0

declare i64 @truncate(ptr, i32, i32 zeroext) local_unnamed_addr addrspace(1) #0

define i32 @isc_file_truncate(ptr %filename, i32 %size, i32 zeroext %filename.size) local_unnamed_addr addrspace(1) #0 {
body:
  %ISC_R_SUCCESS = load i32, ptr @ISC_R_SUCCESS, align 4
  %0 = tail call addrspace(1) i64 @truncate(ptr %filename, i32 %size, i32 zeroext %filename.size)
  %cmpi = icmp slt i64 %0, 0
  br i1 %cmpi, label %if_then, label %if_cont

if_then:                                          ; preds = %body
  %errno = load i32, ptr @errno, align 4
  %1 = tail call addrspace(1) i32 @isc__errno2result(i32 %errno)
  br label %if_cont

if_cont:                                          ; preds = %if_then, %body
  %result.0 = phi i32 [ %1, %if_then ], [ %ISC_R_SUCCESS, %body ]
  ret i32 %result.0
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
