; ModuleID = 'angha-ll-stm32f1/extr_pmbus_core.c_pmbus_data2reg_vid.ll'
source_filename = "out/extr_pmbus_core.c_pmbus_data2reg_vid.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"pmbus_sensor:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"pmbus_data:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i64 @DIV_ROUND_CLOSEST(i32, i32) local_unnamed_addr addrspace(1) #1

declare i64 @clamp_val(i64, i32, i32) local_unnamed_addr addrspace(1) #1

define i64 @pmbus_data2reg_vid(ptr readnone captures(none) %data, ptr readnone captures(none) %sensor, i64 %val) local_unnamed_addr addrspace(1) #1 {
body:
  %0 = tail call addrspace(1) i64 @clamp_val(i64 %val, i32 500, i32 1600)
  %1 = trunc i64 %0 to i32
  %2 = sub i32 1600, %1
  %trunc = mul i32 %2, 100
  %3 = tail call addrspace(1) i64 @DIV_ROUND_CLOSEST(i32 %trunc, i32 625)
  %binop7 = add i64 %3, 2
  ret i64 %binop7
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
