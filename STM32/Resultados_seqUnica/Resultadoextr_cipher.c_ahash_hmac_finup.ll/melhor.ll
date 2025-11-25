; ModuleID = 'angha-ll-stm32f1/extr_cipher.c_ahash_hmac_finup.ll'
source_filename = "out/extr_cipher.c_ahash_hmac_finup.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@conststr = private unnamed_addr constant [30 x i8] c"ahash_hmac_finupl() nbytes:%u\0A"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"ahash_request:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @ahash_finup(ptr) local_unnamed_addr addrspace(1) #1

declare i32 @flow_log(ptr, i32, i32 zeroext) local_unnamed_addr addrspace(1) #1

define i32 @ahash_hmac_finup(ptr %req) local_unnamed_addr addrspace(1) #1 {
body:
  %nbytes2 = load i32, ptr %req, align 4
  %0 = tail call addrspace(1) i32 @flow_log(ptr nonnull @conststr, i32 %nbytes2, i32 zeroext 30)
  %1 = tail call addrspace(1) i32 @ahash_finup(ptr nonnull %req)
  ret i32 %1
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
