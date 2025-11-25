; ModuleID = 'angha-ll-stm32f1/extr_rtc-puv3.c_puv3_rtc_gettime.ll'
source_filename = "out/extr_rtc-puv3.c_puv3_rtc_gettime.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@RTC_RCNR = local_unnamed_addr global i32 0
@conststr = private unnamed_addr constant [16 x i8] c"read time %ptRr\0A"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"rtc_time:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
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

declare i32 @dev_dbg(ptr, ptr, ptr, i32 zeroext) local_unnamed_addr addrspace(1) #1

declare i32 @readl(i32) local_unnamed_addr addrspace(1) #1

declare i32 @rtc_time_to_tm(i32, ptr) local_unnamed_addr addrspace(1) #1

define noundef i32 @puv3_rtc_gettime(ptr %dev, ptr %rtc_tm) local_unnamed_addr addrspace(1) #1 {
body:
  %RTC_RCNR = load i32, ptr @RTC_RCNR, align 4
  %0 = tail call addrspace(1) i32 @readl(i32 %RTC_RCNR)
  %1 = tail call addrspace(1) i32 @rtc_time_to_tm(i32 %0, ptr %rtc_tm)
  %2 = tail call addrspace(1) i32 @dev_dbg(ptr %dev, ptr nonnull @conststr, ptr %rtc_tm, i32 zeroext 16)
  ret i32 0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
