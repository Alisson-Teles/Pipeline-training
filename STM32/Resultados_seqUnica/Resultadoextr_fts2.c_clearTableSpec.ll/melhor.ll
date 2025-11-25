; ModuleID = 'angha-ll-stm32f1/extr_fts2.c_clearTableSpec.ll'
source_filename = "out/extr_fts2.c_clearTableSpec.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"TYPE_3__:init"(ptr writeonly captures(none) initializes((0, 12)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  %gepazColumn = getelementptr inbounds nuw i8, ptr %_this, i32 8
  store i32 0, ptr %gepazColumn, align 4
  %gepazContentColumn = getelementptr inbounds nuw i8, ptr %_this, i32 4
  store i32 0, ptr %gepazContentColumn, align 4
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @sqlite3_free(i32) local_unnamed_addr addrspace(1) #1

define void @clearTableSpec(ptr readonly captures(none) %p) local_unnamed_addr addrspace(1) #1 {
body:
  %azColumn = getelementptr inbounds nuw i8, ptr %p, i32 8
  %azColumn2 = load i32, ptr %azColumn, align 4
  %0 = tail call addrspace(1) i32 @sqlite3_free(i32 %azColumn2)
  %azContentColumn = getelementptr inbounds nuw i8, ptr %p, i32 4
  %azContentColumn4 = load i32, ptr %azContentColumn, align 4
  %1 = tail call addrspace(1) i32 @sqlite3_free(i32 %azContentColumn4)
  %azTokenizer6 = load i32, ptr %p, align 4
  %2 = tail call addrspace(1) i32 @sqlite3_free(i32 %azTokenizer6)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
