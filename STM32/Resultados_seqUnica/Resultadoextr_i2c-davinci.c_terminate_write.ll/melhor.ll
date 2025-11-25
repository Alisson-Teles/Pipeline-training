; ModuleID = 'angha-ll-stm32f1/extr_i2c-davinci.c_terminate_write.ll'
source_filename = "out/extr_i2c-davinci.c_terminate_write.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@DAVINCI_I2C_MDR_REG = local_unnamed_addr global i32 0
@DAVINCI_I2C_MDR_RM = local_unnamed_addr global i32 0
@DAVINCI_I2C_MDR_STP = local_unnamed_addr global i32 0
@conststr = private unnamed_addr constant [30 x i8] c"TDR IRQ while no data to send\0A"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"davinci_i2c_dev:init"(ptr writeonly captures(none) initializes((0, 8)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  %gepterminate = getelementptr inbounds nuw i8, ptr %_this, i32 4
  store i32 0, ptr %gepterminate, align 4
  ret void
}

declare i32 @davinci_i2c_read_reg(ptr, i32) local_unnamed_addr addrspace(1) #1

declare i32 @davinci_i2c_write_reg(ptr, i32, i32) local_unnamed_addr addrspace(1) #1

declare i32 @dev_dbg(i32, ptr, i32 zeroext) local_unnamed_addr addrspace(1) #1

define void @terminate_write(ptr %dev) local_unnamed_addr addrspace(1) #1 {
body:
  %DAVINCI_I2C_MDR_REG = load i32, ptr @DAVINCI_I2C_MDR_REG, align 4
  %0 = tail call addrspace(1) i32 @davinci_i2c_read_reg(ptr %dev, i32 %DAVINCI_I2C_MDR_REG)
  %DAVINCI_I2C_MDR_RM = load i32, ptr @DAVINCI_I2C_MDR_RM, align 4
  %DAVINCI_I2C_MDR_STP = load i32, ptr @DAVINCI_I2C_MDR_STP, align 4
  %binop = or i32 %DAVINCI_I2C_MDR_RM, %0
  %binop2 = or i32 %binop, %DAVINCI_I2C_MDR_STP
  %DAVINCI_I2C_MDR_REG4 = load i32, ptr @DAVINCI_I2C_MDR_REG, align 4
  %1 = tail call addrspace(1) i32 @davinci_i2c_write_reg(ptr %dev, i32 %DAVINCI_I2C_MDR_REG4, i32 %binop2)
  %terminate = getelementptr inbounds nuw i8, ptr %dev, i32 4
  %terminate7 = load i32, ptr %terminate, align 4
  %cmpi = icmp eq i32 %terminate7, 0
  br i1 %cmpi, label %if_then, label %if_cont

if_then:                                          ; preds = %body
  %dev10 = load i32, ptr %dev, align 4
  %2 = tail call addrspace(1) i32 @dev_dbg(i32 %dev10, ptr nonnull @conststr, i32 zeroext 30)
  br label %if_cont

if_cont:                                          ; preds = %if_then, %body
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
