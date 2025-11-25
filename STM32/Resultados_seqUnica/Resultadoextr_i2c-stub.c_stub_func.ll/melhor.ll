; ModuleID = 'angha-ll-stm32f1/extr_i2c-stub.c_stub_func.ll'
source_filename = "out/extr_i2c-stub.c_stub_func.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@I2C_FUNC_SMBUS_BYTE = local_unnamed_addr global i32 0
@I2C_FUNC_SMBUS_BYTE_DATA = local_unnamed_addr global i32 0
@I2C_FUNC_SMBUS_QUICK = local_unnamed_addr global i32 0
@I2C_FUNC_SMBUS_WORD_DATA = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"i2c_adapter:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none)
define i32 @stub_func(ptr readnone captures(none) %adapter) local_unnamed_addr addrspace(1) #1 {
body:
  %I2C_FUNC_SMBUS_QUICK = load i32, ptr @I2C_FUNC_SMBUS_QUICK, align 4
  %I2C_FUNC_SMBUS_BYTE = load i32, ptr @I2C_FUNC_SMBUS_BYTE, align 4
  %binop = or i32 %I2C_FUNC_SMBUS_BYTE, %I2C_FUNC_SMBUS_QUICK
  %I2C_FUNC_SMBUS_BYTE_DATA = load i32, ptr @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %binop2 = or i32 %binop, %I2C_FUNC_SMBUS_BYTE_DATA
  %I2C_FUNC_SMBUS_WORD_DATA = load i32, ptr @I2C_FUNC_SMBUS_WORD_DATA, align 4
  %binop3 = or i32 %binop2, %I2C_FUNC_SMBUS_WORD_DATA
  ret i32 %binop3
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
