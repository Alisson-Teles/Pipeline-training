; ModuleID = 'angha-ll-stm32f1/extr_thinkpad_acpi.c_hotkey_recommended_mask_show.ll'
source_filename = "out/extr_thinkpad_acpi.c_hotkey_recommended_mask_show.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@PAGE_SIZE = local_unnamed_addr global i32 0
@hotkey_all_mask = local_unnamed_addr global i32 0
@hotkey_reserved_mask = local_unnamed_addr global i32 0
@hotkey_source_mask = local_unnamed_addr global i32 0
@conststr = private unnamed_addr constant [7 x i8] c"0x%08x\0A"

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

declare i32 @snprintf(ptr, i32, ptr, i32, i32 zeroext, i32 zeroext) local_unnamed_addr addrspace(1) #1

define i32 @hotkey_recommended_mask_show(ptr readnone captures(none) %dev, ptr readnone captures(none) %attr, ptr %buf, i32 zeroext %buf.size) local_unnamed_addr addrspace(1) #1 {
body:
  %PAGE_SIZE = load i32, ptr @PAGE_SIZE, align 4
  %hotkey_all_mask = load i32, ptr @hotkey_all_mask, align 4
  %hotkey_source_mask = load i32, ptr @hotkey_source_mask, align 4
  %binop = or i32 %hotkey_source_mask, %hotkey_all_mask
  %hotkey_reserved_mask = load i32, ptr @hotkey_reserved_mask, align 4
  %neg = xor i32 %hotkey_reserved_mask, -1
  %binop6 = and i32 %binop, %neg
  %0 = tail call addrspace(1) i32 @snprintf(ptr %buf, i32 %PAGE_SIZE, ptr nonnull @conststr, i32 %binop6, i32 zeroext %buf.size, i32 zeroext 7)
  ret i32 %0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
