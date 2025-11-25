; ModuleID = 'angha-ll-stm32f1/extr_map.c_atf_equal_map_iter_map_iter.ll'
source_filename = "out/extr_map.c_atf_equal_map_iter_map_iter.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"TYPE_4__:init"(ptr writeonly captures(none) initializes((0, 16)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %_this, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read)
define range(i32 0, 2) i32 @atf_equal_map_iter_map_iter(ptr readonly captures(none) %i1, ptr readonly captures(none) %i2) local_unnamed_addr addrspace(1) #1 {
body:
  %m_map3 = load i64, ptr %i1, align 8
  %m_map6 = load i64, ptr %i2, align 8
  %cmpi = icmp eq i64 %m_map3, %m_map6
  br i1 %cmpi, label %fullev, label %phiblock

fullev:                                           ; preds = %body
  %m_entry = getelementptr inbounds nuw i8, ptr %i1, i32 8
  %m_entry8 = load i64, ptr %m_entry, align 8
  %m_entry10 = getelementptr inbounds nuw i8, ptr %i2, i32 8
  %m_entry11 = load i64, ptr %m_entry10, align 8
  %cmpi12 = icmp eq i64 %m_entry8, %m_entry11
  %0 = zext i1 %cmpi12 to i32
  br label %phiblock

phiblock:                                         ; preds = %fullev, %body
  %phi = phi i32 [ 0, %body ], [ %0, %fullev ]
  ret i32 %phi
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
