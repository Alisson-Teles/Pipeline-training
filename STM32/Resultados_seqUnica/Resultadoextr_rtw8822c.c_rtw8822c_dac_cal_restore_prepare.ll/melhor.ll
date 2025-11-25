; ModuleID = 'angha-ll-stm32f1/extr_rtw8822c.c_rtw8822c_dac_cal_restore_prepare.ll'
source_filename = "out/extr_rtw8822c.c_rtw8822c_dac_cal_restore_prepare.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"rtw_dev:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @BIT(i32) local_unnamed_addr addrspace(1) #1

declare i32 @rtw8822c_dac_cal_restore_dck(ptr) local_unnamed_addr addrspace(1) #1

declare i32 @rtw_write32(ptr, i32, i32) local_unnamed_addr addrspace(1) #1

declare i32 @rtw_write32_mask(ptr, i32, i32, i32) local_unnamed_addr addrspace(1) #1

define void @rtw8822c_dac_cal_restore_prepare(ptr %rtwdev) local_unnamed_addr addrspace(1) #1 {
body:
  %0 = tail call addrspace(1) i32 @rtw_write32(ptr %rtwdev, i32 2484, i32 -614016256)
  %1 = tail call addrspace(1) i32 @BIT(i32 27)
  %2 = tail call addrspace(1) i32 @rtw_write32_mask(ptr %rtwdev, i32 6320, i32 %1, i32 0)
  %3 = tail call addrspace(1) i32 @BIT(i32 27)
  %4 = tail call addrspace(1) i32 @rtw_write32_mask(ptr %rtwdev, i32 6348, i32 %3, i32 0)
  %5 = tail call addrspace(1) i32 @BIT(i32 27)
  %6 = tail call addrspace(1) i32 @rtw_write32_mask(ptr %rtwdev, i32 16816, i32 %5, i32 0)
  %7 = tail call addrspace(1) i32 @BIT(i32 27)
  %8 = tail call addrspace(1) i32 @rtw_write32_mask(ptr %rtwdev, i32 16844, i32 %7, i32 0)
  %9 = tail call addrspace(1) i32 @BIT(i32 30)
  %10 = tail call addrspace(1) i32 @rtw_write32_mask(ptr %rtwdev, i32 6192, i32 %9, i32 0)
  %11 = tail call addrspace(1) i32 @rtw_write32_mask(ptr %rtwdev, i32 6240, i32 -67108864, i32 60)
  %12 = tail call addrspace(1) i32 @BIT(i32 0)
  %13 = tail call addrspace(1) i32 @rtw_write32_mask(ptr %rtwdev, i32 6324, i32 %12, i32 1)
  %14 = tail call addrspace(1) i32 @BIT(i32 0)
  %15 = tail call addrspace(1) i32 @rtw_write32_mask(ptr %rtwdev, i32 6352, i32 %14, i32 1)
  %16 = tail call addrspace(1) i32 @BIT(i32 30)
  %17 = tail call addrspace(1) i32 @rtw_write32_mask(ptr %rtwdev, i32 16688, i32 %16, i32 0)
  %18 = tail call addrspace(1) i32 @rtw_write32_mask(ptr %rtwdev, i32 16736, i32 -67108864, i32 60)
  %19 = tail call addrspace(1) i32 @BIT(i32 0)
  %20 = tail call addrspace(1) i32 @rtw_write32_mask(ptr %rtwdev, i32 16820, i32 %19, i32 1)
  %21 = tail call addrspace(1) i32 @BIT(i32 0)
  %22 = tail call addrspace(1) i32 @rtw_write32_mask(ptr %rtwdev, i32 16848, i32 %21, i32 1)
  %23 = tail call addrspace(1) i32 @rtw_write32_mask(ptr %rtwdev, i32 6320, i32 3840, i32 0)
  %24 = tail call addrspace(1) i32 @BIT(i32 14)
  %25 = tail call addrspace(1) i32 @rtw_write32_mask(ptr %rtwdev, i32 6336, i32 %24, i32 0)
  %26 = tail call addrspace(1) i32 @rtw_write32_mask(ptr %rtwdev, i32 6348, i32 3840, i32 0)
  %27 = tail call addrspace(1) i32 @BIT(i32 14)
  %28 = tail call addrspace(1) i32 @rtw_write32_mask(ptr %rtwdev, i32 6364, i32 %27, i32 0)
  %29 = tail call addrspace(1) i32 @BIT(i32 0)
  %30 = tail call addrspace(1) i32 @rtw_write32_mask(ptr %rtwdev, i32 6320, i32 %29, i32 0)
  %31 = tail call addrspace(1) i32 @BIT(i32 0)
  %32 = tail call addrspace(1) i32 @rtw_write32_mask(ptr %rtwdev, i32 6348, i32 %31, i32 0)
  %33 = tail call addrspace(1) i32 @BIT(i32 0)
  %34 = tail call addrspace(1) i32 @rtw_write32_mask(ptr %rtwdev, i32 6320, i32 %33, i32 1)
  %35 = tail call addrspace(1) i32 @BIT(i32 0)
  %36 = tail call addrspace(1) i32 @rtw_write32_mask(ptr %rtwdev, i32 6348, i32 %35, i32 1)
  %37 = tail call addrspace(1) i32 @rtw8822c_dac_cal_restore_dck(ptr %rtwdev)
  %38 = tail call addrspace(1) i32 @rtw_write32_mask(ptr %rtwdev, i32 6336, i32 229376, i32 7)
  %39 = tail call addrspace(1) i32 @rtw_write32_mask(ptr %rtwdev, i32 6364, i32 229376, i32 7)
  %40 = tail call addrspace(1) i32 @rtw_write32_mask(ptr %rtwdev, i32 16832, i32 229376, i32 7)
  %41 = tail call addrspace(1) i32 @rtw_write32_mask(ptr %rtwdev, i32 16860, i32 229376, i32 7)
  %42 = tail call addrspace(1) i32 @BIT(i32 26)
  %43 = tail call addrspace(1) i32 @BIT(i32 25)
  %binop = or i32 %43, %42
  %44 = tail call addrspace(1) i32 @rtw_write32_mask(ptr %rtwdev, i32 6328, i32 %binop, i32 1)
  %45 = tail call addrspace(1) i32 @BIT(i32 26)
  %46 = tail call addrspace(1) i32 @BIT(i32 25)
  %binop29 = or i32 %46, %45
  %47 = tail call addrspace(1) i32 @rtw_write32_mask(ptr %rtwdev, i32 6356, i32 %binop29, i32 1)
  %48 = tail call addrspace(1) i32 @rtw_write32_mask(ptr %rtwdev, i32 16816, i32 3840, i32 0)
  %49 = tail call addrspace(1) i32 @BIT(i32 14)
  %50 = tail call addrspace(1) i32 @rtw_write32_mask(ptr %rtwdev, i32 16832, i32 %49, i32 0)
  %51 = tail call addrspace(1) i32 @rtw_write32_mask(ptr %rtwdev, i32 16844, i32 3840, i32 0)
  %52 = tail call addrspace(1) i32 @BIT(i32 14)
  %53 = tail call addrspace(1) i32 @rtw_write32_mask(ptr %rtwdev, i32 16860, i32 %52, i32 0)
  %54 = tail call addrspace(1) i32 @BIT(i32 0)
  %55 = tail call addrspace(1) i32 @rtw_write32_mask(ptr %rtwdev, i32 16816, i32 %54, i32 0)
  %56 = tail call addrspace(1) i32 @BIT(i32 0)
  %57 = tail call addrspace(1) i32 @rtw_write32_mask(ptr %rtwdev, i32 16844, i32 %56, i32 0)
  %58 = tail call addrspace(1) i32 @BIT(i32 0)
  %59 = tail call addrspace(1) i32 @rtw_write32_mask(ptr %rtwdev, i32 16816, i32 %58, i32 1)
  %60 = tail call addrspace(1) i32 @BIT(i32 0)
  %61 = tail call addrspace(1) i32 @rtw_write32_mask(ptr %rtwdev, i32 16844, i32 %60, i32 1)
  %62 = tail call addrspace(1) i32 @BIT(i32 26)
  %63 = tail call addrspace(1) i32 @BIT(i32 25)
  %binop39 = or i32 %63, %62
  %64 = tail call addrspace(1) i32 @rtw_write32_mask(ptr %rtwdev, i32 16824, i32 %binop39, i32 1)
  %65 = tail call addrspace(1) i32 @BIT(i32 26)
  %66 = tail call addrspace(1) i32 @BIT(i32 25)
  %binop41 = or i32 %66, %65
  %67 = tail call addrspace(1) i32 @rtw_write32_mask(ptr %rtwdev, i32 16852, i32 %binop41, i32 1)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
