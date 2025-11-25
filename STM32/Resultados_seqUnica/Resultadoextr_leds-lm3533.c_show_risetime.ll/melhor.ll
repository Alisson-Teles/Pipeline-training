; ModuleID = 'angha-ll-stm32f1/extr_leds-lm3533.c_show_risetime.ll'
source_filename = "out/extr_leds-lm3533.c_show_risetime.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@LM3533_REG_PATTERN_RISETIME_BASE = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"device_attribute:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"device:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @show_risefalltime(ptr, ptr, ptr, i32, i32 zeroext) local_unnamed_addr addrspace(1) #1

define i32 @show_risetime(ptr %dev, ptr %attr, ptr %buf, i32 zeroext %buf.size) local_unnamed_addr addrspace(1) #1 {
body:
  %LM3533_REG_PATTERN_RISETIME_BASE = load i32, ptr @LM3533_REG_PATTERN_RISETIME_BASE, align 4
  %0 = tail call addrspace(1) i32 @show_risefalltime(ptr %dev, ptr %attr, ptr %buf, i32 %LM3533_REG_PATTERN_RISETIME_BASE, i32 zeroext %buf.size)
  ret i32 %0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
