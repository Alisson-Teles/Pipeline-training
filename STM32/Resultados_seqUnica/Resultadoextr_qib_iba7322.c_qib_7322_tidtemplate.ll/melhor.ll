; ModuleID = 'angha-ll-stm32f1/extr_qib_iba7322.c_qib_7322_tidtemplate.ll'
source_filename = "out/extr_qib_iba7322.c_qib_7322_tidtemplate.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@IBA7322_TID_SZ_2K = local_unnamed_addr global i32 0
@IBA7322_TID_SZ_4K = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"qib_devdata:init"(ptr writeonly captures(none) initializes((0, 4), (8, 20)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  %geptidinvalid = getelementptr inbounds nuw i8, ptr %_this, i32 8
  store i64 0, ptr %geptidinvalid, align 8
  %geptidtemplate = getelementptr inbounds nuw i8, ptr %_this, i32 16
  store i32 0, ptr %geptidtemplate, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none)
define void @qib_7322_tidtemplate(ptr captures(none) initializes((8, 16)) %dd) local_unnamed_addr addrspace(1) #1 {
body:
  %rcvegrbufsize2 = load i32, ptr %dd, align 4
  switch i32 %rcvegrbufsize2, label %if_cont12 [
    i32 2048, label %if_cont12.sink.split
    i32 4096, label %if_then8
  ]

if_then8:                                         ; preds = %body
  br label %if_cont12.sink.split

if_cont12.sink.split:                             ; preds = %if_then8, %body
  %IBA7322_TID_SZ_4K.sink14 = phi ptr [ @IBA7322_TID_SZ_4K, %if_then8 ], [ @IBA7322_TID_SZ_2K, %body ]
  %tidtemplate10 = getelementptr inbounds nuw i8, ptr %dd, i32 16
  %IBA7322_TID_SZ_4K = load i32, ptr %IBA7322_TID_SZ_4K.sink14, align 4
  store i32 %IBA7322_TID_SZ_4K, ptr %tidtemplate10, align 4
  br label %if_cont12

if_cont12:                                        ; preds = %if_cont12.sink.split, %body
  %tidinvalid = getelementptr inbounds nuw i8, ptr %dd, i32 8
  store i64 0, ptr %tidinvalid, align 8
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
