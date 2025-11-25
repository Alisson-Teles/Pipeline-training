; ModuleID = 'angha-ll-stm32f1/extr_......uwbuwb.h_uwb_dev_addr_print.ll'
source_filename = "out/extr_......uwbuwb.h_uwb_dev_addr_print.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"uwb_dev_addr:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare zeroext i32 @__uwb_addr_print(ptr, i32 zeroext, i32, i32, i32 zeroext) local_unnamed_addr addrspace(1) #1

define zeroext i32 @uwb_dev_addr_print(ptr %buf, i32 zeroext %buf_size, ptr readonly captures(none) %addr, i32 zeroext %buf.size) local_unnamed_addr addrspace(1) #1 {
body:
  %data8 = load i32, ptr %addr, align 4
  %0 = tail call zeroext addrspace(1) i32 @__uwb_addr_print(ptr %buf, i32 zeroext %buf_size, i32 %data8, i32 0, i32 zeroext %buf.size)
  ret i32 %0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
