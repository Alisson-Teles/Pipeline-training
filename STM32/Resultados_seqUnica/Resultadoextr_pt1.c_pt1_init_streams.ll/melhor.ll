; ModuleID = 'angha-ll-stm32f1/extr_pt1.c_pt1_init_streams.ll'
source_filename = "out/extr_pt1.c_pt1_init_streams.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@PT1_NR_ADAPS = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"pt1:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @pt1_set_stream(ptr, i32, i32) local_unnamed_addr addrspace(1) #1

define void @pt1_init_streams(ptr %pt1) local_unnamed_addr addrspace(1) #1 {
body:
  %PT1_NR_ADAPS4 = load i32, ptr @PT1_NR_ADAPS, align 4
  %cmpi5 = icmp sgt i32 %PT1_NR_ADAPS4, 0
  br i1 %cmpi5, label %while_body, label %while_end

while_body:                                       ; preds = %while_body, %body
  %i.06 = phi i32 [ %binop, %while_body ], [ 0, %body ]
  %0 = tail call addrspace(1) i32 @pt1_set_stream(ptr %pt1, i32 %i.06, i32 0)
  %binop = add nuw nsw i32 %i.06, 1
  %PT1_NR_ADAPS = load i32, ptr @PT1_NR_ADAPS, align 4
  %cmpi = icmp slt i32 %binop, %PT1_NR_ADAPS
  br i1 %cmpi, label %while_body, label %while_end

while_end:                                        ; preds = %while_body, %body
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
