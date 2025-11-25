; ModuleID = 'angha-ll-stm32f1/extr_qemu_fw_cfg.c_fw_cfg_showrev.ll'
source_filename = "out/extr_qemu_fw_cfg.c_fw_cfg_showrev.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@fw_cfg_rev = local_unnamed_addr global i32 0
@conststr = private unnamed_addr constant [3 x i8] c"%u\0A"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"kobject:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"attribute:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @sprintf(ptr, ptr, i32, i32 zeroext, i32 zeroext) local_unnamed_addr addrspace(1) #1

define i32 @fw_cfg_showrev(ptr readnone captures(none) %k, ptr readnone captures(none) %a, ptr %buf, i32 zeroext %buf.size) local_unnamed_addr addrspace(1) #1 {
body:
  %fw_cfg_rev = load i32, ptr @fw_cfg_rev, align 4
  %0 = tail call addrspace(1) i32 @sprintf(ptr %buf, ptr nonnull @conststr, i32 %fw_cfg_rev, i32 zeroext %buf.size, i32 zeroext 3)
  ret i32 %0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
