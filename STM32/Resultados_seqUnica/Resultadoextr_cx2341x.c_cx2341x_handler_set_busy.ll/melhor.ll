; ModuleID = 'angha-ll-stm32f1/extr_cx2341x.c_cx2341x_handler_set_busy.ll'
source_filename = "out/extr_cx2341x.c_cx2341x_handler_set_busy.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"cx2341x_handler:init"(ptr writeonly captures(none) initializes((0, 36)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %_this, i8 0, i64 36, i1 false)
  ret void
}

declare i32 @v4l2_ctrl_grab(i32, i32) local_unnamed_addr addrspace(1) #1

define void @cx2341x_handler_set_busy(ptr readonly captures(none) %cxhdl, i32 %busy) local_unnamed_addr addrspace(1) #1 {
body:
  %audio_sampling_freq = getelementptr inbounds nuw i8, ptr %cxhdl, i32 32
  %audio_sampling_freq3 = load i32, ptr %audio_sampling_freq, align 4
  %0 = tail call addrspace(1) i32 @v4l2_ctrl_grab(i32 %audio_sampling_freq3, i32 %busy)
  %audio_encoding = getelementptr inbounds nuw i8, ptr %cxhdl, i32 28
  %audio_encoding6 = load i32, ptr %audio_encoding, align 4
  %1 = tail call addrspace(1) i32 @v4l2_ctrl_grab(i32 %audio_encoding6, i32 %busy)
  %audio_l2_bitrate = getelementptr inbounds nuw i8, ptr %cxhdl, i32 24
  %audio_l2_bitrate9 = load i32, ptr %audio_l2_bitrate, align 4
  %2 = tail call addrspace(1) i32 @v4l2_ctrl_grab(i32 %audio_l2_bitrate9, i32 %busy)
  %audio_ac3_bitrate = getelementptr inbounds nuw i8, ptr %cxhdl, i32 20
  %audio_ac3_bitrate12 = load i32, ptr %audio_ac3_bitrate, align 4
  %3 = tail call addrspace(1) i32 @v4l2_ctrl_grab(i32 %audio_ac3_bitrate12, i32 %busy)
  %stream_vbi_fmt = getelementptr inbounds nuw i8, ptr %cxhdl, i32 16
  %stream_vbi_fmt15 = load i32, ptr %stream_vbi_fmt, align 4
  %4 = tail call addrspace(1) i32 @v4l2_ctrl_grab(i32 %stream_vbi_fmt15, i32 %busy)
  %stream_type = getelementptr inbounds nuw i8, ptr %cxhdl, i32 12
  %stream_type18 = load i32, ptr %stream_type, align 4
  %5 = tail call addrspace(1) i32 @v4l2_ctrl_grab(i32 %stream_type18, i32 %busy)
  %video_bitrate_mode = getelementptr inbounds nuw i8, ptr %cxhdl, i32 8
  %video_bitrate_mode21 = load i32, ptr %video_bitrate_mode, align 4
  %6 = tail call addrspace(1) i32 @v4l2_ctrl_grab(i32 %video_bitrate_mode21, i32 %busy)
  %video_bitrate = getelementptr inbounds nuw i8, ptr %cxhdl, i32 4
  %video_bitrate24 = load i32, ptr %video_bitrate, align 4
  %7 = tail call addrspace(1) i32 @v4l2_ctrl_grab(i32 %video_bitrate24, i32 %busy)
  %video_bitrate_peak27 = load i32, ptr %cxhdl, align 4
  %8 = tail call addrspace(1) i32 @v4l2_ctrl_grab(i32 %video_bitrate_peak27, i32 %busy)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
