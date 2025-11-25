; ModuleID = 'angha-ll-stm32f1/extr_idset.c_idset_clear.ll'
source_filename = "out/extr_idset.c_idset_clear.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"idset:init"(ptr writeonly captures(none) initializes((0, 12)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  %gepbitmap = getelementptr inbounds nuw i8, ptr %_this, i32 8
  store i32 0, ptr %gepbitmap, align 4
  store i32 0, ptr %_this, align 4
  %gepnum_ssid = getelementptr inbounds nuw i8, ptr %_this, i32 4
  store i32 0, ptr %gepnum_ssid, align 4
  ret void
}

declare i32 @bitmap_size(i32, i32) local_unnamed_addr addrspace(1) #1

declare i32 @memset(i32, i32, i32) local_unnamed_addr addrspace(1) #1

define void @idset_clear(ptr readonly captures(none) %set) local_unnamed_addr addrspace(1) #1 {
body:
  %bitmap = getelementptr inbounds nuw i8, ptr %set, i32 8
  %bitmap2 = load i32, ptr %bitmap, align 4
  %num_ssid = getelementptr inbounds nuw i8, ptr %set, i32 4
  %num_ssid4 = load i32, ptr %num_ssid, align 4
  %num_id6 = load i32, ptr %set, align 4
  %0 = tail call addrspace(1) i32 @bitmap_size(i32 %num_ssid4, i32 %num_id6)
  %1 = tail call addrspace(1) i32 @memset(i32 %bitmap2, i32 0, i32 %0)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
