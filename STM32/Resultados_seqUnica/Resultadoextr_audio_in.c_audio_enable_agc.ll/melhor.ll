; ModuleID = 'angha-ll-stm32f1/extr_audio_in.c_audio_enable_agc.ll'
source_filename = "out/extr_audio_in.c_audio_enable_agc.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"audio_in:init"(ptr writeonly captures(none) initializes((0, 4), (8, 16)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  %geprunning = getelementptr inbounds nuw i8, ptr %_this, i32 8
  store i64 0, ptr %geprunning, align 8
  ret void
}

declare i32 @audio_dsp_set_agc(ptr) local_unnamed_addr addrspace(1) #1

define void @audio_enable_agc(ptr %audio, i32 %enable) local_unnamed_addr addrspace(1) #1 {
body:
  %agc_enable3 = load i32, ptr %audio, align 4
  %cmpi.not = icmp eq i32 %agc_enable3, %enable
  br i1 %cmpi.not, label %if_cont14, label %if_then

if_then:                                          ; preds = %body
  store i32 %enable, ptr %audio, align 4
  %running = getelementptr inbounds nuw i8, ptr %audio, i32 8
  %running9 = load i64, ptr %running, align 8
  %cmpi10.not = icmp eq i64 %running9, 0
  br i1 %cmpi10.not, label %if_cont14, label %if_then11

if_then11:                                        ; preds = %if_then
  %0 = tail call addrspace(1) i32 @audio_dsp_set_agc(ptr nonnull %audio)
  br label %if_cont14

if_cont14:                                        ; preds = %if_then11, %if_then, %body
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
