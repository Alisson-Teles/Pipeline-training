; ModuleID = 'angha-ll-stm32f1/extr_xattr.c_xattr_datum_hashkey.ll'
source_filename = "out/extr_xattr.c_xattr_datum_hashkey.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

declare i32 @crc32(i32, ptr, i32, i32 zeroext) local_unnamed_addr addrspace(1) #0

declare i32 @strlen(ptr, i32 zeroext) local_unnamed_addr addrspace(1) #0

define i32 @xattr_datum_hashkey(i32 %xprefix, ptr %xname, ptr %xvalue, i32 %xsize, i32 zeroext %xname.size, i32 zeroext %xvalue.size) local_unnamed_addr addrspace(1) #0 {
body:
  %0 = tail call addrspace(1) i32 @strlen(ptr %xname, i32 zeroext %xname.size)
  %1 = tail call addrspace(1) i32 @crc32(i32 %xprefix, ptr %xname, i32 %0, i32 zeroext %xname.size)
  %2 = tail call addrspace(1) i32 @crc32(i32 %xprefix, ptr %xvalue, i32 %xsize, i32 zeroext %xvalue.size)
  %binop = xor i32 %2, %1
  ret i32 %binop
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
