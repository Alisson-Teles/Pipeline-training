; ModuleID = 'angha-ll-stm32f1/extr_cfg.c_is_jmp_insn.ll'
source_filename = "out/extr_cfg.c_is_jmp_insn.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@BPF_JMP = local_unnamed_addr global i64 0
@BPF_JMP32 = local_unnamed_addr global i64 0

declare i64 @BPF_CLASS(i32) local_unnamed_addr addrspace(1) #0

define range(i32 0, 2) i32 @is_jmp_insn(i32 %code) local_unnamed_addr addrspace(1) #0 {
body:
  %0 = tail call addrspace(1) i64 @BPF_CLASS(i32 %code)
  %BPF_JMP = load i64, ptr @BPF_JMP, align 8
  %cmpi = icmp eq i64 %0, %BPF_JMP
  br i1 %cmpi, label %phiblock, label %fullev

fullev:                                           ; preds = %body
  %1 = tail call addrspace(1) i64 @BPF_CLASS(i32 %code)
  %BPF_JMP32 = load i64, ptr @BPF_JMP32, align 8
  %cmpi4 = icmp eq i64 %1, %BPF_JMP32
  %2 = zext i1 %cmpi4 to i32
  br label %phiblock

phiblock:                                         ; preds = %fullev, %body
  %phi = phi i32 [ 1, %body ], [ %2, %fullev ]
  ret i32 %phi
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
