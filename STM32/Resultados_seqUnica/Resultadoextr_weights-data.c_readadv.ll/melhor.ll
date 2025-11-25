; ModuleID = 'angha-ll-stm32f1/extr_weights-data.c_readadv.ll'
source_filename = "out/extr_weights-data.c_readadv.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@idx_crc32c_complement = local_unnamed_addr global i32 0
@rptr = local_unnamed_addr global i32 0
@wptr = local_unnamed_addr global i32 0

declare i32 @assert(i32) local_unnamed_addr addrspace(1) #0

declare i32 @crc32c_partial(i32 zeroext, i32 zeroext, i32) local_unnamed_addr addrspace(1) #0

define void @readadv(i32 zeroext %len) local_unnamed_addr addrspace(1) #0 {
body:
  %wptr = load i32, ptr @wptr, align 4
  %rptr = load i32, ptr @rptr, align 4
  %binop = sub i32 %wptr, %rptr
  %cmpi4 = icmp ule i32 %len, %binop
  %0 = zext i1 %cmpi4 to i32
  %1 = tail call addrspace(1) i32 @assert(i32 %0)
  %rptr5 = load i32, ptr @rptr, align 4
  %idx_crc32c_complement = load i32, ptr @idx_crc32c_complement, align 4
  %2 = tail call addrspace(1) i32 @crc32c_partial(i32 zeroext %rptr5, i32 zeroext %len, i32 %idx_crc32c_complement)
  store i32 %2, ptr @idx_crc32c_complement, align 4
  %loadleftv = load i32, ptr @rptr, align 4
  %binop8 = add i32 %loadleftv, %len
  store i32 %binop8, ptr @rptr, align 4
  ret void
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
