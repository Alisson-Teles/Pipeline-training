; ModuleID = 'angha-ll-stm32f1/extr_osk5912.c_osk_tlv320aic23_init.ll'
source_filename = "out/extr_osk5912.c_osk_tlv320aic23_init.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@audio_map = local_unnamed_addr global i32 0
@tlv320aic23_dapm_widgets = local_unnamed_addr global i32 0
@conststr = private unnamed_addr constant [14 x i8] c"Headphone Jack"
@conststr.1 = private unnamed_addr constant [7 x i8] c"Line In"
@conststr.2 = private unnamed_addr constant [8 x i8] c"Mic Jack"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"snd_soc_codec:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @ARRAY_SIZE(i32) local_unnamed_addr addrspace(1) #1

declare i32 @snd_soc_dapm_add_routes(ptr, i32, i32) local_unnamed_addr addrspace(1) #1

declare i32 @snd_soc_dapm_enable_pin(ptr, ptr, i32 zeroext) local_unnamed_addr addrspace(1) #1

declare i32 @snd_soc_dapm_new_controls(ptr, i32, i32) local_unnamed_addr addrspace(1) #1

declare i32 @snd_soc_dapm_sync(ptr) local_unnamed_addr addrspace(1) #1

define noundef i32 @osk_tlv320aic23_init(ptr %codec) local_unnamed_addr addrspace(1) #1 {
body:
  %tlv320aic23_dapm_widgets = load i32, ptr @tlv320aic23_dapm_widgets, align 4
  %0 = tail call addrspace(1) i32 @ARRAY_SIZE(i32 %tlv320aic23_dapm_widgets)
  %1 = tail call addrspace(1) i32 @snd_soc_dapm_new_controls(ptr %codec, i32 %tlv320aic23_dapm_widgets, i32 %0)
  %audio_map = load i32, ptr @audio_map, align 4
  %2 = tail call addrspace(1) i32 @ARRAY_SIZE(i32 %audio_map)
  %3 = tail call addrspace(1) i32 @snd_soc_dapm_add_routes(ptr %codec, i32 %audio_map, i32 %2)
  %4 = tail call addrspace(1) i32 @snd_soc_dapm_enable_pin(ptr %codec, ptr nonnull @conststr, i32 zeroext 14)
  %5 = tail call addrspace(1) i32 @snd_soc_dapm_enable_pin(ptr %codec, ptr nonnull @conststr.1, i32 zeroext 7)
  %6 = tail call addrspace(1) i32 @snd_soc_dapm_enable_pin(ptr %codec, ptr nonnull @conststr.2, i32 zeroext 8)
  %7 = tail call addrspace(1) i32 @snd_soc_dapm_sync(ptr %codec)
  ret i32 0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
