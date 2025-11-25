; ModuleID = 'out/00513.rob'
source_filename = "out/00513.rob"
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
define noundef zeroext i32 @func_1() local_unnamed_addr addrspace(1) #2 {
body:
  %l_3 = alloca [9 x i32], align 4
  %elem9 = getelementptr inbounds nuw i8, ptr %l_3, i32 4
  %elem10 = getelementptr inbounds nuw i8, ptr %l_3, i32 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %l_3, i8 0, i64 36, i1 false)
  store i32 -1475292643, ptr %l_3, align 4
  %gep.1 = getelementptr inbounds nuw i8, ptr %l_3, i32 4
  store i32 -1475292643, ptr %gep.1, align 4
  %gep.2 = getelementptr inbounds nuw i8, ptr %l_3, i32 8
  store i32 -1475292643, ptr %gep.2, align 4
  %gep.3 = getelementptr inbounds nuw i8, ptr %l_3, i32 12
  store i32 -1475292643, ptr %gep.3, align 4
  %gep.4 = getelementptr inbounds nuw i8, ptr %l_3, i32 16
  store i32 -1475292643, ptr %gep.4, align 4
  %gep.5 = getelementptr inbounds nuw i8, ptr %l_3, i32 20
  store i32 -1475292643, ptr %gep.5, align 4
  %gep.6 = getelementptr inbounds nuw i8, ptr %l_3, i32 24
  store i32 -1475292643, ptr %gep.6, align 4
  %gep.7 = getelementptr inbounds nuw i8, ptr %l_3, i32 28
  store i32 -1475292643, ptr %gep.7, align 4
  %gep.8 = getelementptr inbounds nuw i8, ptr %l_3, i32 32
  store i32 -1475292643, ptr %gep.8, align 4
  store i32 1, ptr %elem9, align 4
  br label %while_cond478.preheader

while_cond478.preheader:                          ; preds = %body, %while_cond609.preheader
  %l_70.3794 = phi i32 [ 2, %body ], [ %binop36.i, %while_cond609.preheader ]
  br label %while_cond485.preheader

while_end477:                                     ; preds = %while_cond609.preheader
  ret i32 0

while_cond609.preheader:                          ; preds = %while_cond485.preheader
  %binop36.i = add nuw nsw i32 %l_70.3794, 3
  %cmpi475.not = icmp eq i32 %binop36.i, 56
  br i1 %cmpi475.not, label %while_end477, label %while_cond478.preheader

while_cond485.preheader:                          ; preds = %while_cond485.preheader, %while_cond478.preheader
  %l_30.3792 = phi i32 [ 0, %while_cond478.preheader ], [ %binop533.3, %while_cond485.preheader ]
  %binop501 = or disjoint i32 %l_30.3792, 1
  %gep502 = getelementptr [9 x i32], ptr %l_3, i32 0, i32 %binop501
  %l_3503 = load i32, ptr %gep502, align 4
  %binop504 = or i32 %l_3503, -1525273803
  %binop.i777 = add i32 %binop504, %l_3503
  store i32 %binop.i777, ptr %elem10, align 4
  %l_3503.1 = load i32, ptr %gep502, align 4
  %binop504.1 = or i32 %l_3503.1, %binop504
  %binop.i777.1 = add i32 %binop504.1, %l_3503.1
  store i32 %binop.i777.1, ptr %elem10, align 4
  %l_3503.2 = load i32, ptr %gep502, align 4
  %binop504.2 = or i32 %l_3503.2, %binop504.1
  %binop.i777.2 = add i32 %binop504.2, %l_3503.2
  store i32 %binop.i777.2, ptr %elem10, align 4
  %l_3503.3 = load i32, ptr %gep502, align 4
  %binop504.3 = or i32 %l_3503.3, %binop504.2
  %binop.i777.3 = add i32 %binop504.3, %l_3503.3
  store i32 %binop.i777.3, ptr %elem10, align 4
  %l_3503.4 = load i32, ptr %gep502, align 4
  %binop504.4 = or i32 %l_3503.4, %binop504.3
  %binop.i777.4 = add i32 %binop504.4, %l_3503.4
  store i32 %binop.i777.4, ptr %elem10, align 4
  %l_3503.5 = load i32, ptr %gep502, align 4
  %binop504.5 = or i32 %l_3503.5, %binop504.4
  %binop.i777.5 = add i32 %binop504.5, %l_3503.5
  store i32 %binop.i777.5, ptr %elem10, align 4
  %binop501.1 = or disjoint i32 %l_30.3792, 2
  %gep502.1 = getelementptr [9 x i32], ptr %l_3, i32 0, i32 %binop501.1
  %l_3503.1796 = load i32, ptr %gep502.1, align 4
  %binop504.1797 = or i32 %l_3503.1796, -1525273803
  %binop.i777.1798 = add i32 %binop504.1797, %l_3503.1796
  store i32 %binop.i777.1798, ptr %elem10, align 4
  %l_3503.1.1 = load i32, ptr %gep502.1, align 4
  %binop504.1.1 = or i32 %l_3503.1.1, %binop504.1797
  %binop.i777.1.1 = add i32 %binop504.1.1, %l_3503.1.1
  store i32 %binop.i777.1.1, ptr %elem10, align 4
  %l_3503.2.1 = load i32, ptr %gep502.1, align 4
  %binop504.2.1 = or i32 %l_3503.2.1, %binop504.1.1
  %binop.i777.2.1 = add i32 %binop504.2.1, %l_3503.2.1
  store i32 %binop.i777.2.1, ptr %elem10, align 4
  %l_3503.3.1 = load i32, ptr %gep502.1, align 4
  %binop504.3.1 = or i32 %l_3503.3.1, %binop504.2.1
  %binop.i777.3.1 = add i32 %binop504.3.1, %l_3503.3.1
  store i32 %binop.i777.3.1, ptr %elem10, align 4
  %l_3503.4.1 = load i32, ptr %gep502.1, align 4
  %binop504.4.1 = or i32 %l_3503.4.1, %binop504.3.1
  %binop.i777.4.1 = add i32 %binop504.4.1, %l_3503.4.1
  store i32 %binop.i777.4.1, ptr %elem10, align 4
  %l_3503.5.1 = load i32, ptr %gep502.1, align 4
  %binop504.5.1 = or i32 %l_3503.5.1, %binop504.4.1
  %binop.i777.5.1 = add i32 %binop504.5.1, %l_3503.5.1
  store i32 %binop.i777.5.1, ptr %elem10, align 4
  %binop501.2 = or disjoint i32 %l_30.3792, 3
  %gep502.2 = getelementptr [9 x i32], ptr %l_3, i32 0, i32 %binop501.2
  %l_3503.2799 = load i32, ptr %gep502.2, align 4
  %binop504.2800 = or i32 %l_3503.2799, -1525273803
  %binop.i777.2801 = add i32 %binop504.2800, %l_3503.2799
  store i32 %binop.i777.2801, ptr %elem10, align 4
  %l_3503.1.2 = load i32, ptr %gep502.2, align 4
  %binop504.1.2 = or i32 %l_3503.1.2, %binop504.2800
  %binop.i777.1.2 = add i32 %binop504.1.2, %l_3503.1.2
  store i32 %binop.i777.1.2, ptr %elem10, align 4
  %l_3503.2.2 = load i32, ptr %gep502.2, align 4
  %binop504.2.2 = or i32 %l_3503.2.2, %binop504.1.2
  %binop.i777.2.2 = add i32 %binop504.2.2, %l_3503.2.2
  store i32 %binop.i777.2.2, ptr %elem10, align 4
  %l_3503.3.2 = load i32, ptr %gep502.2, align 4
  %binop504.3.2 = or i32 %l_3503.3.2, %binop504.2.2
  %binop.i777.3.2 = add i32 %binop504.3.2, %l_3503.3.2
  store i32 %binop.i777.3.2, ptr %elem10, align 4
  %l_3503.4.2 = load i32, ptr %gep502.2, align 4
  %binop504.4.2 = or i32 %l_3503.4.2, %binop504.3.2
  %binop.i777.4.2 = add i32 %binop504.4.2, %l_3503.4.2
  store i32 %binop.i777.4.2, ptr %elem10, align 4
  %l_3503.5.2 = load i32, ptr %gep502.2, align 4
  %binop504.5.2 = or i32 %l_3503.5.2, %binop504.4.2
  %binop.i777.5.2 = add i32 %binop504.5.2, %l_3503.5.2
  store i32 %binop.i777.5.2, ptr %elem10, align 4
  %binop501.3 = add nuw nsw i32 %l_30.3792, 4
  %gep502.3 = getelementptr [9 x i32], ptr %l_3, i32 0, i32 %binop501.3
  %l_3503.3802 = load i32, ptr %gep502.3, align 4
  %binop504.3803 = or i32 %l_3503.3802, -1525273803
  %binop.i777.3804 = add i32 %binop504.3803, %l_3503.3802
  store i32 %binop.i777.3804, ptr %elem10, align 4
  %l_3503.1.3 = load i32, ptr %gep502.3, align 4
  %binop504.1.3 = or i32 %l_3503.1.3, %binop504.3803
  %binop.i777.1.3 = add i32 %binop504.1.3, %l_3503.1.3
  store i32 %binop.i777.1.3, ptr %elem10, align 4
  %l_3503.2.3 = load i32, ptr %gep502.3, align 4
  %binop504.2.3 = or i32 %l_3503.2.3, %binop504.1.3
  %binop.i777.2.3 = add i32 %binop504.2.3, %l_3503.2.3
  store i32 %binop.i777.2.3, ptr %elem10, align 4
  %l_3503.3.3 = load i32, ptr %gep502.3, align 4
  %binop504.3.3 = or i32 %l_3503.3.3, %binop504.2.3
  %binop.i777.3.3 = add i32 %binop504.3.3, %l_3503.3.3
  store i32 %binop.i777.3.3, ptr %elem10, align 4
  %l_3503.4.3 = load i32, ptr %gep502.3, align 4
  %binop504.4.3 = or i32 %l_3503.4.3, %binop504.3.3
  %binop.i777.4.3 = add i32 %binop504.4.3, %l_3503.4.3
  store i32 %binop.i777.4.3, ptr %elem10, align 4
  %l_3503.5.3 = load i32, ptr %gep502.3, align 4
  %binop504.5.3 = or i32 %l_3503.5.3, %binop504.4.3
  %binop.i777.5.3 = add i32 %binop504.5.3, %l_3503.5.3
  store i32 %binop.i777.5.3, ptr %elem10, align 4
  %binop533.3 = add nuw nsw i32 %l_30.3792, 4
  %exitcond.not.3 = icmp eq i32 %binop533.3, 8
  br i1 %exitcond.not.3, label %while_cond609.preheader, label %while_cond485.preheader
}

define noundef i32 @main() local_unnamed_addr addrspace(1) #0 {
body:
  %l_3.i = alloca [9 x i32], align 4
  tail call addrspace(1) void @platform_main_begin()
  tail call addrspace(1) void @crc32_gentab()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %l_3.i)
  %elem9.i = getelementptr inbounds nuw i8, ptr %l_3.i, i32 4
  %elem10.i = getelementptr inbounds nuw i8, ptr %l_3.i, i32 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %l_3.i, i8 0, i64 36, i1 false)
  store i32 -1475292643, ptr %l_3.i, align 4
  store i32 -1475292643, ptr %elem9.i, align 4
  store i32 -1475292643, ptr %elem10.i, align 4
  %gep.3.i = getelementptr inbounds nuw i8, ptr %l_3.i, i32 12
  store i32 -1475292643, ptr %gep.3.i, align 4
  %gep.4.i = getelementptr inbounds nuw i8, ptr %l_3.i, i32 16
  store i32 -1475292643, ptr %gep.4.i, align 4
  %gep.5.i = getelementptr inbounds nuw i8, ptr %l_3.i, i32 20
  store i32 -1475292643, ptr %gep.5.i, align 4
  %gep.6.i = getelementptr inbounds nuw i8, ptr %l_3.i, i32 24
  store i32 -1475292643, ptr %gep.6.i, align 4
  %gep.7.i = getelementptr inbounds nuw i8, ptr %l_3.i, i32 28
  store i32 -1475292643, ptr %gep.7.i, align 4
  %gep.8.i = getelementptr inbounds nuw i8, ptr %l_3.i, i32 32
  store i32 -1475292643, ptr %gep.8.i, align 4
  store i32 1, ptr %elem9.i, align 4
  br label %while_cond478.preheader.i

while_cond478.preheader.i:                        ; preds = %while_cond609.preheader.i, %body
  %l_70.3794.i = phi i32 [ 2, %body ], [ %binop36.i.i, %while_cond609.preheader.i ]
  br label %while_cond485.preheader.i

while_cond609.preheader.i:                        ; preds = %while_cond485.preheader.i
  %binop36.i.i = add nuw nsw i32 %l_70.3794.i, 3
  %cmpi475.not.i = icmp eq i32 %binop36.i.i, 56
  br i1 %cmpi475.not.i, label %func_1.exit, label %while_cond478.preheader.i

while_cond485.preheader.i:                        ; preds = %while_cond485.preheader.i, %while_cond478.preheader.i
  %l_30.3792.i = phi i32 [ 0, %while_cond478.preheader.i ], [ %binop501.i.3, %while_cond485.preheader.i ]
  %binop501.i = or disjoint i32 %l_30.3792.i, 1
  %gep502.i = getelementptr [9 x i32], ptr %l_3.i, i32 0, i32 %binop501.i
  %l_3503.i = load i32, ptr %gep502.i, align 4
  %binop504.i = or i32 %l_3503.i, -1525273803
  %binop.i777.i = add i32 %binop504.i, %l_3503.i
  store i32 %binop.i777.i, ptr %elem10.i, align 4
  %l_3503.1.i = load i32, ptr %gep502.i, align 4
  %binop504.1.i = or i32 %l_3503.1.i, %binop504.i
  %binop.i777.1.i = add i32 %binop504.1.i, %l_3503.1.i
  store i32 %binop.i777.1.i, ptr %elem10.i, align 4
  %l_3503.2.i = load i32, ptr %gep502.i, align 4
  %binop504.2.i = or i32 %l_3503.2.i, %binop504.1.i
  %binop.i777.2.i = add i32 %binop504.2.i, %l_3503.2.i
  store i32 %binop.i777.2.i, ptr %elem10.i, align 4
  %l_3503.3.i = load i32, ptr %gep502.i, align 4
  %binop504.3.i = or i32 %l_3503.3.i, %binop504.2.i
  %binop.i777.3.i = add i32 %binop504.3.i, %l_3503.3.i
  store i32 %binop.i777.3.i, ptr %elem10.i, align 4
  %l_3503.4.i = load i32, ptr %gep502.i, align 4
  %binop504.4.i = or i32 %l_3503.4.i, %binop504.3.i
  %binop.i777.4.i = add i32 %binop504.4.i, %l_3503.4.i
  store i32 %binop.i777.4.i, ptr %elem10.i, align 4
  %l_3503.5.i = load i32, ptr %gep502.i, align 4
  %binop504.5.i = or i32 %l_3503.5.i, %binop504.4.i
  %binop.i777.5.i = add i32 %binop504.5.i, %l_3503.5.i
  store i32 %binop.i777.5.i, ptr %elem10.i, align 4
  %binop501.i.1 = or disjoint i32 %l_30.3792.i, 2
  %gep502.i.1 = getelementptr [9 x i32], ptr %l_3.i, i32 0, i32 %binop501.i.1
  %l_3503.i.1 = load i32, ptr %gep502.i.1, align 4
  %binop504.i.1 = or i32 %l_3503.i.1, -1525273803
  %binop.i777.i.1 = add i32 %binop504.i.1, %l_3503.i.1
  store i32 %binop.i777.i.1, ptr %elem10.i, align 4
  %l_3503.1.i.1 = load i32, ptr %gep502.i.1, align 4
  %binop504.1.i.1 = or i32 %l_3503.1.i.1, %binop504.i.1
  %binop.i777.1.i.1 = add i32 %binop504.1.i.1, %l_3503.1.i.1
  store i32 %binop.i777.1.i.1, ptr %elem10.i, align 4
  %l_3503.2.i.1 = load i32, ptr %gep502.i.1, align 4
  %binop504.2.i.1 = or i32 %l_3503.2.i.1, %binop504.1.i.1
  %binop.i777.2.i.1 = add i32 %binop504.2.i.1, %l_3503.2.i.1
  store i32 %binop.i777.2.i.1, ptr %elem10.i, align 4
  %l_3503.3.i.1 = load i32, ptr %gep502.i.1, align 4
  %binop504.3.i.1 = or i32 %l_3503.3.i.1, %binop504.2.i.1
  %binop.i777.3.i.1 = add i32 %binop504.3.i.1, %l_3503.3.i.1
  store i32 %binop.i777.3.i.1, ptr %elem10.i, align 4
  %l_3503.4.i.1 = load i32, ptr %gep502.i.1, align 4
  %binop504.4.i.1 = or i32 %l_3503.4.i.1, %binop504.3.i.1
  %binop.i777.4.i.1 = add i32 %binop504.4.i.1, %l_3503.4.i.1
  store i32 %binop.i777.4.i.1, ptr %elem10.i, align 4
  %l_3503.5.i.1 = load i32, ptr %gep502.i.1, align 4
  %binop504.5.i.1 = or i32 %l_3503.5.i.1, %binop504.4.i.1
  %binop.i777.5.i.1 = add i32 %binop504.5.i.1, %l_3503.5.i.1
  store i32 %binop.i777.5.i.1, ptr %elem10.i, align 4
  %binop501.i.2 = or disjoint i32 %l_30.3792.i, 3
  %gep502.i.2 = getelementptr [9 x i32], ptr %l_3.i, i32 0, i32 %binop501.i.2
  %l_3503.i.2 = load i32, ptr %gep502.i.2, align 4
  %binop504.i.2 = or i32 %l_3503.i.2, -1525273803
  %binop.i777.i.2 = add i32 %binop504.i.2, %l_3503.i.2
  store i32 %binop.i777.i.2, ptr %elem10.i, align 4
  %l_3503.1.i.2 = load i32, ptr %gep502.i.2, align 4
  %binop504.1.i.2 = or i32 %l_3503.1.i.2, %binop504.i.2
  %binop.i777.1.i.2 = add i32 %binop504.1.i.2, %l_3503.1.i.2
  store i32 %binop.i777.1.i.2, ptr %elem10.i, align 4
  %l_3503.2.i.2 = load i32, ptr %gep502.i.2, align 4
  %binop504.2.i.2 = or i32 %l_3503.2.i.2, %binop504.1.i.2
  %binop.i777.2.i.2 = add i32 %binop504.2.i.2, %l_3503.2.i.2
  store i32 %binop.i777.2.i.2, ptr %elem10.i, align 4
  %l_3503.3.i.2 = load i32, ptr %gep502.i.2, align 4
  %binop504.3.i.2 = or i32 %l_3503.3.i.2, %binop504.2.i.2
  %binop.i777.3.i.2 = add i32 %binop504.3.i.2, %l_3503.3.i.2
  store i32 %binop.i777.3.i.2, ptr %elem10.i, align 4
  %l_3503.4.i.2 = load i32, ptr %gep502.i.2, align 4
  %binop504.4.i.2 = or i32 %l_3503.4.i.2, %binop504.3.i.2
  %binop.i777.4.i.2 = add i32 %binop504.4.i.2, %l_3503.4.i.2
  store i32 %binop.i777.4.i.2, ptr %elem10.i, align 4
  %l_3503.5.i.2 = load i32, ptr %gep502.i.2, align 4
  %binop504.5.i.2 = or i32 %l_3503.5.i.2, %binop504.4.i.2
  %binop.i777.5.i.2 = add i32 %binop504.5.i.2, %l_3503.5.i.2
  store i32 %binop.i777.5.i.2, ptr %elem10.i, align 4
  %binop501.i.3 = add nuw nsw i32 %l_30.3792.i, 4
  %gep502.i.3 = getelementptr [9 x i32], ptr %l_3.i, i32 0, i32 %binop501.i.3
  %l_3503.i.3 = load i32, ptr %gep502.i.3, align 4
  %binop504.i.3 = or i32 %l_3503.i.3, -1525273803
  %binop.i777.i.3 = add i32 %binop504.i.3, %l_3503.i.3
  store i32 %binop.i777.i.3, ptr %elem10.i, align 4
  %l_3503.1.i.3 = load i32, ptr %gep502.i.3, align 4
  %binop504.1.i.3 = or i32 %l_3503.1.i.3, %binop504.i.3
  %binop.i777.1.i.3 = add i32 %binop504.1.i.3, %l_3503.1.i.3
  store i32 %binop.i777.1.i.3, ptr %elem10.i, align 4
  %l_3503.2.i.3 = load i32, ptr %gep502.i.3, align 4
  %binop504.2.i.3 = or i32 %l_3503.2.i.3, %binop504.1.i.3
  %binop.i777.2.i.3 = add i32 %binop504.2.i.3, %l_3503.2.i.3
  store i32 %binop.i777.2.i.3, ptr %elem10.i, align 4
  %l_3503.3.i.3 = load i32, ptr %gep502.i.3, align 4
  %binop504.3.i.3 = or i32 %l_3503.3.i.3, %binop504.2.i.3
  %binop.i777.3.i.3 = add i32 %binop504.3.i.3, %l_3503.3.i.3
  store i32 %binop.i777.3.i.3, ptr %elem10.i, align 4
  %l_3503.4.i.3 = load i32, ptr %gep502.i.3, align 4
  %binop504.4.i.3 = or i32 %l_3503.4.i.3, %binop504.3.i.3
  %binop.i777.4.i.3 = add i32 %binop504.4.i.3, %l_3503.4.i.3
  store i32 %binop.i777.4.i.3, ptr %elem10.i, align 4
  %l_3503.5.i.3 = load i32, ptr %gep502.i.3, align 4
  %binop504.5.i.3 = or i32 %l_3503.5.i.3, %binop504.4.i.3
  %binop.i777.5.i.3 = add i32 %binop504.5.i.3, %l_3503.5.i.3
  store i32 %binop.i777.5.i.3, ptr %elem10.i, align 4
  %exitcond.not.i.3 = icmp eq i32 %binop501.i.3, 8
  br i1 %exitcond.not.i.3, label %while_cond609.preheader.i, label %while_cond485.preheader.i

func_1.exit:                                      ; preds = %while_cond609.preheader.i
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %l_3.i)
  %crc32_context = load i64, ptr @crc32_context, align 8
  %binop = xor i64 %crc32_context, 4294967295
  tail call addrspace(1) void @platform_main_end(i64 zeroext %binop, i32 0)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #2 = { nofree norecurse nosync nounwind memory(none) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
