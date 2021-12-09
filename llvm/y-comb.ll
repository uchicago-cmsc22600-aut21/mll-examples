define fastcc i64 @_mll_entry(i64 addrspace(1)* %arguments1) gc "statepoint-example" {
entry_007F:
	; LET y0071 = alloc  {y00660074}
	; emitCall: @_mll_alloc (1) ;; live = {}
	%r2 = call token (i64,i32,i64 addrspace(1)* (i64)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64)* @_mll_alloc,
		i32 1,i32 0,
		i64 1,
		i32 0,i32 0)
	%r3 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r2)
	%r4 = getelementptr i64, i64 addrspace(1)* %r3, i32 0
	%r5 = ptrtoint i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)* @y0066 to i64
	store i64 %r5, i64 addrspace(1)* %r4
	ret i64 1
}

define fastcc i64 addrspace(1)* @y0066(i64 addrspace(1)* %y_clos6,i64 addrspace(1)* %f7) gc "statepoint-example" {
entry_0080:
	; LET g0075 = alloc  {g00680078,y_clos0073,f0072}
	; emitCall: @_mll_alloc (3) ;; live = {%f7, %y_clos6}
	%r8 = call token (i64,i32,i64 addrspace(1)* (i64)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64)* @_mll_alloc,
		i32 1,i32 0,
		i64 3,
		i32 0,i32 0,
		i64 addrspace(1)* %f7, i64 addrspace(1)* %y_clos6)
	%r9 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r8)
	%r10 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r8,i32 8,i32 8)
	%r11 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r8,i32 9,i32 9)
	%r12 = getelementptr i64, i64 addrspace(1)* %r9, i32 0
	%r13 = ptrtoint i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)* @g0068 to i64
	store i64 %r13, i64 addrspace(1)* %r12
	%r14 = getelementptr i64, i64 addrspace(1)* %r9, i32 1
	%r15 = ptrtoint i64 addrspace(1)* %r11 to i64
	store i64 %r15, i64 addrspace(1)* %r14
	%r16 = getelementptr i64, i64 addrspace(1)* %r9, i32 2
	%r17 = ptrtoint i64 addrspace(1)* %r10 to i64
	store i64 %r17, i64 addrspace(1)* %r16
	; LET f_cp007E = #0(f0072)
	%r18 = bitcast i64 addrspace(1)* %r10 to i64 addrspace(1)* addrspace(1)*
	%r19 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r18, i32 0
	%r20 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r19
	; TAIL_APPLY f_cp007E(f0072,g0075)
	%r21 = ptrtoint i64 addrspace(1)* %r20 to i64
	%r22 = inttoptr i64 %r21 to i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)*
	; emitTailCall: %r22 (%r10, %r9)
	%r23 = tail call i64 addrspace(1)* %r22 (i64 addrspace(1)* %r10, i64 addrspace(1)* %r9)
	ret i64 addrspace(1)* %r23
}

define fastcc i64 addrspace(1)* @g0068(i64 addrspace(1)* %g_clos24,i64 addrspace(1)* %z25) gc "statepoint-example" {
entry_0081:
	; LET y0079 = #1(g_clos0077)
	%r26 = bitcast i64 addrspace(1)* %g_clos24 to i64 addrspace(1)* addrspace(1)*
	%r27 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r26, i32 1
	%r28 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r27
	; LET f007A = #2(g_clos0077)
	%r29 = bitcast i64 addrspace(1)* %g_clos24 to i64 addrspace(1)* addrspace(1)*
	%r30 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r29, i32 2
	%r31 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r30
	; LET y_cp007C = #0(y0079)
	%r32 = bitcast i64 addrspace(1)* %r28 to i64 addrspace(1)* addrspace(1)*
	%r33 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r32, i32 0
	%r34 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r33
	; LET _t0001007B = apply y_cp007C (y0079,f007A)
	%r35 = ptrtoint i64 addrspace(1)* %r34 to i64
	%r36 = inttoptr i64 %r35 to i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)*
	; emitCall: %r36 (%r28, %r31) ;; live = {%r28, %r31, %r34}
	%r37 = call token (i64,i32,i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64p1i64p1i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)* %r36,
		i32 2,i32 0,
		i64 addrspace(1)* %r28, i64 addrspace(1)* %r31,
		i32 0,i32 0,
		i64 addrspace(1)* %r28, i64 addrspace(1)* %r31, i64 addrspace(1)* %r34)
	%r38 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r37)
	%r39 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r37,i32 9,i32 9)
	%r40 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r37,i32 10,i32 10)
	%r41 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r37,i32 11,i32 11)
	; LET _t0001_cp007D = #0(_t0001007B)
	%r42 = bitcast i64 addrspace(1)* %r38 to i64 addrspace(1)* addrspace(1)*
	%r43 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r42, i32 0
	%r44 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r43
	; TAIL_APPLY _t0001_cp007D(_t0001007B,0)
	%r45 = ptrtoint i64 addrspace(1)* %r44 to i64
	%r46 = inttoptr i64 %r45 to i64 addrspace(1)* (i64 addrspace(1)*,i64)*
	; emitTailCall: %r46 (%r38, 1)
	%r47 = tail call i64 addrspace(1)* %r46 (i64 addrspace(1)* %r38, i64 1)
	ret i64 addrspace(1)* %r47
}


declare i64 addrspace(1)* @_mll_alloc(i64)
declare i64 addrspace(1)* @_mll_concat(i64 addrspace(1)*,i64 addrspace(1)*)
declare void @_mll_exit(i64)
declare void @_mll_fail(i64 addrspace(1)*)
declare void @_mll_print(i64 addrspace(1)*)
declare i64 addrspace(1)* @_mll_str_chr(i64)

declare token @llvm.experimental.gc.statepoint.p0f_p1i64p1i64p1i64f(i64,i32,i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)*,i32,i32,...)
declare i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token)
declare token @llvm.experimental.gc.statepoint.p0f_p1i64i64f(i64,i32,i64 addrspace(1)* (i64)*,i32,i32,...)
declare i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token,i32,i32)
