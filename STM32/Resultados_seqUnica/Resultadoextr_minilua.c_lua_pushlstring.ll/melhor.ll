; ModuleID = 'angha-ll-stm32f1/extr_minilua.c_lua_pushlstring.ll'
source_filename = "out/extr_minilua.c_lua_pushlstring.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @"TYPE_7__:init"(ptr writeonly captures(none) initializes((0, 4)) %_this) local_unnamed_addr addrspace(1) #0 {
body:
  store i32 0, ptr %_this, align 4
  ret void
}

declare i32 @api_incr_top(ptr) local_unnamed_addr addrspace(1) #1

declare i32 @luaC_checkGC(ptr) local_unnamed_addr addrspace(1) #1

declare i32 @luaS_newlstr(ptr, ptr, i32 zeroext, i32 zeroext) local_unnamed_addr addrspace(1) #1

declare i32 @setsvalue(ptr, i32, i32) local_unnamed_addr addrspace(1) #1

define void @lua_pushlstring(ptr %L, ptr %s, i32 zeroext %len, i32 zeroext %s.size) local_unnamed_addr addrspace(1) #1 {
body:
  %0 = tail call addrspace(1) i32 @luaC_checkGC(ptr %L)
  %top7 = load i32, ptr %L, align 4
  %1 = tail call addrspace(1) i32 @luaS_newlstr(ptr nonnull %L, ptr %s, i32 zeroext %len, i32 zeroext %s.size)
  %2 = tail call addrspace(1) i32 @setsvalue(ptr nonnull %L, i32 %top7, i32 %1)
  %3 = tail call addrspace(1) i32 @api_incr_top(ptr nonnull %L)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }
attributes #1 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
