; ModuleID = 'angha-ll-stm32f1/extr_snprintf.c_my_strnlen.ll'
source_filename = "out/extr_snprintf.c_my_strnlen.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read)
define i32 @my_strnlen(ptr readonly captures(none) %s, i32 %max, i32 zeroext %s.size) local_unnamed_addr addrspace(1) #0 {
body:
  %cmpi11 = icmp sgt i32 %max, 0
  br i1 %cmpi11, label %while_body, label %common.ret

while_body:                                       ; preds = %if_cont.3, %body
  %i.012 = phi i32 [ %binop.3, %if_cont.3 ], [ 0, %body ]
  %elemgep = getelementptr [0 x i8], ptr %s, i32 0, i32 %i.012
  %deref7 = load i8, ptr %elemgep, align 1
  %cmpi8 = icmp eq i8 %deref7, 0
  br i1 %cmpi8, label %common.ret, label %if_cont

common.ret:                                       ; preds = %if_cont.3, %while_body.3, %if_cont.2, %while_body.2, %if_cont.1, %while_body.1, %if_cont, %while_body, %body
  %common.ret.op = phi i32 [ %max, %body ], [ %max, %if_cont ], [ %i.012, %while_body ], [ %binop, %while_body.1 ], [ %max, %if_cont.1 ], [ %binop.1, %while_body.2 ], [ %max, %if_cont.2 ], [ %binop.2, %while_body.3 ], [ %max, %if_cont.3 ]
  ret i32 %common.ret.op

if_cont:                                          ; preds = %while_body
  %binop = or disjoint i32 %i.012, 1
  %exitcond.not = icmp eq i32 %binop, %max
  br i1 %exitcond.not, label %common.ret, label %while_body.1

while_body.1:                                     ; preds = %if_cont
  %elemgep.1 = getelementptr [0 x i8], ptr %s, i32 0, i32 %binop
  %deref7.1 = load i8, ptr %elemgep.1, align 1
  %cmpi8.1 = icmp eq i8 %deref7.1, 0
  br i1 %cmpi8.1, label %common.ret, label %if_cont.1

if_cont.1:                                        ; preds = %while_body.1
  %binop.1 = or disjoint i32 %i.012, 2
  %exitcond.not.1 = icmp eq i32 %binop.1, %max
  br i1 %exitcond.not.1, label %common.ret, label %while_body.2

while_body.2:                                     ; preds = %if_cont.1
  %elemgep.2 = getelementptr [0 x i8], ptr %s, i32 0, i32 %binop.1
  %deref7.2 = load i8, ptr %elemgep.2, align 1
  %cmpi8.2 = icmp eq i8 %deref7.2, 0
  br i1 %cmpi8.2, label %common.ret, label %if_cont.2

if_cont.2:                                        ; preds = %while_body.2
  %binop.2 = or disjoint i32 %i.012, 3
  %exitcond.not.2 = icmp eq i32 %binop.2, %max
  br i1 %exitcond.not.2, label %common.ret, label %while_body.3

while_body.3:                                     ; preds = %if_cont.2
  %elemgep.3 = getelementptr [0 x i8], ptr %s, i32 0, i32 %binop.2
  %deref7.3 = load i8, ptr %elemgep.3, align 1
  %cmpi8.3 = icmp eq i8 %deref7.3, 0
  br i1 %cmpi8.3, label %common.ret, label %if_cont.3

if_cont.3:                                        ; preds = %while_body.3
  %binop.3 = add nuw nsw i32 %i.012, 4
  %exitcond.not.3 = icmp eq i32 %binop.3, %max
  br i1 %exitcond.not.3, label %common.ret, label %while_body
}

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
