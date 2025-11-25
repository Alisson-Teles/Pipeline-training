; ModuleID = 'angha-ll-stm32f1/extr_hugetlb_cgroup.c_hugetlb_cgroup_from_task.ll'
source_filename = "out/extr_hugetlb_cgroup.c_hugetlb_cgroup_from_task.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

%hugetlb_cgroup = type { i32 }

@hugetlb_cgrp_id = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"task_struct:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"hugetlb_cgroup:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare %hugetlb_cgroup @hugetlb_cgroup_from_css(i32) local_unnamed_addr addrspace(1) #1

declare i32 @task_css(ptr, i32) local_unnamed_addr addrspace(1) #1

define %hugetlb_cgroup @hugetlb_cgroup_from_task(ptr %task) local_unnamed_addr addrspace(1) #1 {
body:
  %hugetlb_cgrp_id = load i32, ptr @hugetlb_cgrp_id, align 4
  %0 = tail call addrspace(1) i32 @task_css(ptr %task, i32 %hugetlb_cgrp_id)
  %1 = tail call addrspace(1) %hugetlb_cgroup @hugetlb_cgroup_from_css(i32 %0)
  ret %hugetlb_cgroup %1
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
