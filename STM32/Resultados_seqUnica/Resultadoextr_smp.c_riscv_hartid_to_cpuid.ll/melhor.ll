; ModuleID = 'angha-ll-stm32f1/extr_smp.c_riscv_hartid_to_cpuid.ll'
source_filename = "out/extr_smp.c_riscv_hartid_to_cpuid.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@NR_CPUS = local_unnamed_addr global i32 0
@conststr = private unnamed_addr constant [37 x i8] c"Couldn't find cpu id for hartid [%d]\0A"

declare i32 @cpuid_to_hartid_map(i32) local_unnamed_addr addrspace(1) #0

declare i32 @pr_err(ptr, i32, i32 zeroext) local_unnamed_addr addrspace(1) #0

define i32 @riscv_hartid_to_cpuid(i32 %hartid) local_unnamed_addr addrspace(1) #0 {
body:
  %NR_CPUS11 = load i32, ptr @NR_CPUS, align 4
  %cmpi12 = icmp sgt i32 %NR_CPUS11, 0
  br i1 %cmpi12, label %while_body, label %while_end

while_body:                                       ; preds = %if_cont, %body
  %i.013 = phi i32 [ %binop, %if_cont ], [ 0, %body ]
  %0 = tail call addrspace(1) i32 @cpuid_to_hartid_map(i32 %i.013)
  %cmpi5 = icmp eq i32 %0, %hartid
  br i1 %cmpi5, label %common.ret, label %if_cont

common.ret:                                       ; preds = %while_end, %while_body
  %i.010 = phi i32 [ %i.0.lcssa, %while_end ], [ %i.013, %while_body ]
  ret i32 %i.010

while_end:                                        ; preds = %if_cont, %body
  %i.0.lcssa = phi i32 [ 0, %body ], [ %binop, %if_cont ]
  %1 = tail call addrspace(1) i32 @pr_err(ptr nonnull @conststr, i32 %hartid, i32 zeroext 37)
  br label %common.ret

if_cont:                                          ; preds = %while_body
  %binop = add nuw nsw i32 %i.013, 1
  %NR_CPUS = load i32, ptr @NR_CPUS, align 4
  %cmpi = icmp slt i32 %binop, %NR_CPUS
  br i1 %cmpi, label %while_body, label %while_end
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
