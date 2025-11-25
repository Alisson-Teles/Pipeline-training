; ModuleID = 'angha-ll-stm32f1/extr_mvsw61xx.c_mvsw61xx_mdio_page_write.ll'
source_filename = "out/extr_mvsw61xx.c_mvsw61xx_mdio_page_write.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@MII_MV_PAGE = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"switch_dev:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @mvsw61xx_mdio_write(ptr, i32, i32, i32) local_unnamed_addr addrspace(1) #1

define void @mvsw61xx_mdio_page_write(ptr %dev, i32 %port, i32 %page, i32 %reg, i32 %val) local_unnamed_addr addrspace(1) #1 {
body:
  %MII_MV_PAGE = load i32, ptr @MII_MV_PAGE, align 4
  %0 = tail call addrspace(1) i32 @mvsw61xx_mdio_write(ptr %dev, i32 %port, i32 %MII_MV_PAGE, i32 %page)
  %1 = tail call addrspace(1) i32 @mvsw61xx_mdio_write(ptr %dev, i32 %port, i32 %reg, i32 %val)
  %MII_MV_PAGE14 = load i32, ptr @MII_MV_PAGE, align 4
  %2 = tail call addrspace(1) i32 @mvsw61xx_mdio_write(ptr %dev, i32 %port, i32 %MII_MV_PAGE14, i32 0)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
