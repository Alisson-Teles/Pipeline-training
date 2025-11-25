; ModuleID = 'angha-ll-stm32f1/extr_kuhl_m_sekurlsa_nt5.c_kuhl_m_sekurlsa_nt5_isOld.ll'
source_filename = "out/extr_kuhl_m_sekurlsa_nt5.c_kuhl_m_sekurlsa_nt5_isOld.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@FALSE = local_unnamed_addr global i32 0
@KULL_M_WIN_BUILD_2K3 = local_unnamed_addr global i64 0
@TRUE = local_unnamed_addr global i32 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none)
define i32 @kuhl_m_sekurlsa_nt5_isOld(i64 %osBuildNumber, i64 %moduleTimeStamp) local_unnamed_addr addrspace(1) #0 {
body:
  %FALSE = load i32, ptr @FALSE, align 4
  %KULL_M_WIN_BUILD_2K3 = load i64, ptr @KULL_M_WIN_BUILD_2K3, align 8
  %cmpi = icmp eq i64 %osBuildNumber, %KULL_M_WIN_BUILD_2K3
  br i1 %cmpi, label %if_then, label %if_cont14

if_then:                                          ; preds = %body
  %cmpi5 = icmp eq i64 %moduleTimeStamp, 1234179648
  br i1 %cmpi5, label %if_then6, label %if_else

if_then6:                                         ; preds = %if_then
  %TRUE = load i32, ptr @TRUE, align 4
  br label %if_cont14

if_else:                                          ; preds = %if_then
  %cmpi8 = icmp slt i64 %moduleTimeStamp, 1171720803
  %TRUE10 = load i32, ptr @TRUE, align 4
  %status.0 = select i1 %cmpi8, i32 %TRUE10, i32 %FALSE
  br label %if_cont14

if_cont14:                                        ; preds = %if_else, %if_then6, %body
  %status.2 = phi i32 [ %TRUE, %if_then6 ], [ %status.0, %if_else ], [ %FALSE, %body ]
  ret i32 %status.2
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
