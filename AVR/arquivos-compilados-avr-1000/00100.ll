; ModuleID = 'out/00100.rob'
source_filename = "out/00100.rob"
target datalayout = "e-P1-p:16:8-i8:8-i16:8-i32:8-i64:8-f32:8-f64:8-n8-a:8"
target triple = "avr"

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
  br i1 %or.cond, label %common.ret, label %fullev12

fullev12:                                         ; preds = %body
  %intcast = trunc nuw i32 %right to i16
  %binop = lshr i16 32767, %intcast
  %cmpi17 = icmp sgt i16 %left, %binop
  %binop23 = select i1 %cmpi17, i16 0, i16 %intcast
  %spec.select = shl i16 %left, %binop23
  br label %common.ret

common.ret:                                       ; preds = %fullev12, %body
  %common.ret.op = phi i16 [ %left, %body ], [ %spec.select, %fullev12 ]
  ret i16 %common.ret.op
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define i16 @safe_lshift_func_int16_t_s_u(i16 %left, i32 zeroext %right) local_unnamed_addr addrspace(1) #1 {
body:
  %cmpi = icmp slt i16 %left, 0
  %cmpi5 = icmp ugt i32 %right, 15
  %phi = select i1 %cmpi, i1 true, i1 %cmpi5
  br i1 %phi, label %common.ret, label %fullev6

fullev6:                                          ; preds = %body
  %intcast = trunc nuw i32 %right to i16
  %binop = lshr i16 32767, %intcast
  %cmpi11 = icmp sgt i16 %left, %binop
  %binop17 = select i1 %cmpi11, i16 0, i16 %intcast
  %spec.select = shl i16 %left, %binop17
  br label %common.ret

common.ret:                                       ; preds = %fullev6, %body
  %common.ret.op = phi i16 [ %left, %body ], [ %spec.select, %fullev6 ]
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
  br i1 %phi, label %common.ret, label %fullev6

fullev6:                                          ; preds = %body
  %intcast = trunc nuw i32 %right to i16
  %binop = lshr i16 -1, %intcast
  %cmpi11 = icmp ugt i16 %left, %binop
  %binop17 = select i1 %cmpi11, i16 0, i16 %intcast
  %spec.select = shl i16 %left, %binop17
  br label %common.ret

common.ret:                                       ; preds = %fullev6, %body
  %common.ret.op = phi i16 [ %left, %body ], [ %spec.select, %fullev6 ]
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
define noundef range(i64 -2147483648, 2147483648) i64 @func_1() local_unnamed_addr addrspace(1) #2 {
body:
  %l_2 = alloca [7 x i64], align 1
  store i64 -885043386, ptr %l_2, align 1
  %elem1 = getelementptr inbounds nuw i8, ptr %l_2, i16 8
  store i64 0, ptr %elem1, align 1
  %elem2 = getelementptr inbounds nuw i8, ptr %l_2, i16 16
  store i64 3409923910, ptr %elem2, align 1
  %elem3 = getelementptr inbounds nuw i8, ptr %l_2, i16 24
  store i64 3409923910, ptr %elem3, align 1
  %elem4 = getelementptr inbounds nuw i8, ptr %l_2, i16 32
  store i64 0, ptr %elem4, align 1
  %elem5 = getelementptr inbounds nuw i8, ptr %l_2, i16 40
  store i64 3409923910, ptr %elem5, align 1
  %elem6 = getelementptr inbounds nuw i8, ptr %l_2, i16 48
  store i64 3409923910, ptr %elem6, align 1
  store i64 4294967280, ptr %l_2, align 1
  %gep164 = getelementptr inbounds nuw i8, ptr %l_2, i16 8
  %gep164.1 = getelementptr inbounds nuw i8, ptr %l_2, i16 16
  %gep164.2 = getelementptr inbounds nuw i8, ptr %l_2, i16 24
  %gep164.3 = getelementptr inbounds nuw i8, ptr %l_2, i16 32
  %gep164.4 = getelementptr inbounds nuw i8, ptr %l_2, i16 40
  %gep164.5 = getelementptr inbounds nuw i8, ptr %l_2, i16 48
  br label %while_body121

while_body121:                                    ; preds = %body, %while_end139
  %l_24.0296 = phi i8 [ 0, %body ], [ %binop266, %while_end139 ]
  %0 = zext nneg i8 %l_24.0296 to i16
  %gep148 = getelementptr [7 x i64], ptr %l_2, i16 0, i16 %0
  br label %while_cond140.preheader

while_end122:                                     ; preds = %while_end139
  ret i64 7

while_cond140.preheader:                          ; preds = %while_body121, %if_cont
  %l_25.1295 = phi i16 [ 0, %while_body121 ], [ %binop248, %if_cont ]
  %zext167289.lcssa293294 = phi i32 [ 1504117551, %while_body121 ], [ %zext167.5, %if_cont ]
  %l_2149 = load i64, ptr %gep148, align 1
  %trunc150 = trunc i64 %l_2149 to i32
  %cmpi.i270 = icmp slt i32 %trunc150, 1
  %binop.i272 = sub i32 2147483647, %trunc150
  %cmpi11.i = icmp sge i32 %binop.i272, %trunc150
  %or.cond.i.not = or i1 %cmpi.i270, %cmpi11.i
  %cmpi17.i = icmp sgt i32 %trunc150, -1
  %intcast.i = sext i32 %trunc150 to i64
  %binop30.i = sub nsw i64 -2147483648, %intcast.i
  %cmpi31.i = icmp sle i64 %binop30.i, %intcast.i
  %brmerge = select i1 %cmpi17.i, i1 true, i1 %cmpi31.i
  %narrow = select i1 %or.cond.i.not, i1 %brmerge, i1 false
  %spec.select = zext i1 %narrow to i32
  %common.ret.op.i275 = shl i32 %trunc150, %spec.select
  %binop157 = xor i32 %common.ret.op.i275, 3
  %binop158 = or i32 %binop157, %zext167289.lcssa293294
  %trunc162 = trunc i32 %binop158 to i8
  %l_2165 = load i64, ptr %gep164, align 1
  %trunc166 = trunc i64 %l_2165 to i8
  %binop.i279 = add i8 %trunc162, %trunc166
  %1 = trunc i32 %binop157 to i8
  %trunc162.1 = or i8 %binop.i279, %1
  %l_2165.1 = load i64, ptr %gep164.1, align 1
  %trunc166.1 = trunc i64 %l_2165.1 to i8
  %binop.i279.1 = add i8 %trunc162.1, %trunc166.1
  %2 = trunc i32 %binop157 to i8
  %trunc162.2 = or i8 %binop.i279.1, %2
  %l_2165.2 = load i64, ptr %gep164.2, align 1
  %trunc166.2 = trunc i64 %l_2165.2 to i8
  %binop.i279.2 = add i8 %trunc162.2, %trunc166.2
  %3 = trunc i32 %binop157 to i8
  %trunc162.3 = or i8 %binop.i279.2, %3
  %l_2165.3 = load i64, ptr %gep164.3, align 1
  %trunc166.3 = trunc i64 %l_2165.3 to i8
  %binop.i279.3 = add i8 %trunc162.3, %trunc166.3
  %4 = trunc i32 %binop157 to i8
  %trunc162.4 = or i8 %binop.i279.3, %4
  %l_2165.4 = load i64, ptr %gep164.4, align 1
  %trunc166.4 = trunc i64 %l_2165.4 to i8
  %binop.i279.4 = add i8 %trunc162.4, %trunc166.4
  %5 = trunc i32 %binop157 to i8
  %trunc162.5 = or i8 %binop.i279.4, %5
  %l_2165.5 = load i64, ptr %gep164.5, align 1
  %trunc166.5 = trunc i64 %l_2165.5 to i8
  %binop.i279.5 = add i8 %trunc162.5, %trunc166.5
  %zext167.5 = zext i8 %binop.i279.5 to i32
  %gep172 = getelementptr [7 x i64], ptr %l_2, i16 0, i16 %l_25.1295
  %cmpi221.not = icmp eq i8 %binop.i279.5, 0
  %l_2225 = load i64, ptr %l_2, align 1
  %6 = and i64 %l_2225, 1
  %cmpi227.not269 = icmp eq i64 %6, 0
  %cmpi227.not = select i1 %cmpi221.not, i1 true, i1 %cmpi227.not269
  br i1 %cmpi227.not, label %if_else, label %if_then

while_end139:                                     ; preds = %if_cont
  %binop266 = add nuw nsw i8 %l_24.0296, 1
  %exitcond.not = icmp eq i8 %binop266, 7
  br i1 %exitcond.not, label %while_end122, label %while_body121

if_then:                                          ; preds = %while_cond140.preheader
  %l_2173 = load i64, ptr %gep172, align 1
  %binop7.i = and i64 %l_2173, -9223372036854775808
  %7 = xor i64 %binop7.i, -3885124101
  %8 = add i64 %7, %l_2173
  %binop15.i = and i64 %8, %l_2173
  %cmpi.i277 = icmp slt i64 %binop15.i, 0
  %binop19.i = sub i64 3885124100, %l_2173
  %spec.select.i278 = select i1 %cmpi.i277, i64 3885124100, i64 %binop19.i
  %gep234 = getelementptr [0 x i64], ptr %l_2, i16 0, i16 %l_25.1295
  store i64 %spec.select.i278, ptr %gep234, align 1
  store i64 203427846, ptr %l_2, align 1
  br label %if_cont

if_else:                                          ; preds = %while_cond140.preheader
  %binop238 = or i64 %l_2225, 3390761479
  store i64 %binop238, ptr %l_2, align 1
  %l_2243 = load i64, ptr %gep172, align 1
  %binop245 = xor i64 %l_2243, -15591
  %gep246 = getelementptr [0 x i64], ptr %l_2, i16 0, i16 %l_25.1295
  store i64 %binop245, ptr %gep246, align 1
  br label %if_cont

if_cont:                                          ; preds = %if_else, %if_then
  %binop248 = add nuw nsw i16 %l_25.1295, 1
  %cmpi137 = icmp samesign ult i16 %l_25.1295, 6
  br i1 %cmpi137, label %while_cond140.preheader, label %while_end139
}

define noundef i32 @main() local_unnamed_addr addrspace(1) #0 {
body:
  tail call addrspace(1) void @platform_main_begin()
  tail call addrspace(1) void @crc32_gentab()
  %0 = tail call addrspace(1) i64 @func_1()
  %crc32_context = load i64, ptr @crc32_context, align 1
  %binop = xor i64 %crc32_context, 4294967295
  tail call addrspace(1) void @platform_main_end(i64 zeroext %binop, i32 0)
  ret i32 0
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="atmega328p" }
attributes #1 = { alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="atmega328p" }
attributes #2 = { nofree norecurse nosync nounwind memory(none) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="atmega328p" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
