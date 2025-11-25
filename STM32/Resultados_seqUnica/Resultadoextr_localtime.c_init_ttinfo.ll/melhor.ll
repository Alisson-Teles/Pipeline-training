; ModuleID = 'angha-ll-stm32f1/extr_localtime.c_init_ttinfo.ll'
source_filename = "out/extr_localtime.c_init_ttinfo.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"ttinfo:init"(ptr writeonly captures(none) initializes((0, 20)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %_this, i8 0, i64 20, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @init_ttinfo(ptr writeonly captures(none) initializes((0, 20)) %s, i32 %utoff, i32 %isdst, i32 %desigidx) local_unnamed_addr addrspace(1) #0 {
body:
  %tt_utoff = getelementptr inbounds nuw i8, ptr %s, i32 16
  store i32 %utoff, ptr %tt_utoff, align 4
  store i32 %isdst, ptr %s, align 4
  %tt_desigidx = getelementptr inbounds nuw i8, ptr %s, i32 4
  store i32 %desigidx, ptr %tt_desigidx, align 4
  %tt_ttisstd = getelementptr inbounds nuw i8, ptr %s, i32 8
  store i32 0, ptr %tt_ttisstd, align 4
  %tt_ttisut = getelementptr inbounds nuw i8, ptr %s, i32 12
  store i32 0, ptr %tt_ttisut, align 4
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
