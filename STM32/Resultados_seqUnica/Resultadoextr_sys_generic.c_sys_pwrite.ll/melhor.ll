; ModuleID = 'angha-ll-stm32f1/extr_sys_generic.c_sys_pwrite.ll'
source_filename = "out/extr_sys_generic.c_sys_pwrite.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"thread:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"pwrite_args:init"(ptr writeonly captures(none) initializes((0, 16)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %_this, i8 0, i64 16, i1 false)
  ret void
}

declare i32 @kern_pwrite(ptr, i32, i32, i32, i32) local_unnamed_addr addrspace(1) #1

define i32 @sys_pwrite(ptr %td, ptr readonly captures(none) %uap) local_unnamed_addr addrspace(1) #1 {
body:
  %fd = getelementptr inbounds nuw i8, ptr %uap, i32 12
  %fd4 = load i32, ptr %fd, align 4
  %buf = getelementptr inbounds nuw i8, ptr %uap, i32 8
  %buf6 = load i32, ptr %buf, align 4
  %nbyte = getelementptr inbounds nuw i8, ptr %uap, i32 4
  %nbyte8 = load i32, ptr %nbyte, align 4
  %offset10 = load i32, ptr %uap, align 4
  %0 = tail call addrspace(1) i32 @kern_pwrite(ptr %td, i32 %fd4, i32 %buf6, i32 %nbyte8, i32 %offset10)
  ret i32 %0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
