; ModuleID = 'angha-ll-stm32f1/extr_thunderx2_pmu.c_alloc_counter.ll'
source_filename = "out/extr_thunderx2_pmu.c_alloc_counter.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@ENOSPC = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"tx2_uncore_pmu:init"(ptr writeonly captures(none) initializes((0, 8)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  %gepactive_counters = getelementptr inbounds nuw i8, ptr %_this, i32 4
  store i32 0, ptr %gepactive_counters, align 4
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @find_first_zero_bit(i32, i32) local_unnamed_addr addrspace(1) #1

declare i32 @set_bit(i32, i32) local_unnamed_addr addrspace(1) #1

define i32 @alloc_counter(ptr readonly captures(none) %tx2_pmu) local_unnamed_addr addrspace(1) #1 {
body:
  %active_counters = getelementptr inbounds nuw i8, ptr %tx2_pmu, i32 4
  %active_counters2 = load i32, ptr %active_counters, align 4
  %max_counters4 = load i32, ptr %tx2_pmu, align 4
  %0 = tail call addrspace(1) i32 @find_first_zero_bit(i32 %active_counters2, i32 %max_counters4)
  %max_counters8 = load i32, ptr %tx2_pmu, align 4
  %cmpi = icmp eq i32 %0, %max_counters8
  br i1 %cmpi, label %if_then, label %if_cont

common.ret:                                       ; preds = %if_cont, %if_then
  %common.ret.op = phi i32 [ %binop, %if_then ], [ %0, %if_cont ]
  ret i32 %common.ret.op

if_then:                                          ; preds = %body
  %ENOSPC = load i32, ptr @ENOSPC, align 4
  %binop = sub i32 0, %ENOSPC
  br label %common.ret

if_cont:                                          ; preds = %body
  %active_counters12 = load i32, ptr %active_counters, align 4
  %1 = tail call addrspace(1) i32 @set_bit(i32 %0, i32 %active_counters12)
  br label %common.ret
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
