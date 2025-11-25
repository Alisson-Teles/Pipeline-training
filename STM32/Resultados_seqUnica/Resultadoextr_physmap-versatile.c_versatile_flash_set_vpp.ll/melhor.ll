; ModuleID = 'angha-ll-stm32f1/extr_physmap-versatile.c_versatile_flash_set_vpp.ll'
source_filename = "out/extr_physmap-versatile.c_versatile_flash_set_vpp.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@VERSATILE_SYS_FLASH_OFFSET = local_unnamed_addr global i32 0
@syscon_regmap = local_unnamed_addr global i32 0
@conststr = private unnamed_addr constant [28 x i8] c"error setting Versatile VPP\0A"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"map_info:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @pr_err(ptr, i32 zeroext) local_unnamed_addr addrspace(1) #1

declare i32 @regmap_update_bits(i32, i32, i32, i32) local_unnamed_addr addrspace(1) #1

define void @versatile_flash_set_vpp(ptr readnone captures(none) %map, i32 %on) local_unnamed_addr addrspace(1) #1 {
body:
  %syscon_regmap = load i32, ptr @syscon_regmap, align 4
  %VERSATILE_SYS_FLASH_OFFSET = load i32, ptr @VERSATILE_SYS_FLASH_OFFSET, align 4
  %cmpi = icmp ne i32 %on, 0
  %zext = zext i1 %cmpi to i32
  %0 = tail call addrspace(1) i32 @regmap_update_bits(i32 %syscon_regmap, i32 %VERSATILE_SYS_FLASH_OFFSET, i32 1, i32 %zext)
  %cmpi6.not = icmp eq i32 %0, 0
  br i1 %cmpi6.not, label %if_cont, label %if_then

if_then:                                          ; preds = %body
  %1 = tail call addrspace(1) i32 @pr_err(ptr nonnull @conststr, i32 zeroext 28)
  br label %if_cont

if_cont:                                          ; preds = %if_then, %body
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
