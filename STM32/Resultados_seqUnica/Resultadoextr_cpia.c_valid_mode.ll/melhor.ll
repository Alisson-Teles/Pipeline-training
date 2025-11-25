; ModuleID = 'angha-ll-stm32f1/extr_cpia.c_valid_mode.ll'
source_filename = "out/extr_cpia.c_valid_mode.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@VIDEO_PALETTE_GREY = local_unnamed_addr global i64 0
@VIDEO_PALETTE_RGB24 = local_unnamed_addr global i64 0
@VIDEO_PALETTE_RGB32 = local_unnamed_addr global i64 0
@VIDEO_PALETTE_RGB555 = local_unnamed_addr global i64 0
@VIDEO_PALETTE_RGB565 = local_unnamed_addr global i64 0
@VIDEO_PALETTE_UYVY = local_unnamed_addr global i64 0
@VIDEO_PALETTE_YUV422 = local_unnamed_addr global i64 0
@VIDEO_PALETTE_YUYV = local_unnamed_addr global i64 0
@colorspace_conv = local_unnamed_addr global i64 0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none)
define range(i32 0, 2) i32 @valid_mode(i64 %palette, i64 %depth) local_unnamed_addr addrspace(1) #0 {
body:
  %VIDEO_PALETTE_YUV422 = load i64, ptr @VIDEO_PALETTE_YUV422, align 8
  %cmpi = icmp eq i64 %palette, %VIDEO_PALETTE_YUV422
  %cmpi5 = icmp eq i64 %depth, 16
  %phi = select i1 %cmpi, i1 %cmpi5, i1 false
  br i1 %phi, label %common.ret, label %fullev7

fullev7:                                          ; preds = %body
  %VIDEO_PALETTE_YUYV = load i64, ptr @VIDEO_PALETTE_YUYV, align 8
  %cmpi11 = icmp eq i64 %palette, %VIDEO_PALETTE_YUYV
  %spec.select = select i1 %cmpi11, i1 %cmpi5, i1 false
  br i1 %spec.select, label %common.ret, label %if_cont

common.ret:                                       ; preds = %fullev89, %fullev75, %fullev61, %fullev47, %fullev33, %if_then22, %if_cont, %fullev7, %body
  %common.ret.op = phi i32 [ 1, %body ], [ 1, %fullev7 ], [ 1, %fullev75 ], [ %phi96, %fullev89 ], [ 1, %fullev47 ], [ 1, %if_then22 ], [ 1, %fullev33 ], [ 1, %fullev61 ], [ 0, %if_cont ]
  ret i32 %common.ret.op

if_cont:                                          ; preds = %fullev7
  %colorspace_conv = load i64, ptr @colorspace_conv, align 8
  %cmpi21.not = icmp eq i64 %colorspace_conv, 0
  br i1 %cmpi21.not, label %common.ret, label %if_then22

if_then22:                                        ; preds = %if_cont
  %VIDEO_PALETTE_GREY = load i64, ptr @VIDEO_PALETTE_GREY, align 8
  %cmpi24 = icmp eq i64 %palette, %VIDEO_PALETTE_GREY
  %cmpi29 = icmp eq i64 %depth, 8
  %spec.select105 = select i1 %cmpi24, i1 %cmpi29, i1 false
  br i1 %spec.select105, label %common.ret, label %fullev33

fullev33:                                         ; preds = %if_then22
  %VIDEO_PALETTE_RGB555 = load i64, ptr @VIDEO_PALETTE_RGB555, align 8
  %cmpi37 = icmp eq i64 %palette, %VIDEO_PALETTE_RGB555
  %spec.select106 = select i1 %cmpi37, i1 %cmpi5, i1 false
  br i1 %spec.select106, label %common.ret, label %fullev47

fullev47:                                         ; preds = %fullev33
  %VIDEO_PALETTE_RGB565 = load i64, ptr @VIDEO_PALETTE_RGB565, align 8
  %cmpi51 = icmp eq i64 %palette, %VIDEO_PALETTE_RGB565
  %spec.select107 = select i1 %cmpi51, i1 %cmpi5, i1 false
  br i1 %spec.select107, label %common.ret, label %fullev61

fullev61:                                         ; preds = %fullev47
  %VIDEO_PALETTE_RGB24 = load i64, ptr @VIDEO_PALETTE_RGB24, align 8
  %cmpi65 = icmp eq i64 %palette, %VIDEO_PALETTE_RGB24
  %cmpi70 = icmp eq i64 %depth, 24
  %spec.select108 = select i1 %cmpi65, i1 %cmpi70, i1 false
  br i1 %spec.select108, label %common.ret, label %fullev75

fullev75:                                         ; preds = %fullev61
  %VIDEO_PALETTE_RGB32 = load i64, ptr @VIDEO_PALETTE_RGB32, align 8
  %cmpi79 = icmp eq i64 %palette, %VIDEO_PALETTE_RGB32
  %cmpi84 = icmp eq i64 %depth, 32
  %spec.select109 = select i1 %cmpi79, i1 %cmpi84, i1 false
  br i1 %spec.select109, label %common.ret, label %fullev89

fullev89:                                         ; preds = %fullev75
  %VIDEO_PALETTE_UYVY = load i64, ptr @VIDEO_PALETTE_UYVY, align 8
  %cmpi93 = icmp eq i64 %palette, %VIDEO_PALETTE_UYVY
  %narrow = select i1 %cmpi93, i1 %cmpi5, i1 false
  %phi96 = zext i1 %narrow to i32
  br label %common.ret
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
