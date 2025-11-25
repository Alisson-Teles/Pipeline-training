; ModuleID = 'angha-ll-stm32f1/extr_fifo_icap.c_fifo_icap_fifo_read.ll'
source_filename = "out/extr_fifo_icap.c_fifo_icap_fifo_read.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@XHI_RF_OFFSET = local_unnamed_addr global i64 0
@conststr = private unnamed_addr constant [14 x i8] c"fifo_read: %x\0A"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"hwicap_drvdata:init"(ptr writeonly captures(none) initializes((0, 4), (8, 16)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  %gepbase_address = getelementptr inbounds nuw i8, ptr %_this, i32 8
  store i64 0, ptr %gepbase_address, align 8
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @dev_dbg(i32, ptr, i32, i32 zeroext) local_unnamed_addr addrspace(1) #1

declare i32 @in_be32(i64) local_unnamed_addr addrspace(1) #1

define i32 @fifo_icap_fifo_read(ptr readonly captures(none) %drvdata) local_unnamed_addr addrspace(1) #1 {
body:
  %base_address = getelementptr inbounds nuw i8, ptr %drvdata, i32 8
  %base_address2 = load i64, ptr %base_address, align 8
  %XHI_RF_OFFSET = load i64, ptr @XHI_RF_OFFSET, align 8
  %binop = add i64 %XHI_RF_OFFSET, %base_address2
  %0 = tail call addrspace(1) i32 @in_be32(i64 %binop)
  %dev4 = load i32, ptr %drvdata, align 4
  %1 = tail call addrspace(1) i32 @dev_dbg(i32 %dev4, ptr nonnull @conststr, i32 %0, i32 zeroext 14)
  ret i32 %0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
