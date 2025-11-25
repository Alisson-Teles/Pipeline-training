; ModuleID = 'angha-ll-stm32f1/extr_eap_server_aka.c_eap_aka_state.ll'
source_filename = "out/extr_eap_server_aka.c_eap_aka_state.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@MSG_DEBUG = local_unnamed_addr global i32 0
@conststr = private unnamed_addr constant [17 x i8] c"EAP-AKA: %s -> %s"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"eap_aka_data:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @eap_aka_state_txt(i32) local_unnamed_addr addrspace(1) #1

declare i32 @wpa_printf(i32, ptr, i32, i32, i32 zeroext) local_unnamed_addr addrspace(1) #1

define void @eap_aka_state(ptr captures(none) %data, i32 %state) local_unnamed_addr addrspace(1) #1 {
body:
  %MSG_DEBUG = load i32, ptr @MSG_DEBUG, align 4
  %state4 = load i32, ptr %data, align 4
  %0 = tail call addrspace(1) i32 @eap_aka_state_txt(i32 %state4)
  %1 = tail call addrspace(1) i32 @eap_aka_state_txt(i32 %state)
  %2 = tail call addrspace(1) i32 @wpa_printf(i32 %MSG_DEBUG, ptr nonnull @conststr, i32 %0, i32 %1, i32 zeroext 17)
  store i32 %state, ptr %data, align 4
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
