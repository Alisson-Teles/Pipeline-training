; ModuleID = 'angha-ll-stm32f1/extr_sljitNativeARM_T2_32.c_emit_set_delta.ll'
source_filename = "out/extr_sljitNativeARM_T2_32.c_emit_set_delta.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@ADDWI = local_unnamed_addr global i32 0
@ADD_WI = local_unnamed_addr global i32 0
@INVALID_IMM = local_unnamed_addr global i32 0
@SLJIT_ERR_UNSUPPORTED = local_unnamed_addr global i32 0
@SUBWI = local_unnamed_addr global i32 0
@SUB_WI = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"sljit_compiler:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @IMM12(i32) local_unnamed_addr addrspace(1) #1

declare i32 @RD4(i32) local_unnamed_addr addrspace(1) #1

declare i32 @RN4(i32) local_unnamed_addr addrspace(1) #1

declare i32 @get_imm(i32) local_unnamed_addr addrspace(1) #1

declare i32 @push_inst32(ptr, i32) local_unnamed_addr addrspace(1) #1

define i32 @emit_set_delta(ptr %compiler, i32 %dst, i32 %reg, i32 %value) local_unnamed_addr addrspace(1) #1 {
body:
  %cmpi = icmp sgt i32 %value, -1
  br i1 %cmpi, label %if_then, label %if_else27

if_then:                                          ; preds = %body
  %cmpi7 = icmp slt i32 %value, 4096
  br i1 %cmpi7, label %if_then8, label %if_cont

common.ret:                                       ; preds = %if_cont56, %if_then46, %if_then32, %if_then17, %if_then8
  %common.ret.op = phi i32 [ %3, %if_then8 ], [ %9, %if_then17 ], [ %13, %if_then32 ], [ %19, %if_then46 ], [ %SLJIT_ERR_UNSUPPORTED, %if_cont56 ]
  ret i32 %common.ret.op

if_then8:                                         ; preds = %if_then
  %ADDWI = load i32, ptr @ADDWI, align 4
  %0 = tail call addrspace(1) i32 @RD4(i32 %dst)
  %binop = or i32 %0, %ADDWI
  %1 = tail call addrspace(1) i32 @RN4(i32 %reg)
  %binop11 = or i32 %binop, %1
  %2 = tail call addrspace(1) i32 @IMM12(i32 %value)
  %binop13 = or i32 %binop11, %2
  %3 = tail call addrspace(1) i32 @push_inst32(ptr %compiler, i32 %binop13)
  br label %common.ret

if_cont:                                          ; preds = %if_then
  %4 = tail call addrspace(1) i32 @get_imm(i32 %value)
  %INVALID_IMM = load i32, ptr @INVALID_IMM, align 4
  %cmpi16.not = icmp eq i32 %4, %INVALID_IMM
  br i1 %cmpi16.not, label %if_cont56, label %if_then17

if_then17:                                        ; preds = %if_cont
  %ADD_WI = load i32, ptr @ADD_WI, align 4
  %5 = tail call addrspace(1) i32 @RD4(i32 %dst)
  %6 = tail call addrspace(1) i32 @RN4(i32 %reg)
  %7 = or i32 %ADD_WI, %4
  %8 = or i32 %7, %5
  %binop24 = or i32 %8, %6
  %9 = tail call addrspace(1) i32 @push_inst32(ptr %compiler, i32 %binop24)
  br label %common.ret

if_else27:                                        ; preds = %body
  %binop29 = sub i32 0, %value
  %cmpi31 = icmp slt i32 %binop29, 4096
  br i1 %cmpi31, label %if_then32, label %if_cont41

if_then32:                                        ; preds = %if_else27
  %SUBWI = load i32, ptr @SUBWI, align 4
  %10 = tail call addrspace(1) i32 @RD4(i32 %dst)
  %binop35 = or i32 %10, %SUBWI
  %11 = tail call addrspace(1) i32 @RN4(i32 %reg)
  %binop37 = or i32 %binop35, %11
  %12 = tail call addrspace(1) i32 @IMM12(i32 %binop29)
  %binop39 = or i32 %binop37, %12
  %13 = tail call addrspace(1) i32 @push_inst32(ptr %compiler, i32 %binop39)
  br label %common.ret

if_cont41:                                        ; preds = %if_else27
  %14 = tail call addrspace(1) i32 @get_imm(i32 %binop29)
  %INVALID_IMM44 = load i32, ptr @INVALID_IMM, align 4
  %cmpi45.not = icmp eq i32 %14, %INVALID_IMM44
  br i1 %cmpi45.not, label %if_cont56, label %if_then46

if_then46:                                        ; preds = %if_cont41
  %SUB_WI = load i32, ptr @SUB_WI, align 4
  %15 = tail call addrspace(1) i32 @RD4(i32 %dst)
  %16 = tail call addrspace(1) i32 @RN4(i32 %reg)
  %17 = or i32 %SUB_WI, %14
  %18 = or i32 %17, %15
  %binop53 = or i32 %18, %16
  %19 = tail call addrspace(1) i32 @push_inst32(ptr %compiler, i32 %binop53)
  br label %common.ret

if_cont56:                                        ; preds = %if_cont41, %if_cont
  %SLJIT_ERR_UNSUPPORTED = load i32, ptr @SLJIT_ERR_UNSUPPORTED, align 4
  br label %common.ret
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
