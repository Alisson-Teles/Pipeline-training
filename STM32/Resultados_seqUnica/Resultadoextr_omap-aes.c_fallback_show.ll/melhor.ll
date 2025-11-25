; ModuleID = 'angha-ll-stm32f1/extr_omap-aes.c_fallback_show.ll'
source_filename = "out/extr_omap-aes.c_fallback_show.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@aes_fallback_sz = local_unnamed_addr global i32 0
@conststr = private unnamed_addr constant [3 x i8] c"%d\0A"

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

declare i32 @sprintf(ptr, ptr, i32, i32 zeroext, i32 zeroext) local_unnamed_addr addrspace(1) #1

define i32 @fallback_show(ptr readnone captures(none) %dev, ptr readnone captures(none) %attr, ptr %buf, i32 zeroext %buf.size) local_unnamed_addr addrspace(1) #1 {
body:
  %aes_fallback_sz = load i32, ptr @aes_fallback_sz, align 4
  %0 = tail call addrspace(1) i32 @sprintf(ptr %buf, ptr nonnull @conststr, i32 %aes_fallback_sz, i32 zeroext %buf.size, i32 zeroext 3)
  ret i32 %0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
