; ModuleID = 'angha-ll-stm32f1/extr_btmutex.c_sqlite3BtreeEnterAll.ll'
source_filename = "out/extr_btmutex.c_sqlite3BtreeEnterAll.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"TYPE_4__:init"(ptr writeonly captures(none) initializes((0, 8)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i64 0, ptr %_this, align 8
  ret void
}

declare i32 @btreeEnterAll(ptr) local_unnamed_addr addrspace(1) #1

define void @sqlite3BtreeEnterAll(ptr %db) local_unnamed_addr addrspace(1) #1 {
body:
  %noSharedCache2 = load i64, ptr %db, align 8
  %cmpi = icmp eq i64 %noSharedCache2, 0
  br i1 %cmpi, label %if_then, label %if_cont

if_then:                                          ; preds = %body
  %0 = tail call addrspace(1) i32 @btreeEnterAll(ptr nonnull %db)
  br label %if_cont

if_cont:                                          ; preds = %if_then, %body
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
