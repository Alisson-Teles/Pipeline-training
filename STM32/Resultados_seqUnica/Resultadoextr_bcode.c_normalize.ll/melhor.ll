; ModuleID = 'angha-ll-stm32f1/extr_bcode.c_normalize.ll'
source_filename = "out/extr_bcode.c_normalize.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"number:init"(ptr writeonly captures(none) initializes((0, 12)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  %gepnumber = getelementptr inbounds nuw i8, ptr %_this, i32 8
  store i32 0, ptr %gepnumber, align 4
  store i64 0, ptr %_this, align 8
  ret void
}

declare i32 @scale_number(i32, i64) local_unnamed_addr addrspace(1) #1

define void @normalize(ptr captures(none) %n, i64 %s) local_unnamed_addr addrspace(1) #1 {
body:
  %number = getelementptr inbounds nuw i8, ptr %n, i32 8
  %number3 = load i32, ptr %number, align 4
  %scale6 = load i64, ptr %n, align 8
  %binop = sub i64 %s, %scale6
  %0 = tail call addrspace(1) i32 @scale_number(i32 %number3, i64 %binop)
  store i64 %s, ptr %n, align 8
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
