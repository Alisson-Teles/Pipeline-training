; ModuleID = 'angha-ll-stm32f1/extr_i2c-wmt.c_wmt_i2c_func.ll'
source_filename = "out/extr_i2c-wmt.c_wmt_i2c_func.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@I2C_FUNC_I2C = local_unnamed_addr global i32 0
@I2C_FUNC_NOSTART = local_unnamed_addr global i32 0
@I2C_FUNC_SMBUS_EMUL = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"i2c_adapter:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none)
define i32 @wmt_i2c_func(ptr readnone captures(none) %adap) local_unnamed_addr addrspace(1) #1 {
body:
  %I2C_FUNC_I2C = load i32, ptr @I2C_FUNC_I2C, align 4
  %I2C_FUNC_SMBUS_EMUL = load i32, ptr @I2C_FUNC_SMBUS_EMUL, align 4
  %binop = or i32 %I2C_FUNC_SMBUS_EMUL, %I2C_FUNC_I2C
  %I2C_FUNC_NOSTART = load i32, ptr @I2C_FUNC_NOSTART, align 4
  %binop2 = or i32 %binop, %I2C_FUNC_NOSTART
  ret i32 %binop2
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
