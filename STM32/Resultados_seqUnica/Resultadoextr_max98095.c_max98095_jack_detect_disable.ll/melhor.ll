; ModuleID = 'angha-ll-stm32f1/extr_max98095.c_max98095_jack_detect_disable.ll'
source_filename = "out/extr_max98095.c_max98095_jack_detect_disable.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@M98095_089_JACK_DET_AUTO = local_unnamed_addr global i32 0
@conststr = private unnamed_addr constant [29 x i8] c"Failed to cfg auto detect %d\0A"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"snd_soc_component:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @dev_err(i32, ptr, i32, i32 zeroext) local_unnamed_addr addrspace(1) #1

declare i32 @snd_soc_component_write(ptr, i32, i32) local_unnamed_addr addrspace(1) #1

define i32 @max98095_jack_detect_disable(ptr %component) local_unnamed_addr addrspace(1) #1 {
body:
  %M98095_089_JACK_DET_AUTO = load i32, ptr @M98095_089_JACK_DET_AUTO, align 4
  %0 = tail call addrspace(1) i32 @snd_soc_component_write(ptr %component, i32 %M98095_089_JACK_DET_AUTO, i32 0)
  %cmpi = icmp slt i32 %0, 0
  br i1 %cmpi, label %if_then, label %common.ret

common.ret:                                       ; preds = %if_then, %body
  ret i32 %0

if_then:                                          ; preds = %body
  %dev4 = load i32, ptr %component, align 4
  %1 = tail call addrspace(1) i32 @dev_err(i32 %dev4, ptr nonnull @conststr, i32 %0, i32 zeroext 29)
  br label %common.ret
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
