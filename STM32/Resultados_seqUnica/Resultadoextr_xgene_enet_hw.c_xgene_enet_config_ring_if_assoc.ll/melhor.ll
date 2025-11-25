; ModuleID = 'angha-ll-stm32f1/extr_xgene_enet_hw.c_xgene_enet_config_ring_if_assoc.ll'
source_filename = "out/extr_xgene_enet_hw.c_xgene_enet_config_ring_if_assoc.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@ENET_CFGSSQMIFPQASSOC_ADDR = local_unnamed_addr global i32 0
@ENET_CFGSSQMIQMLITEFPQASSOC_ADDR = local_unnamed_addr global i32 0
@ENET_CFGSSQMIQMLITEWQASSOC_ADDR = local_unnamed_addr global i32 0
@ENET_CFGSSQMIWQASSOC_ADDR = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"xgene_enet_pdata:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @xgene_enet_wr_ring_if(ptr, i32, i32) local_unnamed_addr addrspace(1) #1

define void @xgene_enet_config_ring_if_assoc(ptr %pdata) local_unnamed_addr addrspace(1) #1 {
body:
  %ENET_CFGSSQMIWQASSOC_ADDR = load i32, ptr @ENET_CFGSSQMIWQASSOC_ADDR, align 4
  %0 = tail call addrspace(1) i32 @xgene_enet_wr_ring_if(ptr %pdata, i32 %ENET_CFGSSQMIWQASSOC_ADDR, i32 -1)
  %ENET_CFGSSQMIFPQASSOC_ADDR = load i32, ptr @ENET_CFGSSQMIFPQASSOC_ADDR, align 4
  %1 = tail call addrspace(1) i32 @xgene_enet_wr_ring_if(ptr %pdata, i32 %ENET_CFGSSQMIFPQASSOC_ADDR, i32 -1)
  %ENET_CFGSSQMIQMLITEWQASSOC_ADDR = load i32, ptr @ENET_CFGSSQMIQMLITEWQASSOC_ADDR, align 4
  %2 = tail call addrspace(1) i32 @xgene_enet_wr_ring_if(ptr %pdata, i32 %ENET_CFGSSQMIQMLITEWQASSOC_ADDR, i32 -1)
  %ENET_CFGSSQMIQMLITEFPQASSOC_ADDR = load i32, ptr @ENET_CFGSSQMIQMLITEFPQASSOC_ADDR, align 4
  %3 = tail call addrspace(1) i32 @xgene_enet_wr_ring_if(ptr %pdata, i32 %ENET_CFGSSQMIQMLITEFPQASSOC_ADDR, i32 -1)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
