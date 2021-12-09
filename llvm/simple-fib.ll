define fastcc i64 @_mll_entry(i64 addrspace(1)* %arguments1) gc "statepoint-example" {
entry_0081:
	; LET fib006C = alloc  {fib005E006F}
	; emitCall: @_mll_alloc (1) ;; live = {}
	%r2 = call token (i64,i32,i64 addrspace(1)* (i64)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64)* @_mll_alloc,
		i32 1,i32 0,
		i64 1,
		i32 0,i32 0)
	%r3 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r2)
	%r4 = getelementptr i64, i64 addrspace(1)* %r3, i32 0
	%r5 = ptrtoint i64 (i64 addrspace(1)*,i64)* @fib005E to i64
	store i64 %r5, i64 addrspace(1)* %r4
	; LET fib_cp007A = #0(fib006C)
	%r6 = bitcast i64 addrspace(1)* %r3 to i64 addrspace(1)* addrspace(1)*
	%r7 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r6, i32 0
	%r8 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r7
	; LET _t00060079 = apply fib_cp007A (fib006C,5)
	%r9 = ptrtoint i64 addrspace(1)* %r8 to i64
	%r10 = inttoptr i64 %r9 to i64 (i64 addrspace(1)*,i64)*
	; emitCall: %r10 (%r3, 11) ;; live = {%r3, %r8}
	%r11 = call token (i64,i32,i64 (i64 addrspace(1)*,i64)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_i64p1i64i64f(i64 0,i32 0,
		i64 (i64 addrspace(1)*,i64)* %r10,
		i32 2,i32 0,
		i64 addrspace(1)* %r3, i64 11,
		i32 0,i32 0,
		i64 addrspace(1)* %r3, i64 addrspace(1)* %r8)
	%r12 = call i64 @llvm.experimental.gc.result.i64(token %r11)
	%r13 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r11,i32 9,i32 9)
	%r14 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r11,i32 10,i32 10)
	; IF IntEq(_t00060079,8)
	%r15 = icmp eq i64 %r12, 17
	br i1 %r15, label %then_0083, label %else_0082
else_0082:
	; LET _t00080080 = call _mll_print ("Fail\n")
	; emitCall: @_mll_print (@_slit_1) ;; live = {}
	%r19 = bitcast [2 x i64] addrspace(1)* @_slit_1 to i64 addrspace(1)*
	%r20 = call token (i64,i32,void (i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_voidp1i64f(i64 0,i32 0,
		void (i64 addrspace(1)*)* @_mll_print,
		i32 1,i32 0,
		i64 addrspace(1)* %r19,
		i32 0,i32 0)
	br label %join_0084
then_0083:
	; LET _t0007007E = call _mll_print ("Ok\n")
	; emitCall: @_mll_print (@_slit_0) ;; live = {}
	%r16 = bitcast [2 x i64] addrspace(1)* @_slit_0 to i64 addrspace(1)*
	%r17 = call token (i64,i32,void (i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_voidp1i64f(i64 0,i32 0,
		void (i64 addrspace(1)*)* @_mll_print,
		i32 1,i32 0,
		i64 addrspace(1)* %r16,
		i32 0,i32 0)
	br label %join_0084
join_0084:
	%_t000018 = phi i64 [ 1, %else_0082 ], [ 1, %then_0083 ]
	ret i64 1
}

define fastcc i64 @fib005E(i64 addrspace(1)* %fib_clos21,i64 %n22) gc "statepoint-example" {
entry_0085:
	; IF IntLte(n006D,1)
	%r23 = icmp sle i64 %n22, 3
	br i1 %r23, label %then_0087, label %else_0086
else_0086:
	; LET _t00020074 = IntSub (n0073,1)
	%r24 = sub i64 %n22, 2
	; LET _t00010075 = apply fib005E006F (fib0072,_t00020074)
	; emitCall: @fib005E (%fib_clos21, %r24) ;; live = {%fib_clos21, %n22, %r24}
	%r25 = call token (i64,i32,i64 (i64 addrspace(1)*,i64)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_i64p1i64i64f(i64 0,i32 0,
		i64 (i64 addrspace(1)*,i64)* @fib005E,
		i32 2,i32 0,
		i64 addrspace(1)* %fib_clos21, i64 %r24,
		i32 0,i32 0,
		i64 addrspace(1)* %fib_clos21)
	%r26 = call i64 @llvm.experimental.gc.result.i64(token %r25)
	%r27 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r25,i32 9,i32 9)
	; LET _t00040076 = IntSub (n0073,2)
	%r28 = sub i64 %n22, 4
	; LET _t00030077 = apply fib005E006F (fib0072,_t00040076)
	; emitCall: @fib005E (%r27, %r28) ;; live = {%r27, %r26, %r28}
	%r29 = call token (i64,i32,i64 (i64 addrspace(1)*,i64)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_i64p1i64i64f(i64 0,i32 0,
		i64 (i64 addrspace(1)*,i64)* @fib005E,
		i32 2,i32 0,
		i64 addrspace(1)* %r27, i64 %r28,
		i32 0,i32 0,
		i64 addrspace(1)* %r27)
	%r30 = call i64 @llvm.experimental.gc.result.i64(token %r29)
	%r31 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r29,i32 9,i32 9)
	; LET _t00050078 = IntAdd (_t00010075,_t00030077)
	%r32 = sub i64 %r26, 1
	%r33 = add i64 %r32, %r30
	ret i64 %r33
then_0087:
	ret i64 3
}


declare i64 addrspace(1)* @_mll_alloc(i64)
declare i64 addrspace(1)* @_mll_concat(i64 addrspace(1)*,i64 addrspace(1)*)
declare void @_mll_exit(i64)
declare void @_mll_fail(i64 addrspace(1)*)
declare void @_mll_print(i64 addrspace(1)*)
declare i64 addrspace(1)* @_mll_str_chr(i64)
@_slit_0 = global [2 x i64] [
	i64 7,
	i64 682831
]

@_slit_1 = global [2 x i64] [
	i64 11,
	i64 44768518470
]


declare token @llvm.experimental.gc.statepoint.p0f_i64p1i64i64f(i64,i32,i64 (i64 addrspace(1)*,i64)*,i32,i32,...)
declare i64 @llvm.experimental.gc.result.i64(token)
declare token @llvm.experimental.gc.statepoint.p0f_voidp1i64f(i64,i32,void (i64 addrspace(1)*)*,i32,i32,...)
declare i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token)
declare token @llvm.experimental.gc.statepoint.p0f_p1i64i64f(i64,i32,i64 addrspace(1)* (i64)*,i32,i32,...)
declare i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token,i32,i32)
