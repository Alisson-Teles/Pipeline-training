; ModuleID = 'angha-ll-stm32f1/extr_output.c_php_output_stdout.ll'
source_filename = "out/extr_output.c_php_output_stdout.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@stdout = local_unnamed_addr global i32 0

declare i32 @fwrite(ptr, i32, i32 zeroext, i32, i32 zeroext) local_unnamed_addr addrspace(1) #0

define zeroext i32 @php_output_stdout(ptr %str, i32 returned zeroext %str_len, i32 zeroext %str.size) local_unnamed_addr addrspace(1) #0 {
body:
  %stdout = load i32, ptr @stdout, align 4
  %0 = tail call addrspace(1) i32 @fwrite(ptr %str, i32 1, i32 zeroext %str_len, i32 %stdout, i32 zeroext %str.size)
  ret i32 %str_len
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
