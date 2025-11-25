; ModuleID = 'angha-ll-stm32f1/extr_act_meta_skbtcindex.c_skbtcindex_check.ll'
source_filename = "out/extr_act_meta_skbtcindex.c_skbtcindex_check.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"tcf_meta_info:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"sk_buff:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @ife_check_meta_u16(i32, ptr) local_unnamed_addr addrspace(1) #1

define i32 @skbtcindex_check(ptr readonly captures(none) %skb, ptr %e) local_unnamed_addr addrspace(1) #1 {
body:
  %tc_index3 = load i32, ptr %skb, align 4
  %0 = tail call addrspace(1) i32 @ife_check_meta_u16(i32 %tc_index3, ptr %e)
  ret i32 %0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
