; ModuleID = 'angha-ll-stm32f1/extr_main.c_speakup_lock.ll'
source_filename = "out/extr_main.c_speakup_lock.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@key_speakup = local_unnamed_addr global i32 0
@spk_key_locked = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"vc_data:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none)
define void @speakup_lock(ptr readnone captures(none) %vc) local_unnamed_addr addrspace(1) #1 {
body:
  %spk_key_locked = load i32, ptr @spk_key_locked, align 4
  %cmpi = icmp eq i32 %spk_key_locked, 0
  %storemerge = select i1 %cmpi, i32 16, i32 0
  store i32 %storemerge, ptr @spk_key_locked, align 4
  store i32 %storemerge, ptr @key_speakup, align 4
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
