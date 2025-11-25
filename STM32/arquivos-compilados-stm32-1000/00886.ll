; ModuleID = 'out/00886.rob'
source_filename = "out/00886.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@crc32_context = local_unnamed_addr global i64 0
@__undefined = local_unnamed_addr global i64 0

declare void @platform_main_begin() local_unnamed_addr addrspace(1) #0

declare void @crc32_gentab() local_unnamed_addr addrspace(1) #0

declare void @platform_main_end(i64 zeroext, i32) local_unnamed_addr addrspace(1) #0

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define i8 @safe_unary_minus_func_int8_t_s(i8 %si) local_unnamed_addr addrspace(1) #1 {
body:
  %binop = sub i8 0, %si
  ret i8 %binop
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define i8 @safe_add_func_int8_t_s_s(i8 %si1, i8 %si2) local_unnamed_addr addrspace(1) #1 {
body:
  %cmpi = icmp sgt i8 %si1, 0
  %cmpi5 = icmp sgt i8 %si2, 0
  %binop = sub i8 127, %si2
  %cmpi11 = icmp sgt i8 %si1, %binop
  %0 = and i1 %cmpi5, %cmpi11
  %or.cond = select i1 %cmpi, i1 %0, i1 false
  br i1 %or.cond, label %common.ret, label %fullev13

fullev13:                                         ; preds = %body
  %cmpi17 = icmp slt i8 %si1, 0
  %cmpi22 = icmp slt i8 %si2, 0
  %spec.select = select i1 %cmpi17, i1 %cmpi22, i1 false
  %narrow = sub nsw i8 -128, %si2
  %cmpi31 = icmp sgt i8 %narrow, %si1
  %or.cond38 = select i1 %spec.select, i1 %cmpi31, i1 false
  %binop37 = select i1 %or.cond38, i8 0, i8 %si2
  %spec.select39 = add i8 %si1, %binop37
  br label %common.ret

common.ret:                                       ; preds = %fullev13, %body
  %common.ret.op = phi i8 [ %si1, %body ], [ %spec.select39, %fullev13 ]
  ret i8 %common.ret.op
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define i8 @safe_sub_func_int8_t_s_s(i8 %si1, i8 %si2) local_unnamed_addr addrspace(1) #1 {
body:
  %binop7 = xor i8 %si2, %si1
  %binop10 = and i8 %binop7, -128
  %0 = xor i8 %binop10, -1
  %1 = add i8 %si2, %0
  %binop18 = and i8 %binop7, %1
  %cmpi = icmp slt i8 %binop18, 0
  %binop = select i1 %cmpi, i8 0, i8 %si2
  %spec.select = sub i8 %si1, %binop
  ret i8 %spec.select
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define i8 @safe_mul_func_int8_t_s_s(i8 %si1, i8 %si2) local_unnamed_addr addrspace(1) #1 {
body:
  %cmpi = icmp sgt i8 %si1, 0
  %cmpi5 = icmp sgt i8 %si2, 0
  %phi = select i1 %cmpi, i1 %cmpi5, i1 false
  br i1 %phi, label %fullev6, label %fullev13

fullev6:                                          ; preds = %body
  %binop = udiv i8 127, %si2
  %cmpi11 = icmp sgt i8 %si1, %binop
  br i1 %cmpi11, label %common.ret, label %fullev13

fullev13:                                         ; preds = %body, %fullev6
  %cmpi22 = icmp slt i8 %si2, 1
  %spec.select = select i1 %cmpi, i1 %cmpi22, i1 false
  br i1 %spec.select, label %fullev24, label %fullev34

fullev24:                                         ; preds = %fullev13
  %intcast = sext i8 %si2 to i16
  %intcast29 = zext nneg i8 %si1 to i16
  %binop30 = sdiv i16 -128, %intcast29
  %cmpi31 = icmp sgt i16 %binop30, %intcast
  br i1 %cmpi31, label %common.ret, label %fullev34

fullev34:                                         ; preds = %fullev13, %fullev24
  %cmpi38 = icmp slt i8 %si1, 1
  %spec.select86 = select i1 %cmpi38, i1 %cmpi5, i1 false
  br i1 %spec.select86, label %fullev45, label %fullev56

fullev45:                                         ; preds = %fullev34
  %intcast49 = sext i8 %si1 to i16
  %intcast51 = zext nneg i8 %si2 to i16
  %binop52 = sdiv i16 -128, %intcast51
  %cmpi53 = icmp sgt i16 %binop52, %intcast49
  br i1 %cmpi53, label %common.ret, label %fullev56

fullev56:                                         ; preds = %fullev34, %fullev45
  %0 = icmp slt i8 %si1, 0
  %or.cond = select i1 %0, i1 %cmpi22, i1 false
  br i1 %or.cond, label %fullev73, label %if_cont

fullev73:                                         ; preds = %fullev56
  %binop78 = sdiv i8 127, %si1
  %cmpi79 = icmp slt i8 %si2, %binop78
  br i1 %cmpi79, label %common.ret, label %if_cont

common.ret:                                       ; preds = %fullev73, %fullev24, %fullev6, %fullev45, %if_cont
  %common.ret.op = phi i8 [ %binop85, %if_cont ], [ %si1, %fullev45 ], [ %si1, %fullev6 ], [ %si1, %fullev24 ], [ %si1, %fullev73 ]
  ret i8 %common.ret.op

if_cont:                                          ; preds = %fullev73, %fullev56
  %binop85 = mul i8 %si2, %si1
  br label %common.ret
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define i8 @safe_mod_func_int8_t_s_s(i8 %si1, i8 %si2) local_unnamed_addr addrspace(1) #1 {
body:
  %cmpi = icmp eq i8 %si2, 0
  br i1 %cmpi, label %common.ret, label %fullev

fullev:                                           ; preds = %body
  %cmpi5 = icmp eq i8 %si1, -128
  %cmpi10 = icmp eq i8 %si2, -1
  %spec.select = and i1 %cmpi5, %cmpi10
  br i1 %spec.select, label %common.ret, label %if_cont

common.ret:                                       ; preds = %fullev, %body, %if_cont
  %common.ret.op = phi i8 [ %binop, %if_cont ], [ %si1, %body ], [ %si1, %fullev ]
  ret i8 %common.ret.op

if_cont:                                          ; preds = %fullev
  %binop = srem i8 %si1, %si2
  br label %common.ret
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define i8 @safe_div_func_int8_t_s_s(i8 %si1, i8 %si2) local_unnamed_addr addrspace(1) #1 {
body:
  %cmpi = icmp eq i8 %si2, 0
  br i1 %cmpi, label %common.ret, label %fullev

fullev:                                           ; preds = %body
  %cmpi5 = icmp eq i8 %si1, -128
  %cmpi10 = icmp eq i8 %si2, -1
  %spec.select = and i1 %cmpi5, %cmpi10
  br i1 %spec.select, label %common.ret, label %if_cont

common.ret:                                       ; preds = %fullev, %body, %if_cont
  %common.ret.op = phi i8 [ %binop, %if_cont ], [ %si1, %body ], [ %si1, %fullev ]
  ret i8 %common.ret.op

if_cont:                                          ; preds = %fullev
  %binop = sdiv i8 %si1, %si2
  br label %common.ret
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define i8 @safe_lshift_func_int8_t_s_s(i8 %left, i32 %right) local_unnamed_addr addrspace(1) #1 {
body:
  %cmpi = icmp slt i8 %left, 0
  %0 = icmp ugt i32 %right, 7
  %or.cond = select i1 %cmpi, i1 true, i1 %0
  %intcast = trunc i32 %right to i8
  %binop = lshr i8 127, %intcast
  %cmpi17 = icmp sgt i8 %left, %binop
  %or.cond24 = select i1 %or.cond, i1 true, i1 %cmpi17
  %binop23 = select i1 %or.cond24, i8 0, i8 %intcast
  %common.ret.op = shl i8 %left, %binop23
  ret i8 %common.ret.op
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define i8 @safe_lshift_func_int8_t_s_u(i8 %left, i32 zeroext %right) local_unnamed_addr addrspace(1) #1 {
body:
  %cmpi = icmp slt i8 %left, 0
  %cmpi5 = icmp ugt i32 %right, 7
  %phi = select i1 %cmpi, i1 true, i1 %cmpi5
  %intcast = trunc i32 %right to i8
  %binop = lshr i8 127, %intcast
  %cmpi11 = icmp sgt i8 %left, %binop
  %or.cond = select i1 %phi, i1 true, i1 %cmpi11
  %binop17 = select i1 %or.cond, i8 0, i8 %intcast
  %common.ret.op = shl i8 %left, %binop17
  ret i8 %common.ret.op
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define i8 @safe_rshift_func_int8_t_s_s(i8 %left, i32 %right) local_unnamed_addr addrspace(1) #1 {
body:
  %cmpi = icmp slt i8 %left, 0
  %0 = icmp ugt i32 %right, 7
  %or.cond = select i1 %cmpi, i1 true, i1 %0
  %intcast = trunc i32 %right to i8
  %binop = select i1 %or.cond, i8 0, i8 %intcast
  %common.ret.op = ashr i8 %left, %binop
  ret i8 %common.ret.op
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define i8 @safe_rshift_func_int8_t_s_u(i8 %left, i32 zeroext %right) local_unnamed_addr addrspace(1) #1 {
body:
  %cmpi = icmp slt i8 %left, 0
  %cmpi5 = icmp ugt i32 %right, 7
  %phi = select i1 %cmpi, i1 true, i1 %cmpi5
  %intcast = trunc i32 %right to i8
  %binop = select i1 %phi, i8 0, i8 %intcast
  %common.ret.op = ashr i8 %left, %binop
  ret i8 %common.ret.op
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define i16 @safe_unary_minus_func_int16_t_s(i16 %si) local_unnamed_addr addrspace(1) #1 {
body:
  %binop = sub i16 0, %si
  ret i16 %binop
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define i16 @safe_add_func_int16_t_s_s(i16 %si1, i16 %si2) local_unnamed_addr addrspace(1) #1 {
body:
  %cmpi = icmp sgt i16 %si1, 0
  %cmpi5 = icmp sgt i16 %si2, 0
  %binop = sub i16 32767, %si2
  %cmpi11 = icmp sgt i16 %si1, %binop
  %0 = and i1 %cmpi5, %cmpi11
  %or.cond = select i1 %cmpi, i1 %0, i1 false
  br i1 %or.cond, label %common.ret, label %fullev13

fullev13:                                         ; preds = %body
  %cmpi17 = icmp slt i16 %si1, 0
  %cmpi22 = icmp slt i16 %si2, 0
  %spec.select = select i1 %cmpi17, i1 %cmpi22, i1 false
  %narrow = sub nsw i16 -32768, %si2
  %cmpi31 = icmp sgt i16 %narrow, %si1
  %or.cond38 = select i1 %spec.select, i1 %cmpi31, i1 false
  %binop37 = select i1 %or.cond38, i16 0, i16 %si2
  %spec.select39 = add i16 %si1, %binop37
  br label %common.ret

common.ret:                                       ; preds = %fullev13, %body
  %common.ret.op = phi i16 [ %si1, %body ], [ %spec.select39, %fullev13 ]
  ret i16 %common.ret.op
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define i16 @safe_sub_func_int16_t_s_s(i16 returned %si1, i16 %si2) local_unnamed_addr addrspace(1) #1 {
body:
  ret i16 %si1
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define i16 @safe_mul_func_int16_t_s_s(i16 %si1, i16 %si2) local_unnamed_addr addrspace(1) #1 {
body:
  %cmpi = icmp sgt i16 %si1, 0
  %cmpi5 = icmp sgt i16 %si2, 0
  %phi = select i1 %cmpi, i1 %cmpi5, i1 false
  br i1 %phi, label %fullev6, label %fullev13

fullev6:                                          ; preds = %body
  %binop = udiv i16 32767, %si2
  %cmpi11 = icmp sgt i16 %si1, %binop
  br i1 %cmpi11, label %common.ret, label %fullev13

fullev13:                                         ; preds = %body, %fullev6
  %cmpi22 = icmp slt i16 %si2, 1
  %spec.select = select i1 %cmpi, i1 %cmpi22, i1 false
  br i1 %spec.select, label %fullev24, label %fullev34

fullev24:                                         ; preds = %fullev13
  %intcast = sext i16 %si2 to i32
  %intcast29 = zext nneg i16 %si1 to i32
  %binop30 = sdiv i32 -32768, %intcast29
  %cmpi31 = icmp sgt i32 %binop30, %intcast
  br i1 %cmpi31, label %common.ret, label %fullev34

fullev34:                                         ; preds = %fullev13, %fullev24
  %cmpi38 = icmp slt i16 %si1, 1
  %spec.select86 = select i1 %cmpi38, i1 %cmpi5, i1 false
  br i1 %spec.select86, label %fullev45, label %fullev56

fullev45:                                         ; preds = %fullev34
  %intcast49 = sext i16 %si1 to i32
  %intcast51 = zext nneg i16 %si2 to i32
  %binop52 = sdiv i32 -32768, %intcast51
  %cmpi53 = icmp sgt i32 %binop52, %intcast49
  br i1 %cmpi53, label %common.ret, label %fullev56

fullev56:                                         ; preds = %fullev34, %fullev45
  %0 = icmp slt i16 %si1, 0
  %or.cond = select i1 %0, i1 %cmpi22, i1 false
  br i1 %or.cond, label %fullev73, label %if_cont

fullev73:                                         ; preds = %fullev56
  %binop78 = sdiv i16 32767, %si1
  %cmpi79 = icmp slt i16 %si2, %binop78
  br i1 %cmpi79, label %common.ret, label %if_cont

common.ret:                                       ; preds = %fullev73, %fullev24, %fullev6, %fullev45, %if_cont
  %common.ret.op = phi i16 [ %binop85, %if_cont ], [ %si1, %fullev45 ], [ %si1, %fullev6 ], [ %si1, %fullev24 ], [ %si1, %fullev73 ]
  ret i16 %common.ret.op

if_cont:                                          ; preds = %fullev73, %fullev56
  %binop85 = mul i16 %si2, %si1
  br label %common.ret
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define i16 @safe_mod_func_int16_t_s_s(i16 %si1, i16 %si2) local_unnamed_addr addrspace(1) #1 {
body:
  %cmpi = icmp eq i16 %si2, 0
  br i1 %cmpi, label %common.ret, label %fullev

fullev:                                           ; preds = %body
  %cmpi5 = icmp eq i16 %si1, -32768
  %cmpi10 = icmp eq i16 %si2, -1
  %spec.select = and i1 %cmpi5, %cmpi10
  br i1 %spec.select, label %common.ret, label %if_cont

common.ret:                                       ; preds = %fullev, %body, %if_cont
  %common.ret.op = phi i16 [ %binop, %if_cont ], [ %si1, %body ], [ %si1, %fullev ]
  ret i16 %common.ret.op

if_cont:                                          ; preds = %fullev
  %binop = srem i16 %si1, %si2
  br label %common.ret
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define i16 @safe_div_func_int16_t_s_s(i16 %si1, i16 %si2) local_unnamed_addr addrspace(1) #1 {
body:
  %cmpi = icmp eq i16 %si2, 0
  br i1 %cmpi, label %common.ret, label %fullev

fullev:                                           ; preds = %body
  %cmpi5 = icmp eq i16 %si1, -32768
  %cmpi10 = icmp eq i16 %si2, -1
  %spec.select = and i1 %cmpi5, %cmpi10
  br i1 %spec.select, label %common.ret, label %if_cont

common.ret:                                       ; preds = %fullev, %body, %if_cont
  %common.ret.op = phi i16 [ %binop, %if_cont ], [ %si1, %body ], [ %si1, %fullev ]
  ret i16 %common.ret.op

if_cont:                                          ; preds = %fullev
  %binop = sdiv i16 %si1, %si2
  br label %common.ret
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define i16 @safe_lshift_func_int16_t_s_s(i16 %left, i32 %right) local_unnamed_addr addrspace(1) #1 {
body:
  %cmpi = icmp slt i16 %left, 0
  %0 = icmp ugt i32 %right, 15
  %or.cond = select i1 %cmpi, i1 true, i1 %0
  %intcast = trunc i32 %right to i16
  %binop = lshr i16 32767, %intcast
  %cmpi17 = icmp sgt i16 %left, %binop
  %or.cond24 = select i1 %or.cond, i1 true, i1 %cmpi17
  %binop23 = select i1 %or.cond24, i16 0, i16 %intcast
  %common.ret.op = shl i16 %left, %binop23
  ret i16 %common.ret.op
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define i16 @safe_lshift_func_int16_t_s_u(i16 %left, i32 zeroext %right) local_unnamed_addr addrspace(1) #1 {
body:
  %cmpi = icmp slt i16 %left, 0
  %cmpi5 = icmp ugt i32 %right, 15
  %phi = select i1 %cmpi, i1 true, i1 %cmpi5
  %intcast = trunc i32 %right to i16
  %binop = lshr i16 32767, %intcast
  %cmpi11 = icmp sgt i16 %left, %binop
  %or.cond = select i1 %phi, i1 true, i1 %cmpi11
  %binop17 = select i1 %or.cond, i16 0, i16 %intcast
  %common.ret.op = shl i16 %left, %binop17
  ret i16 %common.ret.op
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define i16 @safe_rshift_func_int16_t_s_s(i16 %left, i32 %right) local_unnamed_addr addrspace(1) #1 {
body:
  %cmpi = icmp slt i16 %left, 0
  %0 = icmp ugt i32 %right, 15
  %or.cond = select i1 %cmpi, i1 true, i1 %0
  %intcast = trunc i32 %right to i16
  %binop = select i1 %or.cond, i16 0, i16 %intcast
  %common.ret.op = ashr i16 %left, %binop
  ret i16 %common.ret.op
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define i16 @safe_rshift_func_int16_t_s_u(i16 %left, i32 zeroext %right) local_unnamed_addr addrspace(1) #1 {
body:
  %cmpi = icmp slt i16 %left, 0
  %cmpi5 = icmp ugt i32 %right, 15
  %phi = select i1 %cmpi, i1 true, i1 %cmpi5
  %intcast = trunc i32 %right to i16
  %binop = select i1 %phi, i16 0, i16 %intcast
  %common.ret.op = ashr i16 %left, %binop
  ret i16 %common.ret.op
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define i32 @safe_unary_minus_func_int32_t_s(i32 %si) local_unnamed_addr addrspace(1) #1 {
body:
  %binop = sub i32 0, %si
  ret i32 %binop
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define i32 @safe_add_func_int32_t_s_s(i32 %si1, i32 %si2) local_unnamed_addr addrspace(1) #1 {
body:
  %cmpi = icmp sgt i32 %si1, 0
  %cmpi5 = icmp sgt i32 %si2, 0
  %binop = sub i32 2147483647, %si2
  %cmpi11 = icmp sgt i32 %si1, %binop
  %0 = and i1 %cmpi5, %cmpi11
  %or.cond = select i1 %cmpi, i1 %0, i1 false
  br i1 %or.cond, label %common.ret, label %fullev13

fullev13:                                         ; preds = %body
  %cmpi17 = icmp slt i32 %si1, 0
  %cmpi22 = icmp slt i32 %si2, 0
  %spec.select = select i1 %cmpi17, i1 %cmpi22, i1 false
  %narrow = sub nsw i32 -2147483648, %si2
  %cmpi31 = icmp sgt i32 %narrow, %si1
  %or.cond38 = select i1 %spec.select, i1 %cmpi31, i1 false
  %binop37 = select i1 %or.cond38, i32 0, i32 %si2
  %spec.select39 = add i32 %si1, %binop37
  br label %common.ret

common.ret:                                       ; preds = %fullev13, %body
  %common.ret.op = phi i32 [ %si1, %body ], [ %spec.select39, %fullev13 ]
  ret i32 %common.ret.op
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define i32 @safe_sub_func_int32_t_s_s(i32 returned %si1, i32 %si2) local_unnamed_addr addrspace(1) #1 {
body:
  ret i32 %si1
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define i32 @safe_mul_func_int32_t_s_s(i32 %si1, i32 %si2) local_unnamed_addr addrspace(1) #1 {
body:
  %cmpi = icmp sgt i32 %si1, 0
  %cmpi5 = icmp sgt i32 %si2, 0
  %phi = select i1 %cmpi, i1 %cmpi5, i1 false
  br i1 %phi, label %fullev6, label %fullev13

fullev6:                                          ; preds = %body
  %binop = udiv i32 2147483647, %si2
  %cmpi11 = icmp sgt i32 %si1, %binop
  br i1 %cmpi11, label %common.ret, label %fullev13

fullev13:                                         ; preds = %body, %fullev6
  %cmpi22 = icmp slt i32 %si2, 1
  %spec.select = select i1 %cmpi, i1 %cmpi22, i1 false
  br i1 %spec.select, label %fullev24, label %fullev34

fullev24:                                         ; preds = %fullev13
  %intcast = sext i32 %si2 to i64
  %intcast29 = zext nneg i32 %si1 to i64
  %binop30 = sdiv i64 -2147483648, %intcast29
  %cmpi31 = icmp sgt i64 %binop30, %intcast
  br i1 %cmpi31, label %common.ret, label %fullev34

fullev34:                                         ; preds = %fullev13, %fullev24
  %cmpi38 = icmp slt i32 %si1, 1
  %spec.select86 = select i1 %cmpi38, i1 %cmpi5, i1 false
  br i1 %spec.select86, label %fullev45, label %fullev56

fullev45:                                         ; preds = %fullev34
  %intcast49 = sext i32 %si1 to i64
  %intcast51 = zext nneg i32 %si2 to i64
  %binop52 = sdiv i64 -2147483648, %intcast51
  %cmpi53 = icmp sgt i64 %binop52, %intcast49
  br i1 %cmpi53, label %common.ret, label %fullev56

fullev56:                                         ; preds = %fullev34, %fullev45
  %0 = icmp slt i32 %si1, 0
  %or.cond = select i1 %0, i1 %cmpi22, i1 false
  br i1 %or.cond, label %fullev73, label %if_cont

fullev73:                                         ; preds = %fullev56
  %binop78 = sdiv i32 2147483647, %si1
  %cmpi79 = icmp slt i32 %si2, %binop78
  br i1 %cmpi79, label %common.ret, label %if_cont

common.ret:                                       ; preds = %fullev73, %fullev24, %fullev6, %fullev45, %if_cont
  %common.ret.op = phi i32 [ %binop85, %if_cont ], [ %si1, %fullev45 ], [ %si1, %fullev6 ], [ %si1, %fullev24 ], [ %si1, %fullev73 ]
  ret i32 %common.ret.op

if_cont:                                          ; preds = %fullev73, %fullev56
  %binop85 = mul i32 %si2, %si1
  br label %common.ret
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define i32 @safe_mod_func_int32_t_s_s(i32 %si1, i32 %si2) local_unnamed_addr addrspace(1) #1 {
body:
  %cmpi = icmp eq i32 %si2, 0
  br i1 %cmpi, label %common.ret, label %fullev

fullev:                                           ; preds = %body
  %cmpi5 = icmp eq i32 %si1, -2147483648
  %cmpi10 = icmp eq i32 %si2, -1
  %spec.select = and i1 %cmpi5, %cmpi10
  br i1 %spec.select, label %common.ret, label %if_cont

common.ret:                                       ; preds = %fullev, %body, %if_cont
  %common.ret.op = phi i32 [ %binop, %if_cont ], [ %si1, %body ], [ %si1, %fullev ]
  ret i32 %common.ret.op

if_cont:                                          ; preds = %fullev
  %binop = srem i32 %si1, %si2
  br label %common.ret
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define i32 @safe_div_func_int32_t_s_s(i32 %si1, i32 %si2) local_unnamed_addr addrspace(1) #1 {
body:
  %cmpi = icmp eq i32 %si2, 0
  br i1 %cmpi, label %common.ret, label %fullev

fullev:                                           ; preds = %body
  %cmpi5 = icmp eq i32 %si1, -2147483648
  %cmpi10 = icmp eq i32 %si2, -1
  %spec.select = and i1 %cmpi5, %cmpi10
  br i1 %spec.select, label %common.ret, label %if_cont

common.ret:                                       ; preds = %fullev, %body, %if_cont
  %common.ret.op = phi i32 [ %binop, %if_cont ], [ %si1, %body ], [ %si1, %fullev ]
  ret i32 %common.ret.op

if_cont:                                          ; preds = %fullev
  %binop = sdiv i32 %si1, %si2
  br label %common.ret
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define i32 @safe_lshift_func_int32_t_s_s(i32 %left, i32 %right) local_unnamed_addr addrspace(1) #1 {
body:
  %cmpi = icmp slt i32 %left, 0
  %0 = icmp ugt i32 %right, 31
  %or.cond = select i1 %cmpi, i1 true, i1 %0
  %binop = lshr i32 2147483647, %right
  %cmpi17 = icmp sgt i32 %left, %binop
  %or.cond23 = select i1 %or.cond, i1 true, i1 %cmpi17
  %binop22 = select i1 %or.cond23, i32 0, i32 %right
  %common.ret.op = shl i32 %left, %binop22
  ret i32 %common.ret.op
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define i32 @safe_lshift_func_int32_t_s_u(i32 %left, i32 zeroext %right) local_unnamed_addr addrspace(1) #1 {
body:
  %cmpi = icmp slt i32 %left, 0
  %cmpi5 = icmp ugt i32 %right, 31
  %phi = select i1 %cmpi, i1 true, i1 %cmpi5
  %binop = lshr i32 2147483647, %right
  %cmpi11 = icmp sgt i32 %left, %binop
  %or.cond = select i1 %phi, i1 true, i1 %cmpi11
  %binop16 = select i1 %or.cond, i32 0, i32 %right
  %common.ret.op = shl i32 %left, %binop16
  ret i32 %common.ret.op
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define i32 @safe_rshift_func_int32_t_s_s(i32 %left, i32 %right) local_unnamed_addr addrspace(1) #1 {
body:
  %cmpi = icmp slt i32 %left, 0
  %0 = icmp ugt i32 %right, 31
  %or.cond = select i1 %cmpi, i1 true, i1 %0
  %binop = select i1 %or.cond, i32 0, i32 %right
  %common.ret.op = ashr i32 %left, %binop
  ret i32 %common.ret.op
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define i32 @safe_rshift_func_int32_t_s_u(i32 %left, i32 zeroext %right) local_unnamed_addr addrspace(1) #1 {
body:
  %cmpi = icmp slt i32 %left, 0
  %cmpi5 = icmp ugt i32 %right, 31
  %phi = select i1 %cmpi, i1 true, i1 %cmpi5
  %binop = select i1 %phi, i32 0, i32 %right
  %common.ret.op = ashr i32 %left, %binop
  ret i32 %common.ret.op
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define i64 @safe_unary_minus_func_int64_t_s(i64 %si) local_unnamed_addr addrspace(1) #1 {
body:
  %binop = sub i64 0, %si
  ret i64 %binop
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define i64 @safe_add_func_int64_t_s_s(i64 %si1, i64 %si2) local_unnamed_addr addrspace(1) #1 {
body:
  %cmpi = icmp sgt i64 %si1, 0
  %cmpi5 = icmp sgt i64 %si2, 0
  %binop = sub i64 -9223372036854775808, %si2
  %cmpi11 = icmp sgt i64 %si1, %binop
  %0 = and i1 %cmpi5, %cmpi11
  %or.cond37 = select i1 %cmpi, i1 %0, i1 false
  br i1 %or.cond37, label %common.ret, label %fullev13

fullev13:                                         ; preds = %body
  %cmpi17 = icmp slt i64 %si1, 0
  %cmpi22 = icmp slt i64 %si2, 0
  %cmpi30 = icmp slt i64 %si1, %binop
  %1 = and i1 %cmpi22, %cmpi30
  %or.cond = select i1 %cmpi17, i1 %1, i1 false
  %binop36 = select i1 %or.cond, i64 0, i64 %si2
  %spec.select38 = add i64 %binop36, %si1
  br label %common.ret

common.ret:                                       ; preds = %fullev13, %body
  %common.ret.op = phi i64 [ %si1, %body ], [ %spec.select38, %fullev13 ]
  ret i64 %common.ret.op
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define i64 @safe_sub_func_int64_t_s_s(i64 %si1, i64 %si2) local_unnamed_addr addrspace(1) #1 {
body:
  %binop = xor i64 %si2, %si1
  %binop7 = and i64 %binop, -9223372036854775808
  %binop8 = xor i64 %binop7, %si1
  %binop10 = sub i64 %binop8, %si2
  %binop12 = xor i64 %binop10, %si2
  %binop15 = and i64 %binop12, %binop
  %cmpi = icmp slt i64 %binop15, 0
  %binop19 = select i1 %cmpi, i64 0, i64 %si2
  %spec.select = sub i64 %si1, %binop19
  ret i64 %spec.select
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define i64 @safe_mul_func_int64_t_s_s(i64 %si1, i64 %si2) local_unnamed_addr addrspace(1) #1 {
body:
  %cmpi = icmp sgt i64 %si1, 0
  %cmpi5 = icmp sgt i64 %si2, 0
  %phi = select i1 %cmpi, i1 %cmpi5, i1 false
  br i1 %phi, label %fullev6, label %fullev13

fullev6:                                          ; preds = %body
  %binop = sdiv i64 -9223372036854775808, %si2
  %cmpi11 = icmp sgt i64 %si1, %binop
  br i1 %cmpi11, label %common.ret, label %fullev13

fullev13:                                         ; preds = %body, %fullev6
  %cmpi22 = icmp slt i64 %si2, 1
  %spec.select = select i1 %cmpi, i1 %cmpi22, i1 false
  br i1 %spec.select, label %fullev24, label %fullev33

fullev24:                                         ; preds = %fullev13
  %binop29 = sdiv i64 -9223372036854775808, %si1
  %cmpi30 = icmp slt i64 %si2, %binop29
  br i1 %cmpi30, label %common.ret, label %fullev33

fullev33:                                         ; preds = %fullev13, %fullev24
  %cmpi37 = icmp slt i64 %si1, 1
  %spec.select83 = select i1 %cmpi37, i1 %cmpi5, i1 false
  br i1 %spec.select83, label %fullev44, label %fullev53

fullev44:                                         ; preds = %fullev33
  %binop49 = sdiv i64 -9223372036854775808, %si2
  %cmpi50 = icmp slt i64 %si1, %binop49
  br i1 %cmpi50, label %common.ret, label %fullev53

fullev53:                                         ; preds = %fullev33, %fullev44
  %0 = icmp slt i64 %si1, 0
  %or.cond = select i1 %0, i1 %cmpi22, i1 false
  br i1 %or.cond, label %fullev70, label %if_cont

fullev70:                                         ; preds = %fullev53
  %binop75 = sdiv i64 -9223372036854775808, %si1
  %cmpi76 = icmp slt i64 %si2, %binop75
  br i1 %cmpi76, label %common.ret, label %if_cont

common.ret:                                       ; preds = %fullev70, %fullev24, %fullev6, %fullev44, %if_cont
  %common.ret.op = phi i64 [ %binop82, %if_cont ], [ %si1, %fullev44 ], [ %si1, %fullev6 ], [ %si1, %fullev24 ], [ %si1, %fullev70 ]
  ret i64 %common.ret.op

if_cont:                                          ; preds = %fullev70, %fullev53
  %binop82 = mul i64 %si2, %si1
  br label %common.ret
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define i64 @safe_mod_func_int64_t_s_s(i64 %si1, i64 %si2) local_unnamed_addr addrspace(1) #1 {
body:
  %cmpi = icmp eq i64 %si2, 0
  br i1 %cmpi, label %common.ret, label %fullev

fullev:                                           ; preds = %body
  %cmpi5 = icmp eq i64 %si1, -9223372036854775808
  %cmpi10 = icmp eq i64 %si2, -1
  %spec.select = and i1 %cmpi5, %cmpi10
  br i1 %spec.select, label %common.ret, label %if_cont

common.ret:                                       ; preds = %fullev, %body, %if_cont
  %common.ret.op = phi i64 [ %binop, %if_cont ], [ %si1, %body ], [ %si1, %fullev ]
  ret i64 %common.ret.op

if_cont:                                          ; preds = %fullev
  %binop = srem i64 %si1, %si2
  br label %common.ret
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define i64 @safe_div_func_int64_t_s_s(i64 %si1, i64 %si2) local_unnamed_addr addrspace(1) #1 {
body:
  %cmpi = icmp eq i64 %si2, 0
  br i1 %cmpi, label %common.ret, label %fullev

fullev:                                           ; preds = %body
  %cmpi5 = icmp eq i64 %si1, -9223372036854775808
  %cmpi10 = icmp eq i64 %si2, -1
  %spec.select = and i1 %cmpi5, %cmpi10
  br i1 %spec.select, label %common.ret, label %if_cont

common.ret:                                       ; preds = %fullev, %body, %if_cont
  %common.ret.op = phi i64 [ %binop, %if_cont ], [ %si1, %body ], [ %si1, %fullev ]
  ret i64 %common.ret.op

if_cont:                                          ; preds = %fullev
  %binop = sdiv i64 %si1, %si2
  br label %common.ret
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define i64 @safe_lshift_func_int64_t_s_s(i64 returned %left, i32 %right) local_unnamed_addr addrspace(1) #1 {
body:
  ret i64 %left
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define i64 @safe_lshift_func_int64_t_s_u(i64 returned %left, i32 zeroext %right) local_unnamed_addr addrspace(1) #1 {
body:
  ret i64 %left
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define i64 @safe_rshift_func_int64_t_s_s(i64 %left, i32 %right) local_unnamed_addr addrspace(1) #1 {
body:
  %cmpi = icmp slt i64 %left, 0
  %0 = icmp ugt i32 %right, 63
  %or.cond = select i1 %cmpi, i1 true, i1 %0
  %intcast15 = zext nneg i32 %right to i64
  %binop = select i1 %or.cond, i64 0, i64 %intcast15
  %common.ret.op = ashr i64 %left, %binop
  ret i64 %common.ret.op
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define i64 @safe_rshift_func_int64_t_s_u(i64 %left, i32 zeroext %right) local_unnamed_addr addrspace(1) #1 {
body:
  %cmpi = icmp slt i64 %left, 0
  %cmpi5 = icmp ugt i32 %right, 63
  %phi = select i1 %cmpi, i1 true, i1 %cmpi5
  %intcast = zext nneg i32 %right to i64
  %binop = select i1 %phi, i64 0, i64 %intcast
  %common.ret.op = ashr i64 %left, %binop
  ret i64 %common.ret.op
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define zeroext i8 @safe_unary_minus_func_uint8_t_u(i8 zeroext %ui) local_unnamed_addr addrspace(1) #1 {
body:
  %binop = sub i8 0, %ui
  ret i8 %binop
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %ui1, i8 zeroext %ui2) local_unnamed_addr addrspace(1) #1 {
body:
  %binop = add i8 %ui2, %ui1
  ret i8 %binop
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define zeroext i8 @safe_sub_func_uint8_t_u_u(i8 zeroext %ui1, i8 zeroext %ui2) local_unnamed_addr addrspace(1) #1 {
body:
  %binop = sub i8 %ui1, %ui2
  ret i8 %binop
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %ui1, i8 zeroext %ui2) local_unnamed_addr addrspace(1) #1 {
body:
  %binop = mul i8 %ui2, %ui1
  ret i8 %binop
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define zeroext i8 @safe_mod_func_uint8_t_u_u(i8 zeroext %ui1, i8 zeroext %ui2) local_unnamed_addr addrspace(1) #1 {
body:
  %cmpi = icmp eq i8 %ui2, 0
  br i1 %cmpi, label %common.ret, label %if_cont

common.ret:                                       ; preds = %body, %if_cont
  %common.ret.op = phi i8 [ %binop, %if_cont ], [ %ui1, %body ]
  ret i8 %common.ret.op

if_cont:                                          ; preds = %body
  %binop = urem i8 %ui1, %ui2
  br label %common.ret
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define zeroext i8 @safe_mod_func_uint8_t_u_u.1(i8 zeroext %ui1, i8 zeroext %ui2) local_unnamed_addr addrspace(1) #1 {
body:
  %cmpi = icmp eq i8 %ui2, 0
  br i1 %cmpi, label %common.ret, label %if_cont

common.ret:                                       ; preds = %body, %if_cont
  %common.ret.op = phi i8 [ %binop, %if_cont ], [ %ui1, %body ]
  ret i8 %common.ret.op

if_cont:                                          ; preds = %body
  %binop = urem i8 %ui1, %ui2
  br label %common.ret
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define zeroext i8 @safe_div_func_uint8_t_u_u(i8 zeroext %ui1, i8 zeroext %ui2) local_unnamed_addr addrspace(1) #1 {
body:
  %cmpi = icmp eq i8 %ui2, 0
  br i1 %cmpi, label %common.ret, label %if_cont

common.ret:                                       ; preds = %body, %if_cont
  %common.ret.op = phi i8 [ %binop, %if_cont ], [ %ui1, %body ]
  ret i8 %common.ret.op

if_cont:                                          ; preds = %body
  %binop = udiv i8 %ui1, %ui2
  br label %common.ret
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define zeroext i8 @safe_lshift_func_uint8_t_u_s(i8 zeroext %left, i32 %right) local_unnamed_addr addrspace(1) #1 {
body:
  %phi = icmp ugt i32 %right, 7
  %intcast = trunc i32 %right to i8
  %binop = lshr i8 -1, %intcast
  %cmpi11 = icmp ugt i8 %left, %binop
  %or.cond = select i1 %phi, i1 true, i1 %cmpi11
  %binop17 = select i1 %or.cond, i8 0, i8 %intcast
  %common.ret.op = shl i8 %left, %binop17
  ret i8 %common.ret.op
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define zeroext i8 @safe_lshift_func_uint8_t_u_u(i8 zeroext %left, i32 zeroext %right) local_unnamed_addr addrspace(1) #1 {
body:
  %cmpi = icmp ugt i32 %right, 7
  %intcast = trunc i32 %right to i8
  %binop = lshr i8 -1, %intcast
  %cmpi6 = icmp ugt i8 %left, %binop
  %phi = select i1 %cmpi, i1 true, i1 %cmpi6
  %binop11 = select i1 %phi, i8 0, i8 %intcast
  %common.ret.op = shl i8 %left, %binop11
  ret i8 %common.ret.op
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define zeroext i8 @safe_rshift_func_uint8_t_u_s(i8 zeroext %left, i32 %right) local_unnamed_addr addrspace(1) #1 {
body:
  %phi = icmp ugt i32 %right, 7
  %intcast = trunc i32 %right to i8
  %binop = select i1 %phi, i8 0, i8 %intcast
  %common.ret.op = lshr i8 %left, %binop
  ret i8 %common.ret.op
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define zeroext i8 @safe_rshift_func_uint8_t_u_u(i8 zeroext %left, i32 zeroext %right) local_unnamed_addr addrspace(1) #1 {
body:
  %cmpi = icmp ugt i32 %right, 7
  %intcast = trunc nuw i32 %right to i8
  %binop = select i1 %cmpi, i8 0, i8 %intcast
  %common.ret.op = lshr i8 %left, %binop
  ret i8 %common.ret.op
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define zeroext i16 @safe_unary_minus_func_uint16_t_u(i16 zeroext %ui) local_unnamed_addr addrspace(1) #1 {
body:
  %binop = sub i16 0, %ui
  ret i16 %binop
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define zeroext i16 @safe_add_func_uint16_t_u_u(i16 zeroext %ui1, i16 zeroext %ui2) local_unnamed_addr addrspace(1) #1 {
body:
  %binop = add i16 %ui2, %ui1
  ret i16 %binop
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %ui1, i16 zeroext %ui2) local_unnamed_addr addrspace(1) #1 {
body:
  %binop = sub i16 %ui1, %ui2
  ret i16 %binop
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %ui1, i16 zeroext %ui2) local_unnamed_addr addrspace(1) #1 {
body:
  %binop = mul i16 %ui2, %ui1
  ret i16 %binop
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define zeroext i16 @safe_mod_func_uint16_t_u_u(i16 zeroext %ui1, i16 zeroext %ui2) local_unnamed_addr addrspace(1) #1 {
body:
  %cmpi = icmp eq i16 %ui2, 0
  br i1 %cmpi, label %common.ret, label %if_cont

common.ret:                                       ; preds = %body, %if_cont
  %common.ret.op = phi i16 [ %binop, %if_cont ], [ %ui1, %body ]
  ret i16 %common.ret.op

if_cont:                                          ; preds = %body
  %binop = urem i16 %ui1, %ui2
  br label %common.ret
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define zeroext i16 @safe_div_func_uint16_t_u_u(i16 zeroext %ui1, i16 zeroext %ui2) local_unnamed_addr addrspace(1) #1 {
body:
  %cmpi = icmp eq i16 %ui2, 0
  br i1 %cmpi, label %common.ret, label %if_cont

common.ret:                                       ; preds = %body, %if_cont
  %common.ret.op = phi i16 [ %binop, %if_cont ], [ %ui1, %body ]
  ret i16 %common.ret.op

if_cont:                                          ; preds = %body
  %binop = udiv i16 %ui1, %ui2
  br label %common.ret
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define zeroext i16 @safe_lshift_func_uint16_t_u_s(i16 zeroext %left, i32 %right) local_unnamed_addr addrspace(1) #1 {
body:
  %phi = icmp ugt i32 %right, 15
  %intcast = trunc i32 %right to i16
  %binop = lshr i16 -1, %intcast
  %cmpi11 = icmp ugt i16 %left, %binop
  %or.cond = select i1 %phi, i1 true, i1 %cmpi11
  %binop17 = select i1 %or.cond, i16 0, i16 %intcast
  %common.ret.op = shl i16 %left, %binop17
  ret i16 %common.ret.op
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define zeroext i16 @safe_lshift_func_uint16_t_u_u(i16 zeroext %left, i32 zeroext %right) local_unnamed_addr addrspace(1) #1 {
body:
  %cmpi = icmp ugt i32 %right, 15
  %intcast = trunc i32 %right to i16
  %binop = lshr i16 -1, %intcast
  %cmpi6 = icmp ugt i16 %left, %binop
  %phi = select i1 %cmpi, i1 true, i1 %cmpi6
  %binop11 = select i1 %phi, i16 0, i16 %intcast
  %common.ret.op = shl i16 %left, %binop11
  ret i16 %common.ret.op
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define zeroext i16 @safe_rshift_func_uint16_t_u_s(i16 zeroext %left, i32 %right) local_unnamed_addr addrspace(1) #1 {
body:
  %phi = icmp ugt i32 %right, 15
  %intcast = trunc i32 %right to i16
  %binop = select i1 %phi, i16 0, i16 %intcast
  %common.ret.op = lshr i16 %left, %binop
  ret i16 %common.ret.op
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define zeroext i16 @safe_rshift_func_uint16_t_u_u(i16 zeroext %left, i32 zeroext %right) local_unnamed_addr addrspace(1) #1 {
body:
  %cmpi = icmp ugt i32 %right, 15
  %intcast = trunc nuw i32 %right to i16
  %binop = select i1 %cmpi, i16 0, i16 %intcast
  %common.ret.op = lshr i16 %left, %binop
  ret i16 %common.ret.op
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define zeroext i32 @safe_unary_minus_func_uint32_t_u(i32 zeroext %ui) local_unnamed_addr addrspace(1) #1 {
body:
  %binop = sub i32 0, %ui
  ret i32 %binop
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define zeroext i32 @safe_add_func_uint32_t_u_u(i32 zeroext %ui1, i32 zeroext %ui2) local_unnamed_addr addrspace(1) #1 {
body:
  %binop = add i32 %ui2, %ui1
  ret i32 %binop
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define zeroext i32 @safe_sub_func_uint32_t_u_u(i32 zeroext %ui1, i32 zeroext %ui2) local_unnamed_addr addrspace(1) #1 {
body:
  %binop = sub i32 %ui1, %ui2
  ret i32 %binop
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define zeroext i32 @safe_mul_func_uint32_t_u_u(i32 zeroext %ui1, i32 zeroext %ui2) local_unnamed_addr addrspace(1) #1 {
body:
  %binop = mul i32 %ui2, %ui1
  ret i32 %binop
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define zeroext i32 @safe_mod_func_uint32_t_u_u(i32 zeroext %ui1, i32 zeroext %ui2) local_unnamed_addr addrspace(1) #1 {
body:
  %cmpi = icmp eq i32 %ui2, 0
  br i1 %cmpi, label %common.ret, label %if_cont

common.ret:                                       ; preds = %body, %if_cont
  %common.ret.op = phi i32 [ %binop, %if_cont ], [ %ui1, %body ]
  ret i32 %common.ret.op

if_cont:                                          ; preds = %body
  %binop = urem i32 %ui1, %ui2
  br label %common.ret
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define zeroext i32 @safe_div_func_uint32_t_u_u(i32 zeroext %ui1, i32 zeroext %ui2) local_unnamed_addr addrspace(1) #1 {
body:
  %cmpi = icmp eq i32 %ui2, 0
  br i1 %cmpi, label %common.ret, label %if_cont

common.ret:                                       ; preds = %body, %if_cont
  %common.ret.op = phi i32 [ %binop, %if_cont ], [ %ui1, %body ]
  ret i32 %common.ret.op

if_cont:                                          ; preds = %body
  %binop = udiv i32 %ui1, %ui2
  br label %common.ret
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define zeroext i32 @safe_lshift_func_uint32_t_u_s(i32 zeroext %left, i32 %right) local_unnamed_addr addrspace(1) #1 {
body:
  %phi = icmp ugt i32 %right, 31
  %binop = lshr i32 -1, %right
  %cmpi11 = icmp ugt i32 %left, %binop
  %or.cond = select i1 %phi, i1 true, i1 %cmpi11
  %binop16 = select i1 %or.cond, i32 0, i32 %right
  %common.ret.op = shl i32 %left, %binop16
  ret i32 %common.ret.op
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define zeroext i32 @safe_lshift_func_uint32_t_u_u(i32 zeroext %left, i32 zeroext %right) local_unnamed_addr addrspace(1) #1 {
body:
  %cmpi = icmp ugt i32 %right, 31
  %binop = lshr i32 -1, %right
  %cmpi6 = icmp ugt i32 %left, %binop
  %phi = select i1 %cmpi, i1 true, i1 %cmpi6
  %binop10 = select i1 %phi, i32 0, i32 %right
  %common.ret.op = shl i32 %left, %binop10
  ret i32 %common.ret.op
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define zeroext i32 @safe_rshift_func_uint32_t_u_s(i32 zeroext %left, i32 %right) local_unnamed_addr addrspace(1) #1 {
body:
  %phi = icmp ugt i32 %right, 31
  %binop = select i1 %phi, i32 0, i32 %right
  %common.ret.op = lshr i32 %left, %binop
  ret i32 %common.ret.op
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define zeroext i32 @safe_rshift_func_uint32_t_u_u(i32 zeroext %left, i32 zeroext %right) local_unnamed_addr addrspace(1) #1 {
body:
  %cmpi = icmp ugt i32 %right, 31
  %binop = select i1 %cmpi, i32 0, i32 %right
  %spec.select = lshr i32 %left, %binop
  ret i32 %spec.select
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define zeroext i64 @safe_unary_minus_func_uint64_t_u(i64 zeroext %ui) local_unnamed_addr addrspace(1) #1 {
body:
  %binop = sub i64 0, %ui
  ret i64 %binop
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define zeroext i64 @safe_add_func_uint64_t_u_u(i64 zeroext %ui1, i64 zeroext %ui2) local_unnamed_addr addrspace(1) #1 {
body:
  %binop = add i64 %ui2, %ui1
  ret i64 %binop
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define zeroext i64 @safe_sub_func_uint64_t_u_u(i64 zeroext %ui1, i64 zeroext %ui2) local_unnamed_addr addrspace(1) #1 {
body:
  %binop = sub i64 %ui1, %ui2
  ret i64 %binop
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define zeroext i64 @safe_mul_func_uint64_t_u_u(i64 zeroext %ui1, i64 zeroext %ui2) local_unnamed_addr addrspace(1) #1 {
body:
  %binop = mul i64 %ui2, %ui1
  ret i64 %binop
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define zeroext i64 @safe_mod_func_uint64_t_u_u(i64 zeroext %ui1, i64 zeroext %ui2) local_unnamed_addr addrspace(1) #1 {
body:
  %cmpi = icmp eq i64 %ui2, 0
  br i1 %cmpi, label %common.ret, label %if_cont

common.ret:                                       ; preds = %body, %if_cont
  %common.ret.op = phi i64 [ %binop, %if_cont ], [ %ui1, %body ]
  ret i64 %common.ret.op

if_cont:                                          ; preds = %body
  %binop = urem i64 %ui1, %ui2
  br label %common.ret
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define zeroext i64 @safe_div_func_uint64_t_u_u(i64 zeroext %ui1, i64 zeroext %ui2) local_unnamed_addr addrspace(1) #1 {
body:
  %cmpi = icmp eq i64 %ui2, 0
  br i1 %cmpi, label %common.ret, label %if_cont

common.ret:                                       ; preds = %body, %if_cont
  %common.ret.op = phi i64 [ %binop, %if_cont ], [ %ui1, %body ]
  ret i64 %common.ret.op

if_cont:                                          ; preds = %body
  %binop = udiv i64 %ui1, %ui2
  br label %common.ret
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define zeroext i64 @safe_lshift_func_uint64_t_u_s(i64 zeroext %left, i32 %right) local_unnamed_addr addrspace(1) #1 {
body:
  %phi = icmp ugt i32 %right, 63
  %cmpi12 = icmp ne i64 %left, 0
  %or.cond = select i1 %phi, i1 true, i1 %cmpi12
  %intcast1719 = zext nneg i32 %right to i64
  %binop18 = select i1 %or.cond, i64 0, i64 %intcast1719
  %common.ret.op = shl i64 %left, %binop18
  ret i64 %common.ret.op
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define zeroext i64 @safe_lshift_func_uint64_t_u_u(i64 zeroext %left, i32 zeroext %right) local_unnamed_addr addrspace(1) #1 {
body:
  %cmpi = icmp ugt i32 %right, 63
  %cmpi7 = icmp ne i64 %left, 0
  %phi = select i1 %cmpi, i1 true, i1 %cmpi7
  %intcast11 = zext nneg i32 %right to i64
  %binop12 = select i1 %phi, i64 0, i64 %intcast11
  %common.ret.op = shl i64 %left, %binop12
  ret i64 %common.ret.op
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define zeroext i64 @safe_rshift_func_uint64_t_u_s(i64 zeroext %left, i32 %right) local_unnamed_addr addrspace(1) #1 {
body:
  %phi = icmp ugt i32 %right, 63
  %narrow = select i1 %phi, i32 0, i32 %right
  %binop = zext nneg i32 %narrow to i64
  %common.ret.op = lshr i64 %left, %binop
  ret i64 %common.ret.op
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define zeroext i64 @safe_rshift_func_uint64_t_u_u(i64 zeroext %left, i32 zeroext %right) local_unnamed_addr addrspace(1) #1 {
body:
  %cmpi = icmp ugt i32 %right, 63
  %narrow = select i1 %cmpi, i32 0, i32 %right
  %binop = zext nneg i32 %narrow to i64
  %common.ret.op = lshr i64 %left, %binop
  ret i64 %common.ret.op
}

; Function Attrs: nofree norecurse nosync nounwind memory(none)
define zeroext i16 @func_1() local_unnamed_addr addrspace(1) #2 {
body:
  %l_33 = alloca [9 x i64], align 8
  store i64 -1169544082, ptr %l_33, align 8
  %elem1 = getelementptr inbounds nuw i8, ptr %l_33, i32 8
  store i64 875278821, ptr %elem1, align 8
  %elem2 = getelementptr inbounds nuw i8, ptr %l_33, i32 16
  store i64 3125423214, ptr %elem2, align 8
  %elem3 = getelementptr inbounds nuw i8, ptr %l_33, i32 24
  store i64 3125423214, ptr %elem3, align 8
  %elem4 = getelementptr inbounds nuw i8, ptr %l_33, i32 32
  store i64 875278821, ptr %elem4, align 8
  %elem5 = getelementptr inbounds nuw i8, ptr %l_33, i32 40
  store i64 3125423214, ptr %elem5, align 8
  %elem6 = getelementptr inbounds nuw i8, ptr %l_33, i32 48
  store i64 3125423214, ptr %elem6, align 8
  %elem7 = getelementptr inbounds nuw i8, ptr %l_33, i32 56
  store i64 875278821, ptr %elem7, align 8
  %elem8 = getelementptr inbounds nuw i8, ptr %l_33, i32 64
  store i64 3125423214, ptr %elem8, align 8
  br label %while_cond12.preheader

while_cond12.preheader:                           ; preds = %while_cond12.preheader.3, %body
  %l_2.0625 = phi i32 [ 0, %body ], [ %sext118.3, %while_cond12.preheader.3 ]
  %cmpi.i450 = icmp sgt i32 %l_2.0625, -1
  %binop.i = sext i1 %cmpi.i450 to i32
  %spec.select.i = add nsw i32 %l_2.0625, %binop.i
  %sext = shl i32 %spec.select.i, 24
  %cmpi.not = icmp eq i32 %sext, -134217728
  br i1 %cmpi.not, label %while_body183.preheader, label %while_cond12.preheader.1

while_cond12.preheader.1:                         ; preds = %while_cond12.preheader
  %cmpi.i450.1 = icmp sgt i32 %sext, -1
  %binop.i.1 = sext i1 %cmpi.i450.1 to i32
  %spec.select.i.1 = add nsw i32 %spec.select.i, %binop.i.1
  %sext.1 = shl i32 %spec.select.i.1, 24
  %cmpi.not.1 = icmp eq i32 %sext.1, -134217728
  br i1 %cmpi.not.1, label %while_body183.preheader, label %while_cond12.preheader.2

while_cond12.preheader.2:                         ; preds = %while_cond12.preheader.1
  %cmpi.i450.2 = icmp sgt i32 %sext.1, -1
  %binop.i.2 = sext i1 %cmpi.i450.2 to i32
  %spec.select.i.2 = add nsw i32 %spec.select.i.1, %binop.i.2
  %sext.2 = shl i32 %spec.select.i.2, 24
  %cmpi.not.2 = icmp eq i32 %sext.2, -134217728
  br i1 %cmpi.not.2, label %while_body183.preheader, label %while_cond12.preheader.3

while_cond12.preheader.3:                         ; preds = %while_cond12.preheader.2
  %cmpi.i450.3 = icmp sgt i32 %sext.2, -1
  %binop.i.3 = sext i1 %cmpi.i450.3 to i32
  %spec.select.i.3 = add nsw i32 %spec.select.i.2, %binop.i.3
  %sext.3 = shl i32 %spec.select.i.3, 24
  %sext118.3 = ashr exact i32 %sext.3, 24
  %cmpi.not.3 = icmp eq i32 %sext.3, -134217728
  br i1 %cmpi.not.3, label %while_body183.preheader, label %while_cond12.preheader

while_body183.preheader:                          ; preds = %while_cond12.preheader.3, %while_cond12.preheader.2, %while_cond12.preheader.1, %while_cond12.preheader
  br label %while_body183

while_body183:                                    ; preds = %while_body183.preheader, %if_else376
  %l_2.1631 = phi i32 [ %binop447, %if_else376 ], [ 3, %while_body183.preheader ]
  %gep187 = getelementptr [9 x i64], ptr %l_33, i32 0, i32 %l_2.1631
  br label %while_cond196.preheader

common.ret:                                       ; preds = %if_else376, %while_body362
  %common.ret.op = phi i16 [ %trunc375, %while_body362 ], [ 0, %if_else376 ]
  ret i16 %common.ret.op

while_cond196.preheader:                          ; preds = %while_body183, %while_cond196.preheader
  %l_15.6630 = phi i32 [ 8, %while_body183 ], [ %binop295, %while_cond196.preheader ]
  %gep210 = getelementptr [0 x i64], ptr %l_33, i32 0, i32 %l_15.6630
  %gep206 = getelementptr [9 x i64], ptr %l_33, i32 0, i32 %l_15.6630
  %l_33204 = load i64, ptr %gep187, align 8
  %l_33207 = load i64, ptr %gep206, align 8
  %cmpi208 = icmp eq i64 %l_33204, %l_33207
  %zext209 = zext i1 %cmpi208 to i64
  store i64 %zext209, ptr %gep210, align 8
  %l_33213 = load i64, ptr %elem1, align 8
  %cmpi214 = icmp sgt i64 %l_33213, 1
  %zext215 = zext i1 %cmpi214 to i64
  store i64 %zext215, ptr %gep210, align 8
  %l_33204.1 = load i64, ptr %gep187, align 8
  %l_33207.1 = load i64, ptr %gep206, align 8
  %cmpi208.1 = icmp eq i64 %l_33204.1, %l_33207.1
  %zext209.1 = zext i1 %cmpi208.1 to i64
  store i64 %zext209.1, ptr %gep210, align 8
  %l_33213.1 = load i64, ptr %elem1, align 8
  %cmpi214.1 = icmp sgt i64 %l_33213.1, 1
  %zext215.1 = zext i1 %cmpi214.1 to i64
  store i64 %zext215.1, ptr %gep210, align 8
  %l_33204.2 = load i64, ptr %gep187, align 8
  %l_33207.2 = load i64, ptr %gep206, align 8
  %cmpi208.2 = icmp eq i64 %l_33204.2, %l_33207.2
  %zext209.2 = zext i1 %cmpi208.2 to i64
  store i64 %zext209.2, ptr %gep210, align 8
  %l_33213.2 = load i64, ptr %elem1, align 8
  %cmpi214.2 = icmp sgt i64 %l_33213.2, 1
  %zext215.2 = zext i1 %cmpi214.2 to i64
  store i64 %zext215.2, ptr %gep210, align 8
  %l_33204.3 = load i64, ptr %gep187, align 8
  %l_33207.3 = load i64, ptr %gep206, align 8
  %cmpi208.3 = icmp eq i64 %l_33204.3, %l_33207.3
  %zext209.3 = zext i1 %cmpi208.3 to i64
  store i64 %zext209.3, ptr %gep210, align 8
  %l_33213.3 = load i64, ptr %elem1, align 8
  %cmpi214.3 = icmp sgt i64 %l_33213.3, 1
  %zext215.3 = zext i1 %cmpi214.3 to i64
  store i64 %zext215.3, ptr %gep210, align 8
  %l_33204.4 = load i64, ptr %gep187, align 8
  %l_33207.4 = load i64, ptr %gep206, align 8
  %cmpi208.4 = icmp eq i64 %l_33204.4, %l_33207.4
  %zext209.4 = zext i1 %cmpi208.4 to i64
  store i64 %zext209.4, ptr %gep210, align 8
  %l_33213.4 = load i64, ptr %elem1, align 8
  %cmpi214.4 = icmp sgt i64 %l_33213.4, 1
  %zext215.4 = zext i1 %cmpi214.4 to i64
  store i64 %zext215.4, ptr %gep210, align 8
  %l_33204.5 = load i64, ptr %gep187, align 8
  %l_33207.5 = load i64, ptr %gep206, align 8
  %cmpi208.5 = icmp eq i64 %l_33204.5, %l_33207.5
  %zext209.5 = zext i1 %cmpi208.5 to i64
  store i64 %zext209.5, ptr %gep210, align 8
  %l_33213.5 = load i64, ptr %elem1, align 8
  %cmpi214.5 = icmp sgt i64 %l_33213.5, 1
  %zext215.5 = zext i1 %cmpi214.5 to i64
  store i64 %zext215.5, ptr %gep210, align 8
  %l_33204.6 = load i64, ptr %gep187, align 8
  %l_33207.6 = load i64, ptr %gep206, align 8
  %cmpi208.6 = icmp eq i64 %l_33204.6, %l_33207.6
  %zext209.6 = zext i1 %cmpi208.6 to i64
  store i64 %zext209.6, ptr %gep210, align 8
  %l_33213.6 = load i64, ptr %elem1, align 8
  %cmpi214.6 = icmp sgt i64 %l_33213.6, 1
  %zext215.6 = zext i1 %cmpi214.6 to i64
  store i64 %zext215.6, ptr %gep210, align 8
  %l_33204.7 = load i64, ptr %gep187, align 8
  %l_33207.7 = load i64, ptr %gep206, align 8
  %cmpi208.7 = icmp eq i64 %l_33204.7, %l_33207.7
  %zext209.7 = zext i1 %cmpi208.7 to i64
  store i64 %zext209.7, ptr %gep210, align 8
  %l_33213.7 = load i64, ptr %elem1, align 8
  %cmpi214.7 = icmp sgt i64 %l_33213.7, 1
  %zext215.7 = zext i1 %cmpi214.7 to i64
  store i64 %zext215.7, ptr %gep210, align 8
  %l_33204.8 = load i64, ptr %gep187, align 8
  %l_33207.8 = load i64, ptr %gep206, align 8
  %cmpi208.8 = icmp eq i64 %l_33204.8, %l_33207.8
  %zext209.8 = zext i1 %cmpi208.8 to i64
  store i64 %zext209.8, ptr %gep210, align 8
  %l_33213.8 = load i64, ptr %elem1, align 8
  %cmpi214.8 = icmp sgt i64 %l_33213.8, 1
  %zext215.8 = zext i1 %cmpi214.8 to i64
  store i64 %zext215.8, ptr %gep210, align 8
  %gep243 = getelementptr [0 x i64], ptr %l_33, i32 0, i32 %l_15.6630
  store i64 1774058491, ptr %gep243, align 8
  %binop295 = add nsw i32 %l_15.6630, -1
  %cmpi193.not = icmp eq i32 %l_15.6630, 0
  br i1 %cmpi193.not, label %while_end195, label %while_cond196.preheader

while_end195:                                     ; preds = %while_cond196.preheader
  %l_33298 = load i64, ptr %gep187, align 8
  %0 = and i64 %l_33298, 4294967264
  %cmpi.i604.not = icmp eq i64 %0, 0
  %l_33311 = load i64, ptr %elem2, align 8
  %cmpi312 = icmp ne i64 %l_33311, 0
  %phi309 = select i1 %cmpi.i604.not, i1 %cmpi312, i1 false
  br i1 %phi309, label %while_body362, label %if_else376

while_body362:                                    ; preds = %while_end195
  %l_33374 = load i64, ptr %elem5, align 8
  %trunc375 = trunc i64 %l_33374 to i16
  br label %common.ret

if_else376:                                       ; preds = %while_end195
  store i64 0, ptr %elem2, align 8
  %binop447 = add nuw nsw i32 %l_2.1631, 1
  %exitcond633.not = icmp eq i32 %binop447, 9
  br i1 %exitcond633.not, label %common.ret, label %while_body183
}

define noundef i32 @main() local_unnamed_addr addrspace(1) #0 {
body:
  tail call addrspace(1) void @platform_main_begin()
  tail call addrspace(1) void @crc32_gentab()
  %0 = tail call zeroext addrspace(1) i16 @func_1()
  %crc32_context = load i64, ptr @crc32_context, align 8
  %binop = xor i64 %crc32_context, 4294967295
  tail call addrspace(1) void @platform_main_end(i64 zeroext %binop, i32 0)
  ret i32 0
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #2 = { nofree norecurse nosync nounwind memory(none) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
