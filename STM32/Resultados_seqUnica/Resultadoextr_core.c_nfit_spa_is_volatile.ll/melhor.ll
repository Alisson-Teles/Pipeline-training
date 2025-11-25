; ModuleID = 'angha-ll-stm32f1/extr_core.c_nfit_spa_is_volatile.ll'
source_filename = "out/extr_core.c_nfit_spa_is_volatile.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@NFIT_SPA_VCD = local_unnamed_addr global i64 0
@NFIT_SPA_VDISK = local_unnamed_addr global i64 0
@NFIT_SPA_VOLATILE = local_unnamed_addr global i64 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"acpi_nfit_system_address:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i64 @nfit_spa_type(ptr) local_unnamed_addr addrspace(1) #1

define range(i32 0, 2) i32 @nfit_spa_is_volatile(ptr %spa) local_unnamed_addr addrspace(1) #1 {
body:
  %0 = tail call addrspace(1) i64 @nfit_spa_type(ptr %spa)
  %NFIT_SPA_VDISK = load i64, ptr @NFIT_SPA_VDISK, align 8
  %cmpi = icmp eq i64 %0, %NFIT_SPA_VDISK
  br i1 %cmpi, label %phiblock5, label %fullev

fullev:                                           ; preds = %body
  %1 = tail call addrspace(1) i64 @nfit_spa_type(ptr %spa)
  %NFIT_SPA_VCD = load i64, ptr @NFIT_SPA_VCD, align 8
  %cmpi3 = icmp eq i64 %1, %NFIT_SPA_VCD
  br i1 %cmpi3, label %phiblock5, label %fullev4

fullev4:                                          ; preds = %fullev
  %2 = tail call addrspace(1) i64 @nfit_spa_type(ptr %spa)
  %NFIT_SPA_VOLATILE = load i64, ptr @NFIT_SPA_VOLATILE, align 8
  %cmpi8 = icmp eq i64 %2, %NFIT_SPA_VOLATILE
  %3 = zext i1 %cmpi8 to i32
  br label %phiblock5

phiblock5:                                        ; preds = %fullev4, %fullev, %body
  %phi6 = phi i32 [ 1, %fullev ], [ %3, %fullev4 ], [ 1, %body ]
  ret i32 %phi6
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
