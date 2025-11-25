; ModuleID = 'angha-ll-stm32f1/extr_obs-properties.c_frame_rate_data_free.ll'
source_filename = "out/extr_obs-properties.c_frame_rate_data_free.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"frame_rate_data:init"(ptr writeonly captures(none) initializes((0, 8)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  %gepextra_options = getelementptr inbounds nuw i8, ptr %_this, i32 4
  store i32 0, ptr %gepextra_options, align 4
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @da_free(i32) local_unnamed_addr addrspace(1) #1

declare i32 @frame_rate_data_options_free(ptr) local_unnamed_addr addrspace(1) #1

declare i32 @frame_rate_data_ranges_free(ptr) local_unnamed_addr addrspace(1) #1

define void @frame_rate_data_free(ptr %data) local_unnamed_addr addrspace(1) #1 {
body:
  %0 = tail call addrspace(1) i32 @frame_rate_data_options_free(ptr %data)
  %1 = tail call addrspace(1) i32 @frame_rate_data_ranges_free(ptr %data)
  %extra_options = getelementptr inbounds nuw i8, ptr %data, i32 4
  %extra_options4 = load i32, ptr %extra_options, align 4
  %2 = tail call addrspace(1) i32 @da_free(i32 %extra_options4)
  %ranges6 = load i32, ptr %data, align 4
  %3 = tail call addrspace(1) i32 @da_free(i32 %ranges6)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
