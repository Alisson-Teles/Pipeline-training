; ModuleID = 'angha-ll-stm32f1/extr_write_sltg.c_init_sltg_data.ll'
source_filename = "out/extr_write_sltg.c_init_sltg_data.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"sltg_data:init"(ptr writeonly captures(none) initializes((0, 16)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %_this, i8 0, i64 16, i1 false)
  ret void
}

declare i32 @xmalloc(i32) local_unnamed_addr addrspace(1) #1

define void @init_sltg_data(ptr writeonly captures(none) initializes((0, 16)) %data) local_unnamed_addr addrspace(1) #1 {
body:
  %size = getelementptr inbounds nuw i8, ptr %data, i32 8
  store i64 0, ptr %size, align 8
  store i32 16, ptr %data, align 4
  %data4 = getelementptr inbounds nuw i8, ptr %data, i32 4
  %0 = tail call addrspace(1) i32 @xmalloc(i32 16)
  store i32 %0, ptr %data4, align 4
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
