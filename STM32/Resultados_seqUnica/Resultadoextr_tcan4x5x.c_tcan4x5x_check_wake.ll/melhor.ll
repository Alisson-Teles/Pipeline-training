; ModuleID = 'angha-ll-stm32f1/extr_tcan4x5x.c_tcan4x5x_check_wake.ll'
source_filename = "out/extr_tcan4x5x.c_tcan4x5x_check_wake.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"tcan4x5x_priv:init"(ptr writeonly captures(none) initializes((0, 16)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %_this, i8 0, i64 16, i1 false)
  ret void
}

declare i32 @gpiod_get_value(i64) local_unnamed_addr addrspace(1) #1

declare i32 @gpiod_set_value(i64, i32) local_unnamed_addr addrspace(1) #1

declare i32 @usleep_range(i32, i32) local_unnamed_addr addrspace(1) #1

define void @tcan4x5x_check_wake(ptr readonly captures(none) %priv) local_unnamed_addr addrspace(1) #1 {
body:
  %device_state_gpio = getelementptr inbounds nuw i8, ptr %priv, i32 8
  %device_state_gpio2 = load i64, ptr %device_state_gpio, align 8
  %cmpi.not = icmp eq i64 %device_state_gpio2, 0
  br i1 %cmpi.not, label %if_cont19, label %if_cont

if_cont:                                          ; preds = %body
  %0 = tail call addrspace(1) i32 @gpiod_get_value(i64 %device_state_gpio2)
  %1 = icmp ne i32 %0, 0
  %device_wake_gpio7 = load i64, ptr %priv, align 8
  %cmpi8.not = icmp ne i64 %device_wake_gpio7, 0
  %spec.select = select i1 %cmpi8.not, i1 %1, i1 false
  br i1 %spec.select, label %if_then11, label %if_cont19

if_then11:                                        ; preds = %if_cont
  %2 = tail call addrspace(1) i32 @gpiod_set_value(i64 %device_wake_gpio7, i32 0)
  %3 = tail call addrspace(1) i32 @usleep_range(i32 5, i32 50)
  %device_wake_gpio17 = load i64, ptr %priv, align 8
  %4 = tail call addrspace(1) i32 @gpiod_set_value(i64 %device_wake_gpio17, i32 1)
  br label %if_cont19

if_cont19:                                        ; preds = %body, %if_then11, %if_cont
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
