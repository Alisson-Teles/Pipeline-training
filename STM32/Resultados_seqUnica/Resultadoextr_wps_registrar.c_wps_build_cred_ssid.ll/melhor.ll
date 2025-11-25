; ModuleID = 'angha-ll-stm32f1/extr_wps_registrar.c_wps_build_cred_ssid.ll'
source_filename = "out/extr_wps_registrar.c_wps_build_cred_ssid.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@ATTR_SSID = local_unnamed_addr global i32 0
@MSG_DEBUG = local_unnamed_addr global i32 0
@conststr = private unnamed_addr constant [12 x i8] c"WPS:  * SSID"
@conststr.1 = private unnamed_addr constant [24 x i8] c"WPS: SSID for Credential"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"wps_credential:init"(ptr writeonly captures(none) initializes((0, 8)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  %gepssid = getelementptr inbounds nuw i8, ptr %_this, i32 4
  store i32 0, ptr %gepssid, align 4
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"wpabuf:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @wpa_hexdump_ascii(i32, ptr, i32, i32, i32 zeroext) local_unnamed_addr addrspace(1) #1

declare i32 @wpa_printf(i32, ptr, i32 zeroext) local_unnamed_addr addrspace(1) #1

declare i32 @wpabuf_put_be16(ptr, i32) local_unnamed_addr addrspace(1) #1

declare i32 @wpabuf_put_data(ptr, i32, i32) local_unnamed_addr addrspace(1) #1

define noundef i32 @wps_build_cred_ssid(ptr %msg, ptr readonly captures(none) %cred) local_unnamed_addr addrspace(1) #1 {
body:
  %MSG_DEBUG = load i32, ptr @MSG_DEBUG, align 4
  %0 = tail call addrspace(1) i32 @wpa_printf(i32 %MSG_DEBUG, ptr nonnull @conststr, i32 zeroext 12)
  %MSG_DEBUG3 = load i32, ptr @MSG_DEBUG, align 4
  %ssid = getelementptr inbounds nuw i8, ptr %cred, i32 4
  %ssid4 = load i32, ptr %ssid, align 4
  %ssid_len6 = load i32, ptr %cred, align 4
  %1 = tail call addrspace(1) i32 @wpa_hexdump_ascii(i32 %MSG_DEBUG3, ptr nonnull @conststr.1, i32 %ssid4, i32 %ssid_len6, i32 zeroext 24)
  %ATTR_SSID = load i32, ptr @ATTR_SSID, align 4
  %2 = tail call addrspace(1) i32 @wpabuf_put_be16(ptr %msg, i32 %ATTR_SSID)
  %ssid_len11 = load i32, ptr %cred, align 4
  %3 = tail call addrspace(1) i32 @wpabuf_put_be16(ptr %msg, i32 %ssid_len11)
  %ssid15 = load i32, ptr %ssid, align 4
  %ssid_len18 = load i32, ptr %cred, align 4
  %4 = tail call addrspace(1) i32 @wpabuf_put_data(ptr %msg, i32 %ssid15, i32 %ssid_len18)
  ret i32 0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
