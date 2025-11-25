; ModuleID = 'angha-ll-stm32f1/extr_if_spi.c_spu_transaction_init.ll'
source_filename = "out/extr_if_spi.c_spu_transaction_init.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@jiffies = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"if_spi_card:init"(ptr writeonly captures(none) initializes((0, 8)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i64 0, ptr %_this, align 8
  ret void
}

declare i32 @ndelay(i32) local_unnamed_addr addrspace(1) #1

declare i32 @time_after(i32, i64) local_unnamed_addr addrspace(1) #1

define void @spu_transaction_init(ptr readonly captures(none) %card) local_unnamed_addr addrspace(1) #1 {
body:
  %jiffies = load i32, ptr @jiffies, align 4
  %prev_xfer_time2 = load i64, ptr %card, align 8
  %binop = add i64 %prev_xfer_time2, 1
  %0 = tail call addrspace(1) i32 @time_after(i32 %jiffies, i64 %binop)
  %cmpi = icmp eq i32 %0, 0
  br i1 %cmpi, label %if_then, label %if_cont

if_then:                                          ; preds = %body
  %1 = tail call addrspace(1) i32 @ndelay(i32 400)
  br label %if_cont

if_cont:                                          ; preds = %if_then, %body
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
