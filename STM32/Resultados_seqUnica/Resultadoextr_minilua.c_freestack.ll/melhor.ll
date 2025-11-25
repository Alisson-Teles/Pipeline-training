; ModuleID = 'angha-ll-stm32f1/extr_minilua.c_freestack.ll'
source_filename = "out/extr_minilua.c_freestack.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@CallInfo = local_unnamed_addr global i32 0
@TValue = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"TYPE_5__:init"(ptr writeonly captures(none) initializes((0, 16)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %_this, i8 0, i64 16, i1 false)
  ret void
}

declare i32 @luaM_freearray(ptr, i32, i32, i32) local_unnamed_addr addrspace(1) #1

define void @freestack(ptr %L, ptr readonly captures(none) %L12) local_unnamed_addr addrspace(1) #1 {
body:
  %base_ci = getelementptr inbounds nuw i8, ptr %L12, i32 12
  %base_ci5 = load i32, ptr %base_ci, align 4
  %size_ci = getelementptr inbounds nuw i8, ptr %L12, i32 8
  %size_ci7 = load i32, ptr %size_ci, align 4
  %CallInfo = load i32, ptr @CallInfo, align 4
  %0 = tail call addrspace(1) i32 @luaM_freearray(ptr %L, i32 %base_ci5, i32 %size_ci7, i32 %CallInfo)
  %stack = getelementptr inbounds nuw i8, ptr %L12, i32 4
  %stack10 = load i32, ptr %stack, align 4
  %stacksize12 = load i32, ptr %L12, align 4
  %TValue = load i32, ptr @TValue, align 4
  %1 = tail call addrspace(1) i32 @luaM_freearray(ptr %L, i32 %stack10, i32 %stacksize12, i32 %TValue)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
