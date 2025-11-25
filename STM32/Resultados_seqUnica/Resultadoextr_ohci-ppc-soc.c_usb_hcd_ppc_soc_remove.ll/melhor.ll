; ModuleID = 'angha-ll-stm32f1/extr_ohci-ppc-soc.c_usb_hcd_ppc_soc_remove.ll'
source_filename = "out/extr_ohci-ppc-soc.c_usb_hcd_ppc_soc_remove.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@conststr = private unnamed_addr constant [32 x i8] c"stopping PPC-SOC USB Controller\0A"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"usb_hcd:init"(ptr writeonly captures(none) initializes((0, 12)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  %gepregs = getelementptr inbounds nuw i8, ptr %_this, i32 8
  store i32 0, ptr %gepregs, align 4
  store i32 0, ptr %_this, align 4
  %geprsrc_start = getelementptr inbounds nuw i8, ptr %_this, i32 4
  store i32 0, ptr %geprsrc_start, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"platform_device:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @iounmap(i32) local_unnamed_addr addrspace(1) #1

declare i32 @pr_debug(ptr, i32 zeroext) local_unnamed_addr addrspace(1) #1

declare i32 @release_mem_region(i32, i32) local_unnamed_addr addrspace(1) #1

declare i32 @usb_put_hcd(ptr) local_unnamed_addr addrspace(1) #1

declare i32 @usb_remove_hcd(ptr) local_unnamed_addr addrspace(1) #1

define void @usb_hcd_ppc_soc_remove(ptr %hcd, ptr readnone captures(none) %pdev) local_unnamed_addr addrspace(1) #1 {
body:
  %0 = tail call addrspace(1) i32 @usb_remove_hcd(ptr %hcd)
  %1 = tail call addrspace(1) i32 @pr_debug(ptr nonnull @conststr, i32 zeroext 32)
  %regs = getelementptr inbounds nuw i8, ptr %hcd, i32 8
  %regs4 = load i32, ptr %regs, align 4
  %2 = tail call addrspace(1) i32 @iounmap(i32 %regs4)
  %rsrc_start = getelementptr inbounds nuw i8, ptr %hcd, i32 4
  %rsrc_start6 = load i32, ptr %rsrc_start, align 4
  %rsrc_len8 = load i32, ptr %hcd, align 4
  %3 = tail call addrspace(1) i32 @release_mem_region(i32 %rsrc_start6, i32 %rsrc_len8)
  %4 = tail call addrspace(1) i32 @usb_put_hcd(ptr nonnull %hcd)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
