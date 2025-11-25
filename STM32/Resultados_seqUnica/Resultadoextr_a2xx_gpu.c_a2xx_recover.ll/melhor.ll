; ModuleID = 'angha-ll-stm32f1/extr_a2xx_gpu.c_a2xx_recover.ll'
source_filename = "out/extr_a2xx_gpu.c_a2xx_recover.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@REG_A2XX_RBBM_SOFT_RESET = local_unnamed_addr global i64 0
@REG_AXXX_CP_SCRATCH_REG0 = local_unnamed_addr global i64 0
@hang_debug = local_unnamed_addr global i64 0
@conststr = private unnamed_addr constant [21 x i8] c"CP_SCRATCH_REG%d: %u\0A"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"msm_gpu:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @a2xx_dump(ptr) local_unnamed_addr addrspace(1) #1

declare i32 @adreno_dump_info(ptr) local_unnamed_addr addrspace(1) #1

declare i32 @adreno_recover(ptr) local_unnamed_addr addrspace(1) #1

declare i32 @gpu_read(ptr, i64) local_unnamed_addr addrspace(1) #1

declare i32 @gpu_write(ptr, i64, i32) local_unnamed_addr addrspace(1) #1

declare i32 @printk(ptr, i32, i32, i32 zeroext) local_unnamed_addr addrspace(1) #1

define void @a2xx_recover(ptr %gpu) local_unnamed_addr addrspace(1) #1 {
body:
  %0 = tail call addrspace(1) i32 @adreno_dump_info(ptr %gpu)
  %REG_AXXX_CP_SCRATCH_REG0 = load i64, ptr @REG_AXXX_CP_SCRATCH_REG0, align 8
  %1 = tail call addrspace(1) i32 @gpu_read(ptr %gpu, i64 %REG_AXXX_CP_SCRATCH_REG0)
  %2 = tail call addrspace(1) i32 @printk(ptr nonnull @conststr, i32 0, i32 %1, i32 zeroext 21)
  %REG_AXXX_CP_SCRATCH_REG0.1 = load i64, ptr @REG_AXXX_CP_SCRATCH_REG0, align 8
  %binop.1 = add i64 %REG_AXXX_CP_SCRATCH_REG0.1, 1
  %3 = tail call addrspace(1) i32 @gpu_read(ptr %gpu, i64 %binop.1)
  %4 = tail call addrspace(1) i32 @printk(ptr nonnull @conststr, i32 1, i32 %3, i32 zeroext 21)
  %REG_AXXX_CP_SCRATCH_REG0.2 = load i64, ptr @REG_AXXX_CP_SCRATCH_REG0, align 8
  %binop.2 = add i64 %REG_AXXX_CP_SCRATCH_REG0.2, 2
  %5 = tail call addrspace(1) i32 @gpu_read(ptr %gpu, i64 %binop.2)
  %6 = tail call addrspace(1) i32 @printk(ptr nonnull @conststr, i32 2, i32 %5, i32 zeroext 21)
  %REG_AXXX_CP_SCRATCH_REG0.3 = load i64, ptr @REG_AXXX_CP_SCRATCH_REG0, align 8
  %binop.3 = add i64 %REG_AXXX_CP_SCRATCH_REG0.3, 3
  %7 = tail call addrspace(1) i32 @gpu_read(ptr %gpu, i64 %binop.3)
  %8 = tail call addrspace(1) i32 @printk(ptr nonnull @conststr, i32 3, i32 %7, i32 zeroext 21)
  %REG_AXXX_CP_SCRATCH_REG0.4 = load i64, ptr @REG_AXXX_CP_SCRATCH_REG0, align 8
  %binop.4 = add i64 %REG_AXXX_CP_SCRATCH_REG0.4, 4
  %9 = tail call addrspace(1) i32 @gpu_read(ptr %gpu, i64 %binop.4)
  %10 = tail call addrspace(1) i32 @printk(ptr nonnull @conststr, i32 4, i32 %9, i32 zeroext 21)
  %REG_AXXX_CP_SCRATCH_REG0.5 = load i64, ptr @REG_AXXX_CP_SCRATCH_REG0, align 8
  %binop.5 = add i64 %REG_AXXX_CP_SCRATCH_REG0.5, 5
  %11 = tail call addrspace(1) i32 @gpu_read(ptr %gpu, i64 %binop.5)
  %12 = tail call addrspace(1) i32 @printk(ptr nonnull @conststr, i32 5, i32 %11, i32 zeroext 21)
  %REG_AXXX_CP_SCRATCH_REG0.6 = load i64, ptr @REG_AXXX_CP_SCRATCH_REG0, align 8
  %binop.6 = add i64 %REG_AXXX_CP_SCRATCH_REG0.6, 6
  %13 = tail call addrspace(1) i32 @gpu_read(ptr %gpu, i64 %binop.6)
  %14 = tail call addrspace(1) i32 @printk(ptr nonnull @conststr, i32 6, i32 %13, i32 zeroext 21)
  %REG_AXXX_CP_SCRATCH_REG0.7 = load i64, ptr @REG_AXXX_CP_SCRATCH_REG0, align 8
  %binop.7 = add i64 %REG_AXXX_CP_SCRATCH_REG0.7, 7
  %15 = tail call addrspace(1) i32 @gpu_read(ptr %gpu, i64 %binop.7)
  %16 = tail call addrspace(1) i32 @printk(ptr nonnull @conststr, i32 7, i32 %15, i32 zeroext 21)
  %hang_debug = load i64, ptr @hang_debug, align 8
  %cmpi7.not = icmp eq i64 %hang_debug, 0
  br i1 %cmpi7.not, label %if_cont, label %if_then

if_then:                                          ; preds = %body
  %17 = tail call addrspace(1) i32 @a2xx_dump(ptr %gpu)
  br label %if_cont

if_cont:                                          ; preds = %if_then, %body
  %REG_A2XX_RBBM_SOFT_RESET = load i64, ptr @REG_A2XX_RBBM_SOFT_RESET, align 8
  %18 = tail call addrspace(1) i32 @gpu_write(ptr %gpu, i64 %REG_A2XX_RBBM_SOFT_RESET, i32 1)
  %REG_A2XX_RBBM_SOFT_RESET11 = load i64, ptr @REG_A2XX_RBBM_SOFT_RESET, align 8
  %19 = tail call addrspace(1) i32 @gpu_read(ptr %gpu, i64 %REG_A2XX_RBBM_SOFT_RESET11)
  %REG_A2XX_RBBM_SOFT_RESET13 = load i64, ptr @REG_A2XX_RBBM_SOFT_RESET, align 8
  %20 = tail call addrspace(1) i32 @gpu_write(ptr %gpu, i64 %REG_A2XX_RBBM_SOFT_RESET13, i32 0)
  %21 = tail call addrspace(1) i32 @adreno_recover(ptr %gpu)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
