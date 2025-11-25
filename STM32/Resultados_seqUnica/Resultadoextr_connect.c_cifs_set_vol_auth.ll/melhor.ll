; ModuleID = 'angha-ll-stm32f1/extr_connect.c_cifs_set_vol_auth.ll'
source_filename = "out/extr_connect.c_cifs_set_vol_auth.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@Kerberos = local_unnamed_addr global i64 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"smb_vol:init"(ptr writeonly captures(none) initializes((0, 8)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i64 0, ptr %_this, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"cifs_ses:init"(ptr writeonly captures(none) initializes((0, 8)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i64 0, ptr %_this, align 8
  ret void
}

declare i32 @cifs_set_cifscreds(ptr, ptr) local_unnamed_addr addrspace(1) #1

define i32 @cifs_set_vol_auth(ptr initializes((0, 8)) %vol, ptr %ses) local_unnamed_addr addrspace(1) #1 {
body:
  %sectype5 = load i64, ptr %ses, align 8
  store i64 %sectype5, ptr %vol, align 8
  %Kerberos = load i64, ptr @Kerberos, align 8
  %cmpi = icmp eq i64 %sectype5, %Kerberos
  br i1 %cmpi, label %common.ret, label %if_cont

common.ret:                                       ; preds = %if_cont, %body
  %common.ret.op = phi i32 [ %0, %if_cont ], [ 0, %body ]
  ret i32 %common.ret.op

if_cont:                                          ; preds = %body
  %0 = tail call addrspace(1) i32 @cifs_set_cifscreds(ptr nonnull %vol, ptr nonnull %ses)
  br label %common.ret
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
