; ModuleID = 'angha-ll-stm32f1/extr_sdmmc_sd.c_sdmmc_decode_cid.ll'
source_filename = "out/extr_sdmmc_sd.c_sdmmc_decode_cid.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@ESP_OK = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"TYPE_3__:init"(ptr writeonly captures(none) initializes((0, 24)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %_this, i8 0, i64 24, i1 false)
  ret void
}

declare i32 @SD_CID_MDT(i32) local_unnamed_addr addrspace(1) #1

declare i32 @SD_CID_MID(i32) local_unnamed_addr addrspace(1) #1

declare i32 @SD_CID_OID(i32) local_unnamed_addr addrspace(1) #1

declare i32 @SD_CID_PNM_CPY(i32, i32) local_unnamed_addr addrspace(1) #1

declare i32 @SD_CID_PSN(i32) local_unnamed_addr addrspace(1) #1

declare i32 @SD_CID_REV(i32) local_unnamed_addr addrspace(1) #1

define i32 @sdmmc_decode_cid(i32 %resp, ptr captures(none) initializes((0, 12), (16, 24)) %out_cid) local_unnamed_addr addrspace(1) #1 {
body:
  %mfg_id = getelementptr inbounds nuw i8, ptr %out_cid, i32 20
  %0 = tail call addrspace(1) i32 @SD_CID_MID(i32 %resp)
  store i32 %0, ptr %mfg_id, align 4
  %oem_id = getelementptr inbounds nuw i8, ptr %out_cid, i32 16
  %1 = tail call addrspace(1) i32 @SD_CID_OID(i32 %resp)
  store i32 %1, ptr %oem_id, align 4
  %name = getelementptr inbounds nuw i8, ptr %out_cid, i32 12
  %name8 = load i32, ptr %name, align 4
  %2 = tail call addrspace(1) i32 @SD_CID_PNM_CPY(i32 %resp, i32 %name8)
  %revision = getelementptr inbounds nuw i8, ptr %out_cid, i32 8
  %3 = tail call addrspace(1) i32 @SD_CID_REV(i32 %resp)
  store i32 %3, ptr %revision, align 4
  %serial = getelementptr inbounds nuw i8, ptr %out_cid, i32 4
  %4 = tail call addrspace(1) i32 @SD_CID_PSN(i32 %resp)
  store i32 %4, ptr %serial, align 4
  %5 = tail call addrspace(1) i32 @SD_CID_MDT(i32 %resp)
  store i32 %5, ptr %out_cid, align 4
  %ESP_OK = load i32, ptr @ESP_OK, align 4
  ret i32 %ESP_OK
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
