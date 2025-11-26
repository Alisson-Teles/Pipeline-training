; ModuleID = 'out/00982.rob'
source_filename = "out/00982.rob"
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
define noundef i16 @func_1() local_unnamed_addr addrspace(1) #2 {
body:
  %l_9 = alloca [8 x i32], align 1
  %elem40 = getelementptr inbounds nuw i8, ptr %l_9, i16 28
  %gep82 = getelementptr inbounds nuw i8, ptr %l_9, i16 28
  %gep82.1 = getelementptr inbounds nuw i8, ptr %l_9, i16 24
  %gep82.2 = getelementptr inbounds nuw i8, ptr %l_9, i16 20
  %gep82.3 = getelementptr inbounds nuw i8, ptr %l_9, i16 16
  %gep82.4 = getelementptr inbounds nuw i8, ptr %l_9, i16 12
  %gep82.5 = getelementptr inbounds nuw i8, ptr %l_9, i16 8
  %gep82.6 = getelementptr inbounds nuw i8, ptr %l_9, i16 4
  br label %while_body31

while_body31:                                     ; preds = %body, %while_body31
  %l_2.0747 = phi i8 [ 0, %body ], [ %binop245, %while_body31 ]
  %0 = add nuw i8 %l_2.0747, 127
  %cmpi.i540 = icmp slt i8 %0, 0
  %binop.i541 = sub nuw nsw i8 -2, %l_2.0747
  %spec.select.i542 = select i1 %cmpi.i540, i8 -2, i8 %binop.i541
  %sext64 = sext i8 %spec.select.i542 to i32
  call addrspace(1) void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %l_9, i8 0, i64 32, i1 false)
  store i32 %sext64, ptr %elem40, align 1
  %sext = zext nneg i8 %l_2.0747 to i16
  %gep86 = getelementptr [0 x i32], ptr %l_9, i16 0, i16 %sext
  %binop78 = add nuw nsw i8 %l_2.0747, 2
  %1 = zext nneg i8 %binop78 to i16
  %gep79 = getelementptr [8 x i32], ptr %l_9, i16 0, i16 %1
  %l_980 = load i32, ptr %gep79, align 1
  %l_983 = load i32, ptr %gep82, align 1
  %cmpi84 = icmp slt i32 %l_980, %l_983
  %zext85 = zext i1 %cmpi84 to i32
  store i32 %zext85, ptr %gep86, align 1
  %l_983.1 = load i32, ptr %gep82, align 1
  %cmpi84.1 = icmp slt i32 %l_980, %l_983.1
  %zext85.1 = zext i1 %cmpi84.1 to i32
  store i32 %zext85.1, ptr %gep86, align 1
  %l_980.2 = load i32, ptr %gep79, align 1
  %l_983.2 = load i32, ptr %gep82, align 1
  %cmpi84.2 = icmp slt i32 %l_980.2, %l_983.2
  %zext85.2 = zext i1 %cmpi84.2 to i32
  store i32 %zext85.2, ptr %gep86, align 1
  %l_983.1752 = load i32, ptr %gep82.1, align 1
  %cmpi84.1753 = icmp slt i32 %l_980.2, %l_983.1752
  %zext85.1754 = zext i1 %cmpi84.1753 to i32
  store i32 %zext85.1754, ptr %gep86, align 1
  %l_983.1.1 = load i32, ptr %gep82.1, align 1
  %cmpi84.1.1 = icmp slt i32 %l_980.2, %l_983.1.1
  %zext85.1.1 = zext i1 %cmpi84.1.1 to i32
  store i32 %zext85.1.1, ptr %gep86, align 1
  %l_980.2.1 = load i32, ptr %gep79, align 1
  %l_983.2.1 = load i32, ptr %gep82.1, align 1
  %cmpi84.2.1 = icmp slt i32 %l_980.2.1, %l_983.2.1
  %zext85.2.1 = zext i1 %cmpi84.2.1 to i32
  store i32 %zext85.2.1, ptr %gep86, align 1
  %l_983.2756 = load i32, ptr %gep82.2, align 1
  %cmpi84.2757 = icmp slt i32 %l_980.2.1, %l_983.2756
  %zext85.2758 = zext i1 %cmpi84.2757 to i32
  store i32 %zext85.2758, ptr %gep86, align 1
  %l_983.1.2 = load i32, ptr %gep82.2, align 1
  %cmpi84.1.2 = icmp slt i32 %l_980.2.1, %l_983.1.2
  %zext85.1.2 = zext i1 %cmpi84.1.2 to i32
  store i32 %zext85.1.2, ptr %gep86, align 1
  %l_980.2.2 = load i32, ptr %gep79, align 1
  %l_983.2.2 = load i32, ptr %gep82.2, align 1
  %cmpi84.2.2 = icmp slt i32 %l_980.2.2, %l_983.2.2
  %zext85.2.2 = zext i1 %cmpi84.2.2 to i32
  store i32 %zext85.2.2, ptr %gep86, align 1
  %l_983.3 = load i32, ptr %gep82.3, align 1
  %cmpi84.3 = icmp slt i32 %l_980.2.2, %l_983.3
  %zext85.3 = zext i1 %cmpi84.3 to i32
  store i32 %zext85.3, ptr %gep86, align 1
  %l_983.1.3 = load i32, ptr %gep82.3, align 1
  %cmpi84.1.3 = icmp slt i32 %l_980.2.2, %l_983.1.3
  %zext85.1.3 = zext i1 %cmpi84.1.3 to i32
  store i32 %zext85.1.3, ptr %gep86, align 1
  %l_980.2.3 = load i32, ptr %gep79, align 1
  %l_983.2.3 = load i32, ptr %gep82.3, align 1
  %cmpi84.2.3 = icmp slt i32 %l_980.2.3, %l_983.2.3
  %zext85.2.3 = zext i1 %cmpi84.2.3 to i32
  store i32 %zext85.2.3, ptr %gep86, align 1
  %l_983.4 = load i32, ptr %gep82.4, align 1
  %cmpi84.4 = icmp slt i32 %l_980.2.3, %l_983.4
  %zext85.4 = zext i1 %cmpi84.4 to i32
  store i32 %zext85.4, ptr %gep86, align 1
  %l_983.1.4 = load i32, ptr %gep82.4, align 1
  %cmpi84.1.4 = icmp slt i32 %l_980.2.3, %l_983.1.4
  %zext85.1.4 = zext i1 %cmpi84.1.4 to i32
  store i32 %zext85.1.4, ptr %gep86, align 1
  %l_980.2.4 = load i32, ptr %gep79, align 1
  %l_983.2.4 = load i32, ptr %gep82.4, align 1
  %cmpi84.2.4 = icmp slt i32 %l_980.2.4, %l_983.2.4
  %zext85.2.4 = zext i1 %cmpi84.2.4 to i32
  store i32 %zext85.2.4, ptr %gep86, align 1
  %l_983.5 = load i32, ptr %gep82.5, align 1
  %cmpi84.5 = icmp slt i32 %l_980.2.4, %l_983.5
  %zext85.5 = zext i1 %cmpi84.5 to i32
  store i32 %zext85.5, ptr %gep86, align 1
  %l_983.1.5 = load i32, ptr %gep82.5, align 1
  %cmpi84.1.5 = icmp slt i32 %l_980.2.4, %l_983.1.5
  %zext85.1.5 = zext i1 %cmpi84.1.5 to i32
  store i32 %zext85.1.5, ptr %gep86, align 1
  %l_980.2.5 = load i32, ptr %gep79, align 1
  %l_983.2.5 = load i32, ptr %gep82.5, align 1
  %cmpi84.2.5 = icmp slt i32 %l_980.2.5, %l_983.2.5
  %zext85.2.5 = zext i1 %cmpi84.2.5 to i32
  store i32 %zext85.2.5, ptr %gep86, align 1
  %l_983.6 = load i32, ptr %gep82.6, align 1
  %cmpi84.6 = icmp slt i32 %l_980.2.5, %l_983.6
  %zext85.6 = zext i1 %cmpi84.6 to i32
  store i32 %zext85.6, ptr %gep86, align 1
  %l_983.1.6 = load i32, ptr %gep82.6, align 1
  %cmpi84.1.6 = icmp slt i32 %l_980.2.5, %l_983.1.6
  %zext85.1.6 = zext i1 %cmpi84.1.6 to i32
  store i32 %zext85.1.6, ptr %gep86, align 1
  %l_980.2.6 = load i32, ptr %gep79, align 1
  %l_983.2.6 = load i32, ptr %gep82.6, align 1
  %cmpi84.2.6 = icmp slt i32 %l_980.2.6, %l_983.2.6
  %zext85.2.6 = zext i1 %cmpi84.2.6 to i32
  store i32 %zext85.2.6, ptr %gep86, align 1
  %l_983.7 = load i32, ptr %l_9, align 1
  %cmpi84.7 = icmp slt i32 %l_980.2.6, %l_983.7
  %zext85.7 = zext i1 %cmpi84.7 to i32
  store i32 %zext85.7, ptr %gep86, align 1
  %l_983.1.7 = load i32, ptr %l_9, align 1
  %cmpi84.1.7 = icmp slt i32 %l_980.2.6, %l_983.1.7
  %zext85.1.7 = zext i1 %cmpi84.1.7 to i32
  store i32 %zext85.1.7, ptr %gep86, align 1
  %l_980.2.7 = load i32, ptr %gep79, align 1
  %l_983.2.7 = load i32, ptr %l_9, align 1
  %cmpi84.2.7 = icmp slt i32 %l_980.2.7, %l_983.2.7
  %zext85.2.7 = zext i1 %cmpi84.2.7 to i32
  store i32 %zext85.2.7, ptr %gep86, align 1
  %binop245 = add nuw nsw i8 %l_2.0747, 1
  %exitcond.not = icmp eq i8 %binop245, 3
  br i1 %exitcond.not, label %while_body513, label %while_body31

while_body513:                                    ; preds = %while_body31
  ret i16 0
}

define noundef i32 @main() local_unnamed_addr addrspace(1) #0 {
body:
  %l_9.i = alloca [8 x i32], align 1
  tail call addrspace(1) void @platform_main_begin()
  tail call addrspace(1) void @crc32_gentab()
  call addrspace(1) void @llvm.lifetime.start.p0(i64 32, ptr nonnull %l_9.i)
  %elem40.i = getelementptr inbounds nuw i8, ptr %l_9.i, i16 28
  %gep82.i = getelementptr inbounds nuw i8, ptr %l_9.i, i16 28
  %gep82.i.1 = getelementptr inbounds nuw i8, ptr %l_9.i, i16 24
  %gep82.i.2 = getelementptr inbounds nuw i8, ptr %l_9.i, i16 20
  %gep82.i.3 = getelementptr inbounds nuw i8, ptr %l_9.i, i16 16
  %gep82.i.4 = getelementptr inbounds nuw i8, ptr %l_9.i, i16 12
  %gep82.i.5 = getelementptr inbounds nuw i8, ptr %l_9.i, i16 8
  %gep82.i.6 = getelementptr inbounds nuw i8, ptr %l_9.i, i16 4
  br label %while_body31.i

while_body31.i:                                   ; preds = %while_body31.i, %body
  %l_2.0747.i = phi i8 [ 0, %body ], [ %binop245.i, %while_body31.i ]
  %0 = add nuw i8 %l_2.0747.i, 127
  %cmpi.i540.i = icmp slt i8 %0, 0
  %binop.i541.i = sub nuw nsw i8 -2, %l_2.0747.i
  %spec.select.i542.i = select i1 %cmpi.i540.i, i8 -2, i8 %binop.i541.i
  %sext64.i = sext i8 %spec.select.i542.i to i32
  call addrspace(1) void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %l_9.i, i8 0, i64 32, i1 false)
  store i32 %sext64.i, ptr %elem40.i, align 1
  %sext.i = zext nneg i8 %l_2.0747.i to i16
  %gep86.i = getelementptr [0 x i32], ptr %l_9.i, i16 0, i16 %sext.i
  %binop78.i = add nuw nsw i8 %l_2.0747.i, 2
  %1 = zext nneg i8 %binop78.i to i16
  %gep79.i = getelementptr [8 x i32], ptr %l_9.i, i16 0, i16 %1
  %l_980.i = load i32, ptr %gep79.i, align 1
  %l_983.i = load i32, ptr %gep82.i, align 1
  %cmpi84.i = icmp slt i32 %l_980.i, %l_983.i
  %zext85.i = zext i1 %cmpi84.i to i32
  store i32 %zext85.i, ptr %gep86.i, align 1
  %l_983.1.i = load i32, ptr %gep82.i, align 1
  %cmpi84.1.i = icmp slt i32 %l_980.i, %l_983.1.i
  %zext85.1.i = zext i1 %cmpi84.1.i to i32
  store i32 %zext85.1.i, ptr %gep86.i, align 1
  %l_983.2.i = load i32, ptr %gep82.i, align 1
  %cmpi84.2.i = icmp slt i32 %l_980.i, %l_983.2.i
  %zext85.2.i = zext i1 %cmpi84.2.i to i32
  store i32 %zext85.2.i, ptr %gep86.i, align 1
  %l_980.i.1 = load i32, ptr %gep79.i, align 1
  %l_983.i.1 = load i32, ptr %gep82.i.1, align 1
  %cmpi84.i.1 = icmp slt i32 %l_980.i.1, %l_983.i.1
  %zext85.i.1 = zext i1 %cmpi84.i.1 to i32
  store i32 %zext85.i.1, ptr %gep86.i, align 1
  %l_983.1.i.1 = load i32, ptr %gep82.i.1, align 1
  %cmpi84.1.i.1 = icmp slt i32 %l_980.i.1, %l_983.1.i.1
  %zext85.1.i.1 = zext i1 %cmpi84.1.i.1 to i32
  store i32 %zext85.1.i.1, ptr %gep86.i, align 1
  %l_983.2.i.1 = load i32, ptr %gep82.i.1, align 1
  %cmpi84.2.i.1 = icmp slt i32 %l_980.i.1, %l_983.2.i.1
  %zext85.2.i.1 = zext i1 %cmpi84.2.i.1 to i32
  store i32 %zext85.2.i.1, ptr %gep86.i, align 1
  %l_980.i.2 = load i32, ptr %gep79.i, align 1
  %l_983.i.2 = load i32, ptr %gep82.i.2, align 1
  %cmpi84.i.2 = icmp slt i32 %l_980.i.2, %l_983.i.2
  %zext85.i.2 = zext i1 %cmpi84.i.2 to i32
  store i32 %zext85.i.2, ptr %gep86.i, align 1
  %l_983.1.i.2 = load i32, ptr %gep82.i.2, align 1
  %cmpi84.1.i.2 = icmp slt i32 %l_980.i.2, %l_983.1.i.2
  %zext85.1.i.2 = zext i1 %cmpi84.1.i.2 to i32
  store i32 %zext85.1.i.2, ptr %gep86.i, align 1
  %l_983.2.i.2 = load i32, ptr %gep82.i.2, align 1
  %cmpi84.2.i.2 = icmp slt i32 %l_980.i.2, %l_983.2.i.2
  %zext85.2.i.2 = zext i1 %cmpi84.2.i.2 to i32
  store i32 %zext85.2.i.2, ptr %gep86.i, align 1
  %l_980.i.3 = load i32, ptr %gep79.i, align 1
  %l_983.i.3 = load i32, ptr %gep82.i.3, align 1
  %cmpi84.i.3 = icmp slt i32 %l_980.i.3, %l_983.i.3
  %zext85.i.3 = zext i1 %cmpi84.i.3 to i32
  store i32 %zext85.i.3, ptr %gep86.i, align 1
  %l_983.1.i.3 = load i32, ptr %gep82.i.3, align 1
  %cmpi84.1.i.3 = icmp slt i32 %l_980.i.3, %l_983.1.i.3
  %zext85.1.i.3 = zext i1 %cmpi84.1.i.3 to i32
  store i32 %zext85.1.i.3, ptr %gep86.i, align 1
  %l_983.2.i.3 = load i32, ptr %gep82.i.3, align 1
  %cmpi84.2.i.3 = icmp slt i32 %l_980.i.3, %l_983.2.i.3
  %zext85.2.i.3 = zext i1 %cmpi84.2.i.3 to i32
  store i32 %zext85.2.i.3, ptr %gep86.i, align 1
  %l_980.i.4 = load i32, ptr %gep79.i, align 1
  %l_983.i.4 = load i32, ptr %gep82.i.4, align 1
  %cmpi84.i.4 = icmp slt i32 %l_980.i.4, %l_983.i.4
  %zext85.i.4 = zext i1 %cmpi84.i.4 to i32
  store i32 %zext85.i.4, ptr %gep86.i, align 1
  %l_983.1.i.4 = load i32, ptr %gep82.i.4, align 1
  %cmpi84.1.i.4 = icmp slt i32 %l_980.i.4, %l_983.1.i.4
  %zext85.1.i.4 = zext i1 %cmpi84.1.i.4 to i32
  store i32 %zext85.1.i.4, ptr %gep86.i, align 1
  %l_983.2.i.4 = load i32, ptr %gep82.i.4, align 1
  %cmpi84.2.i.4 = icmp slt i32 %l_980.i.4, %l_983.2.i.4
  %zext85.2.i.4 = zext i1 %cmpi84.2.i.4 to i32
  store i32 %zext85.2.i.4, ptr %gep86.i, align 1
  %l_980.i.5 = load i32, ptr %gep79.i, align 1
  %l_983.i.5 = load i32, ptr %gep82.i.5, align 1
  %cmpi84.i.5 = icmp slt i32 %l_980.i.5, %l_983.i.5
  %zext85.i.5 = zext i1 %cmpi84.i.5 to i32
  store i32 %zext85.i.5, ptr %gep86.i, align 1
  %l_983.1.i.5 = load i32, ptr %gep82.i.5, align 1
  %cmpi84.1.i.5 = icmp slt i32 %l_980.i.5, %l_983.1.i.5
  %zext85.1.i.5 = zext i1 %cmpi84.1.i.5 to i32
  store i32 %zext85.1.i.5, ptr %gep86.i, align 1
  %l_983.2.i.5 = load i32, ptr %gep82.i.5, align 1
  %cmpi84.2.i.5 = icmp slt i32 %l_980.i.5, %l_983.2.i.5
  %zext85.2.i.5 = zext i1 %cmpi84.2.i.5 to i32
  store i32 %zext85.2.i.5, ptr %gep86.i, align 1
  %l_980.i.6 = load i32, ptr %gep79.i, align 1
  %l_983.i.6 = load i32, ptr %gep82.i.6, align 1
  %cmpi84.i.6 = icmp slt i32 %l_980.i.6, %l_983.i.6
  %zext85.i.6 = zext i1 %cmpi84.i.6 to i32
  store i32 %zext85.i.6, ptr %gep86.i, align 1
  %l_983.1.i.6 = load i32, ptr %gep82.i.6, align 1
  %cmpi84.1.i.6 = icmp slt i32 %l_980.i.6, %l_983.1.i.6
  %zext85.1.i.6 = zext i1 %cmpi84.1.i.6 to i32
  store i32 %zext85.1.i.6, ptr %gep86.i, align 1
  %l_983.2.i.6 = load i32, ptr %gep82.i.6, align 1
  %cmpi84.2.i.6 = icmp slt i32 %l_980.i.6, %l_983.2.i.6
  %zext85.2.i.6 = zext i1 %cmpi84.2.i.6 to i32
  store i32 %zext85.2.i.6, ptr %gep86.i, align 1
  %l_980.i.7 = load i32, ptr %gep79.i, align 1
  %l_983.i.7 = load i32, ptr %l_9.i, align 1
  %cmpi84.i.7 = icmp slt i32 %l_980.i.7, %l_983.i.7
  %zext85.i.7 = zext i1 %cmpi84.i.7 to i32
  store i32 %zext85.i.7, ptr %gep86.i, align 1
  %l_983.1.i.7 = load i32, ptr %l_9.i, align 1
  %cmpi84.1.i.7 = icmp slt i32 %l_980.i.7, %l_983.1.i.7
  %zext85.1.i.7 = zext i1 %cmpi84.1.i.7 to i32
  store i32 %zext85.1.i.7, ptr %gep86.i, align 1
  %l_983.2.i.7 = load i32, ptr %l_9.i, align 1
  %cmpi84.2.i.7 = icmp slt i32 %l_980.i.7, %l_983.2.i.7
  %zext85.2.i.7 = zext i1 %cmpi84.2.i.7 to i32
  store i32 %zext85.2.i.7, ptr %gep86.i, align 1
  %binop245.i = add nuw nsw i8 %l_2.0747.i, 1
  %exitcond.not.i = icmp eq i8 %binop245.i, 3
  br i1 %exitcond.not.i, label %func_1.exit, label %while_body31.i

func_1.exit:                                      ; preds = %while_body31.i
  call addrspace(1) void @llvm.lifetime.end.p0(i64 32, ptr nonnull %l_9.i)
  %crc32_context = load i64, ptr @crc32_context, align 1
  %binop = xor i64 %crc32_context, 4294967295
  tail call addrspace(1) void @platform_main_end(i64 zeroext %binop, i32 0)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) addrspace(1) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) addrspace(1) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) addrspace(1) #4

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="atmega328p" }
attributes #1 = { alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="atmega328p" }
attributes #2 = { nofree norecurse nosync nounwind memory(none) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="atmega328p" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
