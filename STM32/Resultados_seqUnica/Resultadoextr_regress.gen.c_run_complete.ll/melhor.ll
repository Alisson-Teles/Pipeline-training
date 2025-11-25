; ModuleID = 'angha-ll-stm32f1/extr_regress.gen.c_run_complete.ll'
source_filename = "out/extr_regress.gen.c_run_complete.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"run:init"(ptr nocapture nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(8) initializes((0, 8)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  %gephow_set = getelementptr inbounds nuw i8, ptr %_this, i32 4
  store i32 0, ptr %gephow_set, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read)
define range(i32 -1, 1) i32 @run_complete(ptr nocapture nofree nonnull readonly align 4 captures(none) dereferenceable(8) %msg) local_unnamed_addr addrspace(1) #1 {
body:
  %how_set = getelementptr inbounds nuw i8, ptr %msg, i32 4
  %how_set2 = load i32, ptr %how_set, align 4
  %cmpi = icmp eq i32 %how_set2, 0
  %fixed_bytes_set4 = load i32, ptr %msg, align 4
  %cmpi5 = icmp eq i32 %fixed_bytes_set4, 0
  %narrow = select i1 %cmpi, i1 true, i1 %cmpi5
  %common.ret.op = sext i1 %narrow to i32
  ret i32 %common.ret.op
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
