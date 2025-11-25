; ModuleID = 'angha-ll-stm32f1/extr_hpdf_fontdef_cnt.c_MingLiU_Bold_Init.ll'
source_filename = "out/extr_hpdf_fontdef_cnt.c_MingLiU_Bold_Init.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@HPDF_FALSE = local_unnamed_addr global i32 0
@HPDF_OK = local_unnamed_addr global i64 0
@HPDF_TRUE = local_unnamed_addr global i32 0

declare i64 @HPDF_CIDFontDef_ChangeStyle(i32, i32, i32) local_unnamed_addr addrspace(1) #0

declare i64 @MingLiU_Init(i32) local_unnamed_addr addrspace(1) #0

define i64 @MingLiU_Bold_Init(i32 %fontdef) local_unnamed_addr addrspace(1) #0 {
body:
  %0 = tail call addrspace(1) i64 @MingLiU_Init(i32 %fontdef)
  %HPDF_OK = load i64, ptr @HPDF_OK, align 8
  %cmpi.not = icmp eq i64 %0, %HPDF_OK
  br i1 %cmpi.not, label %if_cont, label %common.ret

common.ret:                                       ; preds = %if_cont, %body
  %common.ret.op = phi i64 [ %1, %if_cont ], [ %0, %body ]
  ret i64 %common.ret.op

if_cont:                                          ; preds = %body
  %HPDF_TRUE = load i32, ptr @HPDF_TRUE, align 4
  %HPDF_FALSE = load i32, ptr @HPDF_FALSE, align 4
  %1 = tail call addrspace(1) i64 @HPDF_CIDFontDef_ChangeStyle(i32 %fontdef, i32 %HPDF_TRUE, i32 %HPDF_FALSE)
  br label %common.ret
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
