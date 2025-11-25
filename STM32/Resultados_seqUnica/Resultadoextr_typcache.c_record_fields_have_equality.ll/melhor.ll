; ModuleID = 'angha-ll-stm32f1/extr_typcache.c_record_fields_have_equality.ll'
source_filename = "out/extr_typcache.c_record_fields_have_equality.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@TCFLAGS_CHECKED_FIELD_PROPERTIES = local_unnamed_addr global i32 0
@TCFLAGS_HAVE_FIELD_EQUALITY = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"TYPE_4__:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @cache_record_field_properties(ptr) local_unnamed_addr addrspace(1) #1

define range(i32 0, 2) i32 @record_fields_have_equality(ptr %typentry) local_unnamed_addr addrspace(1) #1 {
body:
  %flags2 = load i32, ptr %typentry, align 4
  %TCFLAGS_CHECKED_FIELD_PROPERTIES = load i32, ptr @TCFLAGS_CHECKED_FIELD_PROPERTIES, align 4
  %binop = and i32 %TCFLAGS_CHECKED_FIELD_PROPERTIES, %flags2
  %cmpi = icmp eq i32 %binop, 0
  br i1 %cmpi, label %if_then, label %if_cont

if_then:                                          ; preds = %body
  %0 = tail call addrspace(1) i32 @cache_record_field_properties(ptr nonnull %typentry)
  br label %if_cont

if_cont:                                          ; preds = %if_then, %body
  %flags6 = load i32, ptr %typentry, align 4
  %TCFLAGS_HAVE_FIELD_EQUALITY = load i32, ptr @TCFLAGS_HAVE_FIELD_EQUALITY, align 4
  %binop7 = and i32 %TCFLAGS_HAVE_FIELD_EQUALITY, %flags6
  %cmpi8 = icmp ne i32 %binop7, 0
  %zext = zext i1 %cmpi8 to i32
  ret i32 %zext
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
