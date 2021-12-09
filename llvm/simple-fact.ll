define fastcc i64 @_mll_entry(i64 addrspace(1)* %arguments1) gc "statepoint-example" {
entry_0088:
	; LET fact0071 = alloc  {fact00650074,0,1}
	; emitCall: @_mll_alloc (3) ;; live = {}
	%r2 = call token (i64,i32,i64 addrspace(1)* (i64)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64)* @_mll_alloc,
		i32 1,i32 0,
		i64 3,
		i32 0,i32 0)
	%r3 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r2)
	%r4 = getelementptr i64, i64 addrspace(1)* %r3, i32 0
	%r5 = ptrtoint i64 (i64 addrspace(1)*,i64)* @fact0065 to i64
	store i64 %r5, i64 addrspace(1)* %r4
	%r6 = getelementptr i64, i64 addrspace(1)* %r3, i32 1
	store i64 1, i64 addrspace(1)* %r6
	%r7 = getelementptr i64, i64 addrspace(1)* %r3, i32 2
	store i64 3, i64 addrspace(1)* %r7
	; LET fact_cp0081 = #0(fact0071)
	%r8 = bitcast i64 addrspace(1)* %r3 to i64 addrspace(1)* addrspace(1)*
	%r9 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r8, i32 0
	%r10 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r9
	; LET _t00040080 = apply fact_cp0081 (fact0071,5)
	%r11 = ptrtoint i64 addrspace(1)* %r10 to i64
	%r12 = inttoptr i64 %r11 to i64 (i64 addrspace(1)*,i64)*
	; emitCall: %r12 (%r3, 11) ;; live = {%r3, %r10}
	%r13 = call token (i64,i32,i64 (i64 addrspace(1)*,i64)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_i64p1i64i64f(i64 0,i32 0,
		i64 (i64 addrspace(1)*,i64)* %r12,
		i32 2,i32 0,
		i64 addrspace(1)* %r3, i64 11,
		i32 0,i32 0,
		i64 addrspace(1)* %r3, i64 addrspace(1)* %r10)
	%r14 = call i64 @llvm.experimental.gc.result.i64(token %r13)
	%r15 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r13,i32 9,i32 9)
	%r16 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r13,i32 10,i32 10)
	; IF IntEq(_t00040080,120)
	%r17 = icmp eq i64 %r14, 241
	br i1 %r17, label %then_008A, label %else_0089
else_0089:
	; LET _t00060087 = call _mll_print ("Fail\n")
	; emitCall: @_mll_print (@_slit_1) ;; live = {}
	%r21 = bitcast [2 x i64] addrspace(1)* @_slit_1 to i64 addrspace(1)*
	%r22 = call token (i64,i32,void (i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_voidp1i64f(i64 0,i32 0,
		void (i64 addrspace(1)*)* @_mll_print,
		i32 1,i32 0,
		i64 addrspace(1)* %r21,
		i32 0,i32 0)
	br label %join_008B
then_008A:
	; LET _t00050085 = call _mll_print ("Ok\n")
	; emitCall: @_mll_print (@_slit_0) ;; live = {}
	%r18 = bitcast [2 x i64] addrspace(1)* @_slit_0 to i64 addrspace(1)*
	%r19 = call token (i64,i32,void (i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_voidp1i64f(i64 0,i32 0,
		void (i64 addrspace(1)*)* @_mll_print,
		i32 1,i32 0,
		i64 addrspace(1)* %r18,
		i32 0,i32 0)
	br label %join_008B
join_008B:
	%_t000020 = phi i64 [ 1, %else_0089 ], [ 1, %then_008A ]
	ret i64 1
}

define fastcc i64 @fact0065(i64 addrspace(1)* %fact_clos23,i64 %n24) gc "statepoint-example" {
entry_008C:
	; LET zero0075 = #1(fact_clos0073)
	%r25 = bitcast i64 addrspace(1)* %fact_clos23 to i64 addrspace(1)* addrspace(1)*
	%r26 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r25, i32 1
	%r27 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r26
	; LET one0076 = #2(fact_clos0073)
	%r28 = bitcast i64 addrspace(1)* %fact_clos23 to i64 addrspace(1)* addrspace(1)*
	%r29 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r28, i32 2
	%r30 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r29
	; IF IntLte(n0072,zero0075)
	%r32 = ptrtoint i64 addrspace(1)* %r27 to i64
	%r31 = icmp sle i64 %n24, %r32
	%r33 = ptrtoint i64 addrspace(1)* %r30 to i64
	%r34 = ptrtoint i64 addrspace(1)* %r30 to i64
	br i1 %r31, label %then_008E, label %else_008D
else_008D:
	; LET _t0002007D = IntSub (n007C,one007A)
	%r35 = sub i64 %n24, %r34
	%r36 = add i64 %r35, 1
	; LET _t0001007E = apply fact00650074 (fact007B,_t0002007D)
	; emitCall: @fact0065 (%fact_clos23, %r36) ;; live = {%fact_clos23, %n24, %r36}
	%r37 = call token (i64,i32,i64 (i64 addrspace(1)*,i64)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_i64p1i64i64f(i64 0,i32 0,
		i64 (i64 addrspace(1)*,i64)* @fact0065,
		i32 2,i32 0,
		i64 addrspace(1)* %fact_clos23, i64 %r36,
		i32 0,i32 0,
		i64 addrspace(1)* %fact_clos23)
	%r38 = call i64 @llvm.experimental.gc.result.i64(token %r37)
	%r39 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r37,i32 9,i32 9)
	; LET _t0003007F = IntMul (n007C,_t0001007E)
	%r40 = sub i64 %n24, 1
	%r41 = ashr i64 %r38, 1
	%r42 = mul i64 %r40, %r41
	%r43 = add i64 %r42, 1
	ret i64 %r43
then_008E:
	ret i64 %r33
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
