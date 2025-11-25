; ModuleID = 'angha-ll-stm32f1/extr_scsi_transport_sas.c_scsi_is_sas_rphy.ll'
source_filename = "out/extr_scsi_transport_sas.c_scsi_is_sas_rphy.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@sas_end_device_release = local_unnamed_addr global i64 0
@sas_expander_release = local_unnamed_addr global i64 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"device:init"(ptr writeonly captures(none) initializes((0, 8)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i64 0, ptr %_this, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none)
define range(i32 0, 2) i32 @scsi_is_sas_rphy(ptr readonly captures(none) %dev) local_unnamed_addr addrspace(1) #1 {
body:
  %release2 = load i64, ptr %dev, align 8
  %sas_end_device_release = load i64, ptr @sas_end_device_release, align 8
  %cmpi = icmp eq i64 %release2, %sas_end_device_release
  %sas_expander_release = load i64, ptr @sas_expander_release, align 8
  %cmpi6 = icmp eq i64 %release2, %sas_expander_release
  %narrow = select i1 %cmpi, i1 true, i1 %cmpi6
  %phi = zext i1 %narrow to i32
  ret i32 %phi
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
