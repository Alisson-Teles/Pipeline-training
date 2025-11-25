; ModuleID = 'angha-ll-stm32f1/extr_tc-mips.c_normalize_constant_expr.ll'
source_filename = "out/extr_tc-mips.c_normalize_constant_expr.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@O_constant = local_unnamed_addr global i64 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"TYPE_3__:init"(ptr writeonly captures(none) initializes((0, 12)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  %gepX_add_number = getelementptr inbounds nuw i8, ptr %_this, i32 8
  store i32 0, ptr %gepX_add_number, align 4
  store i64 0, ptr %_this, align 8
  ret void
}

declare i64 @IS_ZEXT_32BIT_NUM(i32) local_unnamed_addr addrspace(1) #1

define void @normalize_constant_expr(ptr readonly captures(none) %ex) local_unnamed_addr addrspace(1) #1 {
body:
  %X_op2 = load i64, ptr %ex, align 8
  %O_constant = load i64, ptr @O_constant, align 8
  %cmpi = icmp eq i64 %X_op2, %O_constant
  br i1 %cmpi, label %fullev, label %if_cont

fullev:                                           ; preds = %body
  %X_add_number = getelementptr inbounds nuw i8, ptr %ex, i32 8
  %X_add_number4 = load i32, ptr %X_add_number, align 4
  %0 = tail call addrspace(1) i64 @IS_ZEXT_32BIT_NUM(i32 %X_add_number4)
  br label %if_cont

if_cont:                                          ; preds = %fullev, %body
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
