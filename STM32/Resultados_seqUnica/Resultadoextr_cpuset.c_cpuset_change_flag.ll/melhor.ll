; ModuleID = 'angha-ll-stm32f1/extr_cpuset.c_cpuset_change_flag.ll'
source_filename = "out/extr_cpuset.c_cpuset_change_flag.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"task_struct:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"cgroup_scanner:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @cgroup_cs(i32) local_unnamed_addr addrspace(1) #1

declare i32 @cpuset_update_task_spread_flag(i32, ptr) local_unnamed_addr addrspace(1) #1

define void @cpuset_change_flag(ptr %tsk, ptr readonly captures(none) %scan) local_unnamed_addr addrspace(1) #1 {
body:
  %cg3 = load i32, ptr %scan, align 4
  %0 = tail call addrspace(1) i32 @cgroup_cs(i32 %cg3)
  %1 = tail call addrspace(1) i32 @cpuset_update_task_spread_flag(i32 %0, ptr %tsk)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
