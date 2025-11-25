; ModuleID = 'angha-ll-stm32f1/extr_pcm_native.c_period_to_usecs.ll'
source_filename = "out/extr_pcm_native.c_period_to_usecs.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"snd_pcm_runtime:init"(ptr writeonly captures(none) initializes((0, 8)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  %gepperiod_size = getelementptr inbounds nuw i8, ptr %_this, i32 4
  store i32 0, ptr %gepperiod_size, align 4
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read)
define i32 @period_to_usecs(ptr readonly captures(none) %runtime) local_unnamed_addr addrspace(1) #1 {
body:
  %rate2 = load i32, ptr %runtime, align 4
  %cmpi = icmp eq i32 %rate2, 0
  br i1 %cmpi, label %common.ret, label %if_cont

common.ret:                                       ; preds = %if_cont, %body
  %common.ret.op = phi i32 [ %binop21, %if_cont ], [ -1, %body ]
  ret i32 %common.ret.op

if_cont:                                          ; preds = %body
  %rate2.frozen = freeze i32 %rate2
  %binop = sdiv i32 750000, %rate2.frozen
  %period_size = getelementptr inbounds nuw i8, ptr %runtime, i32 4
  %period_size7 = load i32, ptr %period_size, align 4
  %binop8 = mul i32 %period_size7, %binop
  %0 = mul i32 %binop, %rate2.frozen
  %binop12.decomposed = sub i32 750000, %0
  %binop16 = mul i32 %binop12.decomposed, %period_size7
  %binop20 = sdiv i32 %binop16, %rate2
  %binop21 = add i32 %binop20, %binop8
  br label %common.ret
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
