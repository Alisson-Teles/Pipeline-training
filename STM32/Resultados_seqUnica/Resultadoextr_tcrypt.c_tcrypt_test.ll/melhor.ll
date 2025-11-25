; ModuleID = 'angha-ll-stm32f1/extr_tcrypt.c_tcrypt_test.ll'
source_filename = "out/extr_tcrypt.c_tcrypt_test.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@EINVAL = local_unnamed_addr global i32 0
@fips_enabled = local_unnamed_addr global i64 0
@conststr = private unnamed_addr constant [11 x i8] c"testing %s\0A"

declare i32 @alg_test(ptr, ptr, i32, i32, i32 zeroext, i32 zeroext) local_unnamed_addr addrspace(1) #0

declare i32 @pr_debug(ptr, ptr, i32 zeroext, i32 zeroext) local_unnamed_addr addrspace(1) #0

define i32 @tcrypt_test(ptr %alg, i32 zeroext %alg.size) local_unnamed_addr addrspace(1) #0 {
body:
  %0 = tail call addrspace(1) i32 @pr_debug(ptr nonnull @conststr, ptr %alg, i32 zeroext 11, i32 zeroext %alg.size)
  %1 = tail call addrspace(1) i32 @alg_test(ptr %alg, ptr %alg, i32 0, i32 0, i32 zeroext %alg.size, i32 zeroext %alg.size)
  %fips_enabled = load i64, ptr @fips_enabled, align 8
  %cmpi.not = icmp ne i64 %fips_enabled, 0
  %EINVAL = load i32, ptr @EINVAL, align 4
  %binop = sub i32 0, %EINVAL
  %cmpi11 = icmp eq i32 %1, %binop
  %phi = select i1 %cmpi.not, i1 %cmpi11, i1 false
  %ret.0 = select i1 %phi, i32 0, i32 %1
  ret i32 %ret.0
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
