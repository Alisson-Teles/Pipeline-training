; ModuleID = 'angha-ll-stm32f1/extr_epub-doc.c_epub_recognize.ll'
source_filename = "out/extr_epub-doc.c_epub_recognize.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@conststr = private unnamed_addr constant [22 x i8] c"META-INF/container.xml"
@conststr.1 = private unnamed_addr constant [22 x i8] c"META-INF\\container.xml"

declare i64 @strstr(ptr, ptr, i32 zeroext, i32 zeroext) local_unnamed_addr addrspace(1) #0

define range(i32 0, 201) i32 @epub_recognize(i32 %doc, ptr %magic, i32 zeroext %magic.size) local_unnamed_addr addrspace(1) #0 {
body:
  %0 = tail call addrspace(1) i64 @strstr(ptr %magic, ptr nonnull @conststr, i32 zeroext %magic.size, i32 zeroext 22)
  %cmpi.not = icmp eq i64 %0, 0
  br i1 %cmpi.not, label %fullev, label %common.ret

fullev:                                           ; preds = %body
  %1 = tail call addrspace(1) i64 @strstr(ptr %magic, ptr nonnull @conststr.1, i32 zeroext %magic.size, i32 zeroext 22)
  %cmpi8.not = icmp eq i64 %1, 0
  %spec.select = select i1 %cmpi8.not, i32 0, i32 200
  br label %common.ret

common.ret:                                       ; preds = %fullev, %body
  %common.ret.op = phi i32 [ 200, %body ], [ %spec.select, %fullev ]
  ret i32 %common.ret.op
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
