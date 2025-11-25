; ModuleID = 'angha-ll-stm32f1/extr_ff.c_clust2sect.ll'
source_filename = "out/extr_ff.c_clust2sect.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"TYPE_3__:init"(ptr writeonly captures(none) initializes((0, 12)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  %gepcsize = getelementptr inbounds nuw i8, ptr %_this, i32 4
  store i32 0, ptr %gepcsize, align 4
  %gepdatabase = getelementptr inbounds nuw i8, ptr %_this, i32 8
  store i32 0, ptr %gepdatabase, align 4
  store i32 0, ptr %_this, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read)
define i32 @clust2sect(ptr readonly captures(none) %fs, i32 %clst) local_unnamed_addr addrspace(1) #1 {
body:
  %binop = add i32 %clst, -2
  %n_fatent4 = load i32, ptr %fs, align 4
  %binop5 = add i32 %n_fatent4, -2
  %cmpi.not = icmp slt i32 %binop, %binop5
  br i1 %cmpi.not, label %if_cont, label %common.ret

common.ret:                                       ; preds = %if_cont, %body
  %common.ret.op = phi i32 [ %binop12, %if_cont ], [ 0, %body ]
  ret i32 %common.ret.op

if_cont:                                          ; preds = %body
  %csize = getelementptr inbounds nuw i8, ptr %fs, i32 4
  %csize8 = load i32, ptr %csize, align 4
  %binop9 = mul i32 %csize8, %binop
  %database = getelementptr inbounds nuw i8, ptr %fs, i32 8
  %database11 = load i32, ptr %database, align 4
  %binop12 = add i32 %binop9, %database11
  br label %common.ret
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
