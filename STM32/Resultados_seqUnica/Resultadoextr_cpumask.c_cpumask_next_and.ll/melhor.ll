; ModuleID = 'angha-ll-stm32f1/extr_cpumask.c_cpumask_next_and.ll'
source_filename = "out/extr_cpumask.c_cpumask_next_and.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@nr_cpumask_bits = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"cpumask:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @cpumask_bits(ptr) local_unnamed_addr addrspace(1) #1

declare i32 @cpumask_check(i32) local_unnamed_addr addrspace(1) #1

declare i32 @find_next_and_bit(i32, i32, i32, i32) local_unnamed_addr addrspace(1) #1

define i32 @cpumask_next_and(i32 %n, ptr %src1p, ptr %src2p) local_unnamed_addr addrspace(1) #1 {
body:
  %cmpi.not = icmp eq i32 %n, -1
  br i1 %cmpi.not, label %if_cont, label %if_then

if_then:                                          ; preds = %body
  %0 = tail call addrspace(1) i32 @cpumask_check(i32 %n)
  br label %if_cont

if_cont:                                          ; preds = %if_then, %body
  %1 = tail call addrspace(1) i32 @cpumask_bits(ptr %src1p)
  %2 = tail call addrspace(1) i32 @cpumask_bits(ptr %src2p)
  %nr_cpumask_bits = load i32, ptr @nr_cpumask_bits, align 4
  %binop = add i32 %n, 1
  %3 = tail call addrspace(1) i32 @find_next_and_bit(i32 %1, i32 %2, i32 %nr_cpumask_bits, i32 %binop)
  ret i32 %3
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
