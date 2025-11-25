; ModuleID = 'angha-ll-stm32f1/extr_pg_regress.c_drop_database_if_exists.ll'
source_filename = "out/extr_pg_regress.c_drop_database_if_exists.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@conststr = private unnamed_addr constant [22 x i8] c"dropping database \22%s\22"
@conststr.1 = private unnamed_addr constant [8 x i8] c"postgres"
@conststr.2 = private unnamed_addr constant [28 x i8] c"DROP DATABASE IF EXISTS \22%s\22"

declare i32 @_(ptr, i32 zeroext) local_unnamed_addr addrspace(1) #0

declare i32 @header(i32, ptr, i32 zeroext) local_unnamed_addr addrspace(1) #0

declare i32 @psql_command(ptr, ptr, ptr, i32 zeroext, i32 zeroext, i32 zeroext) local_unnamed_addr addrspace(1) #0

define void @drop_database_if_exists(ptr %dbname, i32 zeroext %dbname.size) local_unnamed_addr addrspace(1) #0 {
body:
  %0 = tail call addrspace(1) i32 @_(ptr nonnull @conststr, i32 zeroext 22)
  %1 = tail call addrspace(1) i32 @header(i32 %0, ptr %dbname, i32 zeroext %dbname.size)
  %2 = tail call addrspace(1) i32 @psql_command(ptr nonnull @conststr.1, ptr nonnull @conststr.2, ptr %dbname, i32 zeroext 8, i32 zeroext 28, i32 zeroext %dbname.size)
  ret void
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
