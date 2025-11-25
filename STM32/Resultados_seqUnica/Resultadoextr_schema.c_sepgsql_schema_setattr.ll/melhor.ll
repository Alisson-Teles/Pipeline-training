; ModuleID = 'angha-ll-stm32f1/extr_schema.c_sepgsql_schema_setattr.ll'
source_filename = "out/extr_schema.c_sepgsql_schema_setattr.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@SEPG_DB_SCHEMA__SETATTR = local_unnamed_addr global i32 0

declare i32 @check_schema_perms(i32, i32, i32) local_unnamed_addr addrspace(1) #0

define void @sepgsql_schema_setattr(i32 %namespaceId) local_unnamed_addr addrspace(1) #0 {
body:
  %SEPG_DB_SCHEMA__SETATTR = load i32, ptr @SEPG_DB_SCHEMA__SETATTR, align 4
  %0 = tail call addrspace(1) i32 @check_schema_perms(i32 %namespaceId, i32 %SEPG_DB_SCHEMA__SETATTR, i32 1)
  ret void
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
