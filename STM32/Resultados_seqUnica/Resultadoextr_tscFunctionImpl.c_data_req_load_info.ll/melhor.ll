; ModuleID = 'angha-ll-stm32f1/extr_tscFunctionImpl.c_data_req_load_info.ll'
source_filename = "out/extr_tscFunctionImpl.c_data_req_load_info.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@BLK_DATA_ALL_NEEDED = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none)
define i32 @data_req_load_info(i32 %pCtx, i32 %start, i32 %end, i32 %colId, i32 %blockStatus) local_unnamed_addr addrspace(1) #0 {
body:
  %BLK_DATA_ALL_NEEDED = load i32, ptr @BLK_DATA_ALL_NEEDED, align 4
  ret i32 %BLK_DATA_ALL_NEEDED
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
