; ModuleID = 'angha-ll-stm32f1/extr_zend_inference.c_get_ssa_alias_types.ll'
source_filename = "out/extr_zend_inference.c_get_ssa_alias_types.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@HTTP_RESPONSE_HEADER_ALIAS = local_unnamed_addr global i64 0
@MAY_BE_ANY = local_unnamed_addr global i32 0
@MAY_BE_ARRAY = local_unnamed_addr global i32 0
@MAY_BE_ARRAY_KEY_ANY = local_unnamed_addr global i32 0
@MAY_BE_ARRAY_KEY_LONG = local_unnamed_addr global i32 0
@MAY_BE_ARRAY_OF_ANY = local_unnamed_addr global i32 0
@MAY_BE_ARRAY_OF_REF = local_unnamed_addr global i32 0
@MAY_BE_ARRAY_OF_STRING = local_unnamed_addr global i32 0
@MAY_BE_RC1 = local_unnamed_addr global i32 0
@MAY_BE_RCN = local_unnamed_addr global i32 0
@MAY_BE_REF = local_unnamed_addr global i32 0
@MAY_BE_UNDEF = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none)
define i32 @get_ssa_alias_types(i64 %alias) local_unnamed_addr addrspace(1) #0 {
body:
  %HTTP_RESPONSE_HEADER_ALIAS = load i64, ptr @HTTP_RESPONSE_HEADER_ALIAS, align 8
  %cmpi = icmp eq i64 %alias, %HTTP_RESPONSE_HEADER_ALIAS
  br i1 %cmpi, label %if_then, label %if_else

common.ret:                                       ; preds = %if_else, %if_then
  %MAY_BE_ARRAY_KEY_ANY.sink17 = phi ptr [ @MAY_BE_ARRAY_KEY_ANY, %if_else ], [ @MAY_BE_ARRAY_OF_STRING, %if_then ]
  %binop11.sink = phi i32 [ %binop11, %if_else ], [ %binop, %if_then ]
  %MAY_BE_ARRAY_OF_ANY.sink16 = phi ptr [ @MAY_BE_ARRAY_OF_ANY, %if_else ], [ @MAY_BE_RC1, %if_then ]
  %MAY_BE_ARRAY_OF_REF.sink15 = phi ptr [ @MAY_BE_ARRAY_OF_REF, %if_else ], [ @MAY_BE_RCN, %if_then ]
  %MAY_BE_ARRAY_KEY_ANY = load i32, ptr %MAY_BE_ARRAY_KEY_ANY.sink17, align 4
  %binop12 = or i32 %binop11.sink, %MAY_BE_ARRAY_KEY_ANY
  %MAY_BE_ARRAY_OF_ANY = load i32, ptr %MAY_BE_ARRAY_OF_ANY.sink16, align 4
  %binop13 = or i32 %binop12, %MAY_BE_ARRAY_OF_ANY
  %MAY_BE_ARRAY_OF_REF = load i32, ptr %MAY_BE_ARRAY_OF_REF.sink15, align 4
  %binop14 = or i32 %binop13, %MAY_BE_ARRAY_OF_REF
  ret i32 %binop14

if_then:                                          ; preds = %body
  %MAY_BE_ARRAY = load i32, ptr @MAY_BE_ARRAY, align 4
  %MAY_BE_ARRAY_KEY_LONG = load i32, ptr @MAY_BE_ARRAY_KEY_LONG, align 4
  %binop = or i32 %MAY_BE_ARRAY_KEY_LONG, %MAY_BE_ARRAY
  br label %common.ret

if_else:                                          ; preds = %body
  %MAY_BE_UNDEF = load i32, ptr @MAY_BE_UNDEF, align 4
  %MAY_BE_RC16 = load i32, ptr @MAY_BE_RC1, align 4
  %binop7 = or i32 %MAY_BE_RC16, %MAY_BE_UNDEF
  %MAY_BE_RCN8 = load i32, ptr @MAY_BE_RCN, align 4
  %binop9 = or i32 %binop7, %MAY_BE_RCN8
  %MAY_BE_REF = load i32, ptr @MAY_BE_REF, align 4
  %binop10 = or i32 %binop9, %MAY_BE_REF
  %MAY_BE_ANY = load i32, ptr @MAY_BE_ANY, align 4
  %binop11 = or i32 %binop10, %MAY_BE_ANY
  br label %common.ret
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
