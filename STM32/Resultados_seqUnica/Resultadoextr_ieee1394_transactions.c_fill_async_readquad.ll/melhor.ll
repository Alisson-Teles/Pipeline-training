; ModuleID = 'angha-ll-stm32f1/extr_ieee1394_transactions.c_fill_async_readquad.ll'
source_filename = "out/extr_ieee1394_transactions.c_fill_async_readquad.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@TCODE_READQ = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"hpsb_packet:init"(ptr writeonly captures(none) initializes((0, 16)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %_this, i8 0, i64 16, i1 false)
  ret void
}

declare i32 @PREP_ASYNC_HEAD_ADDRESS(i32) local_unnamed_addr addrspace(1) #1

define void @fill_async_readquad(ptr writeonly captures(none) initializes((0, 16)) %packet, i32 %addr) local_unnamed_addr addrspace(1) #1 {
body:
  %TCODE_READQ = load i32, ptr @TCODE_READQ, align 4
  %0 = tail call addrspace(1) i32 @PREP_ASYNC_HEAD_ADDRESS(i32 %TCODE_READQ)
  store i32 12, ptr %packet, align 4
  %data_size = getelementptr inbounds nuw i8, ptr %packet, i32 8
  store i64 0, ptr %data_size, align 8
  %expect_response = getelementptr inbounds nuw i8, ptr %packet, i32 4
  store i32 1, ptr %expect_response, align 4
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
