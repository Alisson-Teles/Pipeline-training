; ModuleID = 'angha-ll-stm32f1/extr_..utildarray.h_darray_insert_darray.ll'
source_filename = "out/extr_..utildarray.h_darray_insert_darray.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"darray:init"(ptr writeonly captures(none) initializes((0, 8)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  %geparray = getelementptr inbounds nuw i8, ptr %_this, i32 4
  store i32 0, ptr %geparray, align 4
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @darray_insert_array(i32 zeroext, ptr, i32 zeroext, i32, i32) local_unnamed_addr addrspace(1) #1

define void @darray_insert_darray(i32 zeroext %element_size, ptr %dst, i32 zeroext %idx, ptr readonly captures(none) %da) local_unnamed_addr addrspace(1) #1 {
body:
  %array = getelementptr inbounds nuw i8, ptr %da, i32 4
  %array8 = load i32, ptr %array, align 4
  %num10 = load i32, ptr %da, align 4
  %0 = tail call addrspace(1) i32 @darray_insert_array(i32 zeroext %element_size, ptr %dst, i32 zeroext %idx, i32 %array8, i32 %num10)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
