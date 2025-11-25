; ModuleID = 'angha-ll-stm32f1/extr_matroskaenc.c_mkv_check_tag_name.ll'
source_filename = "out/extr_matroskaenc.c_mkv_check_tag_name.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@MATROSKA_ID_TAGTARGETS_ATTACHUID = local_unnamed_addr global i64 0
@MATROSKA_ID_TAGTARGETS_TRACKUID = local_unnamed_addr global i64 0
@conststr = private unnamed_addr constant [5 x i8] c"title"
@conststr.1 = private unnamed_addr constant [11 x i8] c"stereo_mode"
@conststr.2 = private unnamed_addr constant [13 x i8] c"creation_time"
@conststr.3 = private unnamed_addr constant [13 x i8] c"encoding_tool"
@conststr.4 = private unnamed_addr constant [8 x i8] c"duration"
@conststr.5 = private unnamed_addr constant [8 x i8] c"language"
@conststr.6 = private unnamed_addr constant [8 x i8] c"filename"
@conststr.7 = private unnamed_addr constant [8 x i8] c"mimetype"

declare i64 @av_strcasecmp(ptr, ptr, i32 zeroext, i32 zeroext) local_unnamed_addr addrspace(1) #0

define range(i32 0, 2) i32 @mkv_check_tag_name(ptr %name, i64 %elementid, i32 zeroext %name.size) local_unnamed_addr addrspace(1) #0 {
body:
  %0 = tail call addrspace(1) i64 @av_strcasecmp(ptr %name, ptr nonnull @conststr, i32 zeroext %name.size, i32 zeroext 5)
  %cmpi.not = icmp eq i64 %0, 0
  br i1 %cmpi.not, label %phiblock49, label %fullev

fullev:                                           ; preds = %body
  %1 = tail call addrspace(1) i64 @av_strcasecmp(ptr %name, ptr nonnull @conststr.1, i32 zeroext %name.size, i32 zeroext 11)
  %cmpi8.not = icmp eq i64 %1, 0
  br i1 %cmpi8.not, label %phiblock49, label %fullev9

fullev9:                                          ; preds = %fullev
  %2 = tail call addrspace(1) i64 @av_strcasecmp(ptr %name, ptr nonnull @conststr.2, i32 zeroext %name.size, i32 zeroext 13)
  %cmpi15.not = icmp eq i64 %2, 0
  br i1 %cmpi15.not, label %phiblock49, label %fullev17

fullev17:                                         ; preds = %fullev9
  %3 = tail call addrspace(1) i64 @av_strcasecmp(ptr %name, ptr nonnull @conststr.3, i32 zeroext %name.size, i32 zeroext 13)
  %cmpi23.not = icmp eq i64 %3, 0
  br i1 %cmpi23.not, label %phiblock49, label %fullev25

fullev25:                                         ; preds = %fullev17
  %4 = tail call addrspace(1) i64 @av_strcasecmp(ptr %name, ptr nonnull @conststr.4, i32 zeroext %name.size, i32 zeroext 8)
  %cmpi31.not = icmp eq i64 %4, 0
  br i1 %cmpi31.not, label %phiblock49, label %fullev33

fullev33:                                         ; preds = %fullev25
  %MATROSKA_ID_TAGTARGETS_TRACKUID = load i64, ptr @MATROSKA_ID_TAGTARGETS_TRACKUID, align 8
  %cmpi37.not = icmp eq i64 %elementid, %MATROSKA_ID_TAGTARGETS_TRACKUID
  br i1 %cmpi37.not, label %fullev38, label %fullev48

fullev38:                                         ; preds = %fullev33
  %5 = tail call addrspace(1) i64 @av_strcasecmp(ptr %name, ptr nonnull @conststr.5, i32 zeroext %name.size, i32 zeroext 8)
  %cmpi44.not = icmp eq i64 %5, 0
  br i1 %cmpi44.not, label %phiblock49, label %fullev48

fullev48:                                         ; preds = %fullev38, %fullev33
  %MATROSKA_ID_TAGTARGETS_ATTACHUID = load i64, ptr @MATROSKA_ID_TAGTARGETS_ATTACHUID, align 8
  %cmpi52.not = icmp eq i64 %elementid, %MATROSKA_ID_TAGTARGETS_ATTACHUID
  br i1 %cmpi52.not, label %fullev53, label %phiblock49

phiblock49:                                       ; preds = %fullev60, %fullev53, %fullev48, %fullev38, %fullev25, %fullev17, %fullev9, %fullev, %body
  %phi50 = phi i32 [ 0, %fullev38 ], [ 0, %fullev17 ], [ 0, %fullev ], [ 0, %body ], [ 0, %fullev9 ], [ 0, %fullev25 ], [ 1, %fullev48 ], [ 0, %fullev53 ], [ %8, %fullev60 ]
  ret i32 %phi50

fullev53:                                         ; preds = %fullev48
  %6 = tail call addrspace(1) i64 @av_strcasecmp(ptr %name, ptr nonnull @conststr.6, i32 zeroext %name.size, i32 zeroext 8)
  %cmpi59.not = icmp eq i64 %6, 0
  br i1 %cmpi59.not, label %phiblock49, label %fullev60

fullev60:                                         ; preds = %fullev53
  %7 = tail call addrspace(1) i64 @av_strcasecmp(ptr %name, ptr nonnull @conststr.7, i32 zeroext %name.size, i32 zeroext 8)
  %cmpi66 = icmp ne i64 %7, 0
  %8 = zext i1 %cmpi66 to i32
  br label %phiblock49
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
