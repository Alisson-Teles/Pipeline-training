; ModuleID = 'angha-ll-stm32f1/extr_rt2800mmio.c_rt2800mmio_enable_radio.ll'
source_filename = "out/extr_rt2800mmio.c_rt2800mmio_enable_radio.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@EIO = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"rt2x00_dev:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @rt2800_enable_radio(ptr) local_unnamed_addr addrspace(1) #1

declare i32 @rt2800_wait_wpdma_ready(ptr) local_unnamed_addr addrspace(1) #1

declare i32 @rt2800mmio_init_queues(ptr) local_unnamed_addr addrspace(1) #1

declare i64 @unlikely(i32) local_unnamed_addr addrspace(1) #1

define i32 @rt2800mmio_enable_radio(ptr %rt2x00dev) local_unnamed_addr addrspace(1) #1 {
body:
  %0 = tail call addrspace(1) i32 @rt2800_wait_wpdma_ready(ptr %rt2x00dev)
  %1 = tail call addrspace(1) i32 @rt2800mmio_init_queues(ptr %rt2x00dev)
  %2 = tail call addrspace(1) i64 @unlikely(i32 %1)
  %cmpi.not = icmp eq i64 %2, 0
  br i1 %cmpi.not, label %if_cont, label %if_then

common.ret:                                       ; preds = %if_cont, %if_then
  %common.ret.op = phi i32 [ %binop, %if_then ], [ %3, %if_cont ]
  ret i32 %common.ret.op

if_then:                                          ; preds = %body
  %EIO = load i32, ptr @EIO, align 4
  %binop = sub i32 0, %EIO
  br label %common.ret

if_cont:                                          ; preds = %body
  %3 = tail call addrspace(1) i32 @rt2800_enable_radio(ptr %rt2x00dev)
  br label %common.ret
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
