; ModuleID = 'angha-ll-stm32f1/extr_system_methods.c_xsm_register.ll'
source_filename = "out/extr_system_methods.c_xsm_register.rob"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-eabi"

@xsm_lazy_doc_methods_cb = local_unnamed_addr global i32 0
@xsm_system_get_capabilities_cb = local_unnamed_addr global i32 0
@xsm_system_multicall_cb = local_unnamed_addr global i32 0
@xsm_token_system_get_capabilities = local_unnamed_addr global i32 0
@xsm_token_system_multicall = local_unnamed_addr global i32 0

declare i32 @XMLRPC_ServerRegisterIntrospectionCallback(i32, i32) local_unnamed_addr addrspace(1) #0

declare i32 @XMLRPC_ServerRegisterMethod(i32, i32, i32) local_unnamed_addr addrspace(1) #0

declare i32 @xi_register_system_methods(i32) local_unnamed_addr addrspace(1) #0

define void @xsm_register(i32 %server) local_unnamed_addr addrspace(1) #0 {
body:
  %0 = tail call addrspace(1) i32 @xi_register_system_methods(i32 %server)
  %xsm_token_system_multicall = load i32, ptr @xsm_token_system_multicall, align 4
  %xsm_system_multicall_cb = load i32, ptr @xsm_system_multicall_cb, align 4
  %1 = tail call addrspace(1) i32 @XMLRPC_ServerRegisterMethod(i32 %server, i32 %xsm_token_system_multicall, i32 %xsm_system_multicall_cb)
  %xsm_token_system_get_capabilities = load i32, ptr @xsm_token_system_get_capabilities, align 4
  %xsm_system_get_capabilities_cb = load i32, ptr @xsm_system_get_capabilities_cb, align 4
  %2 = tail call addrspace(1) i32 @XMLRPC_ServerRegisterMethod(i32 %server, i32 %xsm_token_system_get_capabilities, i32 %xsm_system_get_capabilities_cb)
  %xsm_lazy_doc_methods_cb = load i32, ptr @xsm_lazy_doc_methods_cb, align 4
  %3 = tail call addrspace(1) i32 @XMLRPC_ServerRegisterIntrospectionCallback(i32 %server, i32 %xsm_lazy_doc_methods_cb)
  ret void
}

attributes #0 = { "frame-pointer"="all" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"frame-pointer", i32 2}
