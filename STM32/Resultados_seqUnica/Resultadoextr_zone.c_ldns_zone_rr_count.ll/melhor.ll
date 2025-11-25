; ModuleID = 'angha-ll-stm32f1/extr_zone.c_ldns_zone_rr_count.ll'
source_filename = "out/extr_zone.c_ldns_zone_rr_count.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"TYPE_3__:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare zeroext i32 @ldns_rr_list_rr_count(i32) local_unnamed_addr addrspace(1) #1

define zeroext i32 @ldns_zone_rr_count(ptr readonly captures(none) %z) local_unnamed_addr addrspace(1) #1 {
body:
  %_rrs2 = load i32, ptr %z, align 4
  %0 = tail call zeroext addrspace(1) i32 @ldns_rr_list_rr_count(i32 %_rrs2)
  ret i32 %0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
