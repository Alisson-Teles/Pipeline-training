; ModuleID = 'angha-ll-stm32f1/extr_idt77252.c_fill_scd.ll'
source_filename = "out/extr_idt77252.c_fill_scd.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"scq_info:init"(ptr writeonly captures(none) initializes((0, 4), (8, 16)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  %gepscd = getelementptr inbounds nuw i8, ptr %_this, i32 8
  store i64 0, ptr %gepscd, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"idt77252_dev:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @write_sram(ptr, i64, i32) local_unnamed_addr addrspace(1) #1

define void @fill_scd(ptr %card, ptr readonly captures(none) %scq, i32 %class) local_unnamed_addr addrspace(1) #1 {
body:
  %scd = getelementptr inbounds nuw i8, ptr %scq, i32 8
  %scd5 = load i64, ptr %scd, align 8
  %paddr7 = load i32, ptr %scq, align 4
  %0 = tail call addrspace(1) i32 @write_sram(ptr %card, i64 %scd5, i32 %paddr7)
  %scd11 = load i64, ptr %scd, align 8
  %binop = add i64 %scd11, 1
  %1 = tail call addrspace(1) i32 @write_sram(ptr %card, i64 %binop, i32 0)
  %scd15 = load i64, ptr %scd, align 8
  %binop16 = add i64 %scd15, 2
  %2 = tail call addrspace(1) i32 @write_sram(ptr %card, i64 %binop16, i32 -1)
  %scd20 = load i64, ptr %scd, align 8
  %binop21 = add i64 %scd20, 3
  %3 = tail call addrspace(1) i32 @write_sram(ptr %card, i64 %binop21, i32 0)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
