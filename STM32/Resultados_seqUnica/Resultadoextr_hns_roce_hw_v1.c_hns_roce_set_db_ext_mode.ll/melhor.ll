; ModuleID = 'angha-ll-stm32f1/extr_hns_roce_hw_v1.c_hns_roce_set_db_ext_mode.ll'
source_filename = "out/extr_hns_roce_hw_v1.c_hns_roce_set_db_ext_mode.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@ROCEE_GLB_CFG_OTH_EXT_DB_MODE_S = local_unnamed_addr global i32 0
@ROCEE_GLB_CFG_REG = local_unnamed_addr global i32 0
@ROCEE_GLB_CFG_SQ_EXT_DB_MODE_S = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"hns_roce_dev:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @cpu_to_le32(i32) local_unnamed_addr addrspace(1) #1

declare i32 @le32_to_cpu(i32) local_unnamed_addr addrspace(1) #1

declare i32 @roce_read(ptr, i32) local_unnamed_addr addrspace(1) #1

declare i32 @roce_set_bit(i32, i32, i32) local_unnamed_addr addrspace(1) #1

declare i32 @roce_write(ptr, i32, i32) local_unnamed_addr addrspace(1) #1

define void @hns_roce_set_db_ext_mode(ptr %hr_dev, i32 %sdb_mode, i32 %odb_mode) local_unnamed_addr addrspace(1) #1 {
body:
  %ROCEE_GLB_CFG_REG = load i32, ptr @ROCEE_GLB_CFG_REG, align 4
  %0 = tail call addrspace(1) i32 @roce_read(ptr %hr_dev, i32 %ROCEE_GLB_CFG_REG)
  %1 = tail call addrspace(1) i32 @cpu_to_le32(i32 %0)
  %ROCEE_GLB_CFG_SQ_EXT_DB_MODE_S = load i32, ptr @ROCEE_GLB_CFG_SQ_EXT_DB_MODE_S, align 4
  %2 = tail call addrspace(1) i32 @roce_set_bit(i32 %1, i32 %ROCEE_GLB_CFG_SQ_EXT_DB_MODE_S, i32 %sdb_mode)
  %ROCEE_GLB_CFG_OTH_EXT_DB_MODE_S = load i32, ptr @ROCEE_GLB_CFG_OTH_EXT_DB_MODE_S, align 4
  %3 = tail call addrspace(1) i32 @roce_set_bit(i32 %1, i32 %ROCEE_GLB_CFG_OTH_EXT_DB_MODE_S, i32 %odb_mode)
  %4 = tail call addrspace(1) i32 @le32_to_cpu(i32 %1)
  %ROCEE_GLB_CFG_REG11 = load i32, ptr @ROCEE_GLB_CFG_REG, align 4
  %5 = tail call addrspace(1) i32 @roce_write(ptr %hr_dev, i32 %ROCEE_GLB_CFG_REG11, i32 %4)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
