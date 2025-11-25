; ModuleID = 'angha-ll-stm32f1/extr_xonar_dg_mixer.c_dg_control_filter.ll'
source_filename = "out/extr_xonar_dg_mixer.c_dg_control_filter.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@conststr = private unnamed_addr constant [16 x i8] c"Master Playback "

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"snd_kcontrol_new:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @strncmp(i32, ptr, i32, i32 zeroext) local_unnamed_addr addrspace(1) #1

define range(i32 0, 2) i32 @dg_control_filter(ptr readonly captures(none) %template) local_unnamed_addr addrspace(1) #1 {
body:
  %name2 = load i32, ptr %template, align 4
  %0 = tail call addrspace(1) i32 @strncmp(i32 %name2, ptr nonnull @conststr, i32 16, i32 zeroext 16)
  %cmpi = icmp eq i32 %0, 0
  %spec.select = zext i1 %cmpi to i32
  ret i32 %spec.select
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
