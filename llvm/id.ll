define fastcc i64 @_mll_entry(i64 addrspace(1)* %arguments1) gc "statepoint-example" {
entry_0080:
	; LET id0070 = alloc  {id00650073}
	; emitCall: @_mll_alloc (1) ;; live = {}
	%r2 = call token (i64,i32,i64 addrspace(1)* (i64)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64)* @_mll_alloc,
		i32 1,i32 0,
		i64 1,
		i32 0,i32 0)
	%r3 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r2)
	%r4 = getelementptr i64, i64 addrspace(1)* %r3, i32 0
	%r5 = ptrtoint i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)* @id0065 to i64
	store i64 %r5, i64 addrspace(1)* %r4
	; LET id_cp0075 = #0(id0070)
	%r6 = bitcast i64 addrspace(1)* %r3 to i64 addrspace(1)* addrspace(1)*
	%r7 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r6, i32 0
	%r8 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r7
	; LET _t00020074 = apply id_cp0075 (id0070,id0070)
	%r9 = ptrtoint i64 addrspace(1)* %r8 to i64
	%r10 = inttoptr i64 %r9 to i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)*
	; emitCall: %r10 (%r3, %r3) ;; live = {%r3, %r8}
	%r11 = call token (i64,i32,i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64p1i64p1i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)* %r10,
		i32 2,i32 0,
		i64 addrspace(1)* %r3, i64 addrspace(1)* %r3,
		i32 0,i32 0,
		i64 addrspace(1)* %r3, i64 addrspace(1)* %r8)
	%r12 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r11)
	%r13 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r11,i32 9,i32 9)
	%r14 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r11,i32 10,i32 10)
	; LET _t0002_cp0077 = #0(_t00020074)
	%r15 = bitcast i64 addrspace(1)* %r12 to i64 addrspace(1)* addrspace(1)*
	%r16 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r15, i32 0
	%r17 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r16
	; LET _t00010076 = apply _t0002_cp0077 (_t00020074,id0070)
	%r18 = ptrtoint i64 addrspace(1)* %r17 to i64
	%r19 = inttoptr i64 %r18 to i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)*
	; emitCall: %r19 (%r12, %r13) ;; live = {%r13, %r12, %r17}
	%r20 = call token (i64,i32,i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64p1i64p1i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)* %r19,
		i32 2,i32 0,
		i64 addrspace(1)* %r12, i64 addrspace(1)* %r13,
		i32 0,i32 0,
		i64 addrspace(1)* %r13, i64 addrspace(1)* %r12, i64 addrspace(1)* %r17)
	%r21 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r20)
	%r22 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r20,i32 9,i32 9)
	%r23 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r20,i32 10,i32 10)
	%r24 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r20,i32 11,i32 11)
	; LET _t0001_cp0079 = #0(_t00010076)
	%r25 = bitcast i64 addrspace(1)* %r21 to i64 addrspace(1)* addrspace(1)*
	%r26 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r25, i32 0
	%r27 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r26
	; LET n0078 = apply _t0001_cp0079 (_t00010076,42)
	%r28 = ptrtoint i64 addrspace(1)* %r27 to i64
	%r29 = inttoptr i64 %r28 to i64 (i64 addrspace(1)*,i64)*
	; emitCall: %r29 (%r21, 85) ;; live = {%r21, %r27}
	%r30 = call token (i64,i32,i64 (i64 addrspace(1)*,i64)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_i64p1i64i64f(i64 0,i32 0,
		i64 (i64 addrspace(1)*,i64)* %r29,
		i32 2,i32 0,
		i64 addrspace(1)* %r21, i64 85,
		i32 0,i32 0,
		i64 addrspace(1)* %r21, i64 addrspace(1)* %r27)
	%r31 = call i64 @llvm.experimental.gc.result.i64(token %r30)
	%r32 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r30,i32 9,i32 9)
	%r33 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r30,i32 10,i32 10)
	; IF IntEq(n0078,42)
	%r34 = icmp eq i64 %r31, 85
	br i1 %r34, label %then_0082, label %else_0081
else_0081:
	; LET _t0004007F = call _mll_print ("Fail\n")
	; emitCall: @_mll_print (@_slit_1) ;; live = {}
	%r38 = bitcast [2 x i64] addrspace(1)* @_slit_1 to i64 addrspace(1)*
	%r39 = call token (i64,i32,void (i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_voidp1i64f(i64 0,i32 0,
		void (i64 addrspace(1)*)* @_mll_print,
		i32 1,i32 0,
		i64 addrspace(1)* %r38,
		i32 0,i32 0)
	br label %join_0083
then_0082:
	; LET _t0003007D = call _mll_print ("Ok\n")
	; emitCall: @_mll_print (@_slit_0) ;; live = {}
	%r35 = bitcast [2 x i64] addrspace(1)* @_slit_0 to i64 addrspace(1)*
	%r36 = call token (i64,i32,void (i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_voidp1i64f(i64 0,i32 0,
		void (i64 addrspace(1)*)* @_mll_print,
		i32 1,i32 0,
		i64 addrspace(1)* %r35,
		i32 0,i32 0)
	br label %join_0083
join_0083:
	%_t000037 = phi i64 [ 1, %else_0081 ], [ 1, %then_0082 ]
	ret i64 1
}

define fastcc i64 addrspace(1)* @id0065(i64 addrspace(1)* %id_clos40,i64 addrspace(1)* %x41) gc "statepoint-example" {
entry_0084:
	ret i64 addrspace(1)* %x41
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


declare token @llvm.experimental.gc.statepoint.p0f_p1i64p1i64p1i64f(i64,i32,i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)*,i32,i32,...)
declare token @llvm.experimental.gc.statepoint.p0f_i64p1i64i64f(i64,i32,i64 (i64 addrspace(1)*,i64)*,i32,i32,...)
declare i64 @llvm.experimental.gc.result.i64(token)
declare token @llvm.experimental.gc.statepoint.p0f_voidp1i64f(i64,i32,void (i64 addrspace(1)*)*,i32,i32,...)
declare i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token)
declare token @llvm.experimental.gc.statepoint.p0f_p1i64i64f(i64,i32,i64 addrspace(1)* (i64)*,i32,i32,...)
declare i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token,i32,i32)
