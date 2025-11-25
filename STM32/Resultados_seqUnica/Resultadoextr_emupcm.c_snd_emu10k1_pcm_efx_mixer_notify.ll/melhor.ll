; ModuleID = 'angha-ll-stm32f1/extr_emupcm.c_snd_emu10k1_pcm_efx_mixer_notify.ll'
source_filename = "out/extr_emupcm.c_snd_emu10k1_pcm_efx_mixer_notify.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"snd_emu10k1:init"(ptr writeonly captures(none) initializes((0, 12)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  %gepctl_efx_send_routing = getelementptr inbounds nuw i8, ptr %_this, i32 8
  store i32 0, ptr %gepctl_efx_send_routing, align 4
  %gepctl_efx_send_volume = getelementptr inbounds nuw i8, ptr %_this, i32 4
  store i32 0, ptr %gepctl_efx_send_volume, align 4
  ret void
}

declare i32 @snd_emu10k1_pcm_mixer_notify1(ptr, i32, i32, i32) local_unnamed_addr addrspace(1) #1

define void @snd_emu10k1_pcm_efx_mixer_notify(ptr %emu, i32 %idx, i32 %activate) local_unnamed_addr addrspace(1) #1 {
body:
  %ctl_efx_send_routing = getelementptr inbounds nuw i8, ptr %emu, i32 8
  %ctl_efx_send_routing5 = load i32, ptr %ctl_efx_send_routing, align 4
  %0 = tail call addrspace(1) i32 @snd_emu10k1_pcm_mixer_notify1(ptr %emu, i32 %ctl_efx_send_routing5, i32 %idx, i32 %activate)
  %ctl_efx_send_volume = getelementptr inbounds nuw i8, ptr %emu, i32 4
  %ctl_efx_send_volume10 = load i32, ptr %ctl_efx_send_volume, align 4
  %1 = tail call addrspace(1) i32 @snd_emu10k1_pcm_mixer_notify1(ptr %emu, i32 %ctl_efx_send_volume10, i32 %idx, i32 %activate)
  %ctl_efx_attn15 = load i32, ptr %emu, align 4
  %2 = tail call addrspace(1) i32 @snd_emu10k1_pcm_mixer_notify1(ptr nonnull %emu, i32 %ctl_efx_attn15, i32 %idx, i32 %activate)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
