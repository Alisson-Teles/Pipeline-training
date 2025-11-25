; ModuleID = 'angha-ll-stm32f1/extr_spi-nor.c_winbond_set_4byte.ll'
source_filename = "out/extr_spi-nor.c_winbond_set_4byte.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"spi_nor:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @macronix_set_4byte(ptr, i32) local_unnamed_addr addrspace(1) #1

declare i32 @spi_nor_write_ear(ptr, i32) local_unnamed_addr addrspace(1) #1

declare i32 @write_disable(ptr) local_unnamed_addr addrspace(1) #1

declare i32 @write_enable(ptr) local_unnamed_addr addrspace(1) #1

define i32 @winbond_set_4byte(ptr %nor, i32 %enable) local_unnamed_addr addrspace(1) #1 {
body:
  %0 = tail call addrspace(1) i32 @macronix_set_4byte(ptr %nor, i32 %enable)
  %cmpi.not = icmp ne i32 %0, 0
  %cmpi6 = icmp ne i32 %enable, 0
  %phi = select i1 %cmpi.not, i1 true, i1 %cmpi6
  br i1 %phi, label %common.ret, label %if_cont

common.ret:                                       ; preds = %if_cont, %body
  %common.ret.op = phi i32 [ %2, %if_cont ], [ %0, %body ]
  ret i32 %common.ret.op

if_cont:                                          ; preds = %body
  %1 = tail call addrspace(1) i32 @write_enable(ptr %nor)
  %2 = tail call addrspace(1) i32 @spi_nor_write_ear(ptr %nor, i32 0)
  %3 = tail call addrspace(1) i32 @write_disable(ptr %nor)
  br label %common.ret
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
