; ModuleID = 'angha-ll-stm32f1/extr_task_policy.c_trace_resource_violation.ll'
source_filename = "out/extr_task_policy.c_trace_resource_violation.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@DBG_MACH = local_unnamed_addr global i32 0
@DBG_MACH_RESOURCE = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"ledger_entry_info:init"(ptr writeonly captures(none) initializes((0, 16)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %_this, i8 0, i64 16, i1 false)
  ret void
}

declare i32 @KDBG_CODE(i32, i32, i32) local_unnamed_addr addrspace(1) #1

declare i32 @KERNEL_DBG_IST_SANE(i32, i32, i32, i32, i32) local_unnamed_addr addrspace(1) #1

define void @trace_resource_violation(i32 %code, ptr readonly captures(none) %linfo) local_unnamed_addr addrspace(1) #1 {
body:
  %DBG_MACH = load i32, ptr @DBG_MACH, align 4
  %DBG_MACH_RESOURCE = load i32, ptr @DBG_MACH_RESOURCE, align 4
  %0 = tail call addrspace(1) i32 @KDBG_CODE(i32 %DBG_MACH, i32 %DBG_MACH_RESOURCE, i32 %code)
  %lei_balance = getelementptr inbounds nuw i8, ptr %linfo, i32 12
  %lei_balance4 = load i32, ptr %lei_balance, align 4
  %lei_last_refill = getelementptr inbounds nuw i8, ptr %linfo, i32 8
  %lei_last_refill6 = load i32, ptr %lei_last_refill, align 4
  %lei_limit = getelementptr inbounds nuw i8, ptr %linfo, i32 4
  %lei_limit8 = load i32, ptr %lei_limit, align 4
  %lei_refill_period10 = load i32, ptr %linfo, align 4
  %1 = tail call addrspace(1) i32 @KERNEL_DBG_IST_SANE(i32 %0, i32 %lei_balance4, i32 %lei_last_refill6, i32 %lei_limit8, i32 %lei_refill_period10)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
