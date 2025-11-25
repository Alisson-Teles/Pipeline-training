; ModuleID = 'angha-ll-stm32f1/extr_skcipher.c_skcipher_set_needkey.ll'
source_filename = "out/extr_skcipher.c_skcipher_set_needkey.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@CRYPTO_TFM_NEED_KEY = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"crypto_skcipher:init"(ptr writeonly captures(none) initializes((0, 8)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i64 0, ptr %_this, align 8
  ret void
}

declare i32 @crypto_skcipher_set_flags(ptr, i32) local_unnamed_addr addrspace(1) #1

define void @skcipher_set_needkey(ptr %tfm) local_unnamed_addr addrspace(1) #1 {
body:
  %keysize2 = load i64, ptr %tfm, align 8
  %cmpi.not = icmp eq i64 %keysize2, 0
  br i1 %cmpi.not, label %if_cont, label %if_then

if_then:                                          ; preds = %body
  %CRYPTO_TFM_NEED_KEY = load i32, ptr @CRYPTO_TFM_NEED_KEY, align 4
  %0 = tail call addrspace(1) i32 @crypto_skcipher_set_flags(ptr nonnull %tfm, i32 %CRYPTO_TFM_NEED_KEY)
  br label %if_cont

if_cont:                                          ; preds = %if_then, %body
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
