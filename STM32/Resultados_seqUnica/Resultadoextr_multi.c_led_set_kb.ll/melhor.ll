; ModuleID = 'angha-ll-stm32f1/extr_multi.c_led_set_kb.ll'
source_filename = "out/extr_multi.c_led_set_kb.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@E6 = local_unnamed_addr global i32 0
@USB_LED_CAPS_LOCK = local_unnamed_addr global i32 0

declare i64 @IS_LED_ON(i32, i32) local_unnamed_addr addrspace(1) #0

declare i32 @led_set_user(i32) local_unnamed_addr addrspace(1) #0

declare i32 @writePinHigh(i32) local_unnamed_addr addrspace(1) #0

declare i32 @writePinLow(i32) local_unnamed_addr addrspace(1) #0

define void @led_set_kb(i32 %usb_led) local_unnamed_addr addrspace(1) #0 {
body:
  %USB_LED_CAPS_LOCK = load i32, ptr @USB_LED_CAPS_LOCK, align 4
  %0 = tail call addrspace(1) i64 @IS_LED_ON(i32 %usb_led, i32 %USB_LED_CAPS_LOCK)
  %cmpi.not = icmp eq i64 %0, 0
  %E63 = load i32, ptr @E6, align 4
  br i1 %cmpi.not, label %if_else, label %if_then

if_then:                                          ; preds = %body
  %1 = tail call addrspace(1) i32 @writePinLow(i32 %E63)
  br label %if_cont

if_else:                                          ; preds = %body
  %2 = tail call addrspace(1) i32 @writePinHigh(i32 %E63)
  br label %if_cont

if_cont:                                          ; preds = %if_else, %if_then
  %3 = tail call addrspace(1) i32 @led_set_user(i32 %usb_led)
  ret void
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
