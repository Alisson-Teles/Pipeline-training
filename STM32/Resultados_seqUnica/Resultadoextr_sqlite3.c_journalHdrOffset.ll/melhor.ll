; ModuleID = 'angha-ll-stm32f1/extr_sqlite3.c_journalHdrOffset.ll'
source_filename = "out/extr_sqlite3.c_journalHdrOffset.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"TYPE_4__:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @JOURNAL_HDR_SZ(ptr) local_unnamed_addr addrspace(1) #1

declare i32 @assert(i32) local_unnamed_addr addrspace(1) #1

define i32 @journalHdrOffset(ptr %pPager) local_unnamed_addr addrspace(1) #1 {
body:
  %journalOff2 = load i32, ptr %pPager, align 4
  %cmpi.not = icmp eq i32 %journalOff2, 0
  br i1 %cmpi.not, label %if_cont, label %if_then

if_then:                                          ; preds = %body
  %binop = add i32 %journalOff2, -1
  %0 = tail call addrspace(1) i32 @JOURNAL_HDR_SZ(ptr nonnull %pPager)
  %binop6 = sdiv i32 %binop, %0
  %binop7 = add i32 %binop6, 1
  %1 = tail call addrspace(1) i32 @JOURNAL_HDR_SZ(ptr nonnull %pPager)
  %binop9 = mul i32 %binop7, %1
  br label %if_cont

if_cont:                                          ; preds = %if_then, %body
  %offset.0 = phi i32 [ %binop9, %if_then ], [ 0, %body ]
  %2 = tail call addrspace(1) i32 @JOURNAL_HDR_SZ(ptr nonnull %pPager)
  %binop12 = srem i32 %offset.0, %2
  %cmpi13 = icmp eq i32 %binop12, 0
  %zext = zext i1 %cmpi13 to i32
  %3 = tail call addrspace(1) i32 @assert(i32 %zext)
  %cmpi16 = icmp sge i32 %offset.0, %journalOff2
  %zext17 = zext i1 %cmpi16 to i32
  %4 = tail call addrspace(1) i32 @assert(i32 %zext17)
  %binop20 = sub i32 %offset.0, %journalOff2
  %5 = tail call addrspace(1) i32 @JOURNAL_HDR_SZ(ptr nonnull %pPager)
  %cmpi22 = icmp slt i32 %binop20, %5
  %zext23 = zext i1 %cmpi22 to i32
  %6 = tail call addrspace(1) i32 @assert(i32 %zext23)
  ret i32 %offset.0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
