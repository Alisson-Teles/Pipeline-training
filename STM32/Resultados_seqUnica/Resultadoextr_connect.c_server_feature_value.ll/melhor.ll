; ModuleID = 'angha-ll-stm32f1/extr_connect.c_server_feature_value.ll'
source_filename = "out/extr_connect.c_server_feature_value.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@server_capabilities_v1 = local_unnamed_addr global i32 0

declare zeroext i8 @parse_feature_value(i32, ptr, ptr, i32 zeroext, i32 zeroext) local_unnamed_addr addrspace(1) #0

define zeroext i8 @server_feature_value(ptr %feature, ptr %len, i32 zeroext %feature.size, i32 zeroext %len.size) local_unnamed_addr addrspace(1) #0 {
body:
  %server_capabilities_v1 = load i32, ptr @server_capabilities_v1, align 4
  %0 = tail call zeroext addrspace(1) i8 @parse_feature_value(i32 %server_capabilities_v1, ptr %feature, ptr %len, i32 zeroext %feature.size, i32 zeroext %len.size)
  ret i8 %0
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
