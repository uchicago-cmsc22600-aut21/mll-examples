define fastcc i64 @_mll_entry(i64 addrspace(1)* %arguments1) gc "statepoint-example" {
entry_0114:
	; LET intToString0095 = alloc  {intToString00720098}
	; emitCall: @_mll_alloc (1) ;; live = {}
	%r2 = call token (i64,i32,i64 addrspace(1)* (i64)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64)* @_mll_alloc,
		i32 1,i32 0,
		i64 1,
		i32 0,i32 0)
	%r3 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r2)
	%r4 = getelementptr i64, i64 addrspace(1)* %r3, i32 0
	%r5 = ptrtoint i64 addrspace(1)* (i64 addrspace(1)*,i64)* @intToString0072 to i64
	store i64 %r5, i64 addrspace(1)* %r4
	; LET fib00FC = alloc  {fib008000FF}
	; emitCall: @_mll_alloc (1) ;; live = {%r3}
	%r6 = call token (i64,i32,i64 addrspace(1)* (i64)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64)* @_mll_alloc,
		i32 1,i32 0,
		i64 1,
		i32 0,i32 0,
		i64 addrspace(1)* %r3)
	%r7 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r6)
	%r8 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r6,i32 8,i32 8)
	%r9 = getelementptr i64, i64 addrspace(1)* %r7, i32 0
	%r10 = ptrtoint i64 (i64 addrspace(1)*,i64)* @fib0080 to i64
	store i64 %r10, i64 addrspace(1)* %r9
	; LET fib_cp010A = #0(fib00FC)
	%r11 = bitcast i64 addrspace(1)* %r7 to i64 addrspace(1)* addrspace(1)*
	%r12 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r11, i32 0
	%r13 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r12
	; LET fib_n0109 = apply fib_cp010A (fib00FC,20)
	%r14 = ptrtoint i64 addrspace(1)* %r13 to i64
	%r15 = inttoptr i64 %r14 to i64 (i64 addrspace(1)*,i64)*
	; emitCall: %r15 (%r7, 41) ;; live = {%r8, %r7, %r13}
	%r16 = call token (i64,i32,i64 (i64 addrspace(1)*,i64)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_i64p1i64i64f(i64 0,i32 0,
		i64 (i64 addrspace(1)*,i64)* %r15,
		i32 2,i32 0,
		i64 addrspace(1)* %r7, i64 41,
		i32 0,i32 0,
		i64 addrspace(1)* %r8, i64 addrspace(1)* %r7, i64 addrspace(1)* %r13)
	%r17 = call i64 @llvm.experimental.gc.result.i64(token %r16)
	%r18 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r16,i32 9,i32 9)
	%r19 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r16,i32 10,i32 10)
	%r20 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r16,i32 11,i32 11)
	; LET tpl010B = call _mll_print ("fib ")
	; emitCall: @_mll_print (@_slit_0) ;; live = {%r18, %r17}
	%r21 = bitcast [2 x i64] addrspace(1)* @_slit_0 to i64 addrspace(1)*
	%r22 = call token (i64,i32,void (i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_voidp1i64f(i64 0,i32 0,
		void (i64 addrspace(1)*)* @_mll_print,
		i32 1,i32 0,
		i64 addrspace(1)* %r21,
		i32 0,i32 0,
		i64 addrspace(1)* %r18)
	%r23 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r22,i32 8,i32 8)
	; LET intToString_cp010D = #0(intToString0095)
	%r24 = bitcast i64 addrspace(1)* %r23 to i64 addrspace(1)* addrspace(1)*
	%r25 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r24, i32 0
	%r26 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r25
	; LET _t0018010C = apply intToString_cp010D (intToString0095,20)
	%r27 = ptrtoint i64 addrspace(1)* %r26 to i64
	%r28 = inttoptr i64 %r27 to i64 addrspace(1)* (i64 addrspace(1)*,i64)*
	; emitCall: %r28 (%r23, 41) ;; live = {%r23, %r17, %r26}
	%r29 = call token (i64,i32,i64 addrspace(1)* (i64 addrspace(1)*,i64)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64p1i64i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64 addrspace(1)*,i64)* %r28,
		i32 2,i32 0,
		i64 addrspace(1)* %r23, i64 41,
		i32 0,i32 0,
		i64 addrspace(1)* %r23, i64 addrspace(1)* %r26)
	%r30 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r29)
	%r31 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r29,i32 9,i32 9)
	%r32 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r29,i32 10,i32 10)
	; LET tpl010E = call _mll_print (_t0018010C)
	; emitCall: @_mll_print (%r30) ;; live = {%r31, %r17, %r30}
	%r33 = call token (i64,i32,void (i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_voidp1i64f(i64 0,i32 0,
		void (i64 addrspace(1)*)* @_mll_print,
		i32 1,i32 0,
		i64 addrspace(1)* %r30,
		i32 0,i32 0,
		i64 addrspace(1)* %r31, i64 addrspace(1)* %r30)
	%r34 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r33,i32 8,i32 8)
	%r35 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r33,i32 9,i32 9)
	; LET tpl010F = call _mll_print (" = ")
	; emitCall: @_mll_print (@_slit_1) ;; live = {%r34, %r17}
	%r36 = bitcast [2 x i64] addrspace(1)* @_slit_1 to i64 addrspace(1)*
	%r37 = call token (i64,i32,void (i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_voidp1i64f(i64 0,i32 0,
		void (i64 addrspace(1)*)* @_mll_print,
		i32 1,i32 0,
		i64 addrspace(1)* %r36,
		i32 0,i32 0,
		i64 addrspace(1)* %r34)
	%r38 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r37,i32 8,i32 8)
	; LET intToString_cp0111 = #0(intToString0095)
	%r39 = bitcast i64 addrspace(1)* %r38 to i64 addrspace(1)* addrspace(1)*
	%r40 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r39, i32 0
	%r41 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r40
	; LET _t00190110 = apply intToString_cp0111 (intToString0095,fib_n0109)
	%r42 = ptrtoint i64 addrspace(1)* %r41 to i64
	%r43 = inttoptr i64 %r42 to i64 addrspace(1)* (i64 addrspace(1)*,i64)*
	; emitCall: %r43 (%r38, %r17) ;; live = {%r38, %r17, %r41}
	%r44 = call token (i64,i32,i64 addrspace(1)* (i64 addrspace(1)*,i64)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64p1i64i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64 addrspace(1)*,i64)* %r43,
		i32 2,i32 0,
		i64 addrspace(1)* %r38, i64 %r17,
		i32 0,i32 0,
		i64 addrspace(1)* %r38, i64 addrspace(1)* %r41)
	%r45 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r44)
	%r46 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r44,i32 9,i32 9)
	%r47 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r44,i32 10,i32 10)
	; LET tpl0112 = call _mll_print (_t00190110)
	; emitCall: @_mll_print (%r45) ;; live = {%r45}
	%r48 = call token (i64,i32,void (i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_voidp1i64f(i64 0,i32 0,
		void (i64 addrspace(1)*)* @_mll_print,
		i32 1,i32 0,
		i64 addrspace(1)* %r45,
		i32 0,i32 0,
		i64 addrspace(1)* %r45)
	%r49 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r48,i32 8,i32 8)
	; LET tpl0113 = call _mll_print ("\n")
	; emitCall: @_mll_print (@_slit_2) ;; live = {}
	%r50 = bitcast [2 x i64] addrspace(1)* @_slit_2 to i64 addrspace(1)*
	%r51 = call token (i64,i32,void (i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_voidp1i64f(i64 0,i32 0,
		void (i64 addrspace(1)*)* @_mll_print,
		i32 1,i32 0,
		i64 addrspace(1)* %r50,
		i32 0,i32 0)
	ret i64 1
}

define fastcc i64 @fib0080(i64 addrspace(1)* %fib_clos52,i64 %n53) gc "statepoint-example" {
entry_0115:
	; IF IntLte(n00FD,1)
	%r54 = icmp sle i64 %n53, 3
	br i1 %r54, label %then_0117, label %else_0116
else_0116:
	; LET _t00140104 = IntSub (n0103,1)
	%r55 = sub i64 %n53, 2
	; LET _t00130105 = apply fib008000FF (fib0102,_t00140104)
	; emitCall: @fib0080 (%fib_clos52, %r55) ;; live = {%fib_clos52, %n53, %r55}
	%r56 = call token (i64,i32,i64 (i64 addrspace(1)*,i64)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_i64p1i64i64f(i64 0,i32 0,
		i64 (i64 addrspace(1)*,i64)* @fib0080,
		i32 2,i32 0,
		i64 addrspace(1)* %fib_clos52, i64 %r55,
		i32 0,i32 0,
		i64 addrspace(1)* %fib_clos52)
	%r57 = call i64 @llvm.experimental.gc.result.i64(token %r56)
	%r58 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r56,i32 9,i32 9)
	; LET _t00160106 = IntSub (n0103,2)
	%r59 = sub i64 %n53, 4
	; LET _t00150107 = apply fib008000FF (fib0102,_t00160106)
	; emitCall: @fib0080 (%r58, %r59) ;; live = {%r58, %r57, %r59}
	%r60 = call token (i64,i32,i64 (i64 addrspace(1)*,i64)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_i64p1i64i64f(i64 0,i32 0,
		i64 (i64 addrspace(1)*,i64)* @fib0080,
		i32 2,i32 0,
		i64 addrspace(1)* %r58, i64 %r59,
		i32 0,i32 0,
		i64 addrspace(1)* %r58)
	%r61 = call i64 @llvm.experimental.gc.result.i64(token %r60)
	%r62 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r60,i32 9,i32 9)
	; LET _t00170108 = IntAdd (_t00130105,_t00150107)
	%r63 = sub i64 %r57, 1
	%r64 = add i64 %r63, %r61
	ret i64 %r64
then_0117:
	ret i64 3
}

define fastcc i64 addrspace(1)* @intToString0072(i64 addrspace(1)* %intToString_clos65,i64 %i66) gc "statepoint-example" {
entry_0118:
	; IF IntLt(i0096,0)
	%r67 = icmp slt i64 %i66, 1
	br i1 %r67, label %then_0134, label %else_0119
else_0119:
	; IF IntEq(i00A1,0)
	%r76 = icmp eq i64 %i66, 1
	br i1 %r76, label %then_0133, label %else_011A
else_011A:
	; IF IntEq(i00A7,1)
	%r78 = icmp eq i64 %i66, 3
	br i1 %r78, label %then_0132, label %else_011B
else_011B:
	; IF IntEq(i00AD,2)
	%r80 = icmp eq i64 %i66, 5
	br i1 %r80, label %then_0131, label %else_011C
else_011C:
	; IF IntEq(i00B3,3)
	%r82 = icmp eq i64 %i66, 7
	br i1 %r82, label %then_0130, label %else_011D
else_011D:
	; IF IntEq(i00B9,4)
	%r84 = icmp eq i64 %i66, 9
	br i1 %r84, label %then_012F, label %else_011E
else_011E:
	; IF IntEq(i00BF,5)
	%r86 = icmp eq i64 %i66, 11
	br i1 %r86, label %then_012E, label %else_011F
else_011F:
	; IF IntEq(i00C5,6)
	%r88 = icmp eq i64 %i66, 13
	br i1 %r88, label %then_012D, label %else_0120
else_0120:
	; IF IntEq(i00CB,7)
	%r90 = icmp eq i64 %i66, 15
	br i1 %r90, label %then_012C, label %else_0121
else_0121:
	; IF IntEq(i00D1,8)
	%r92 = icmp eq i64 %i66, 17
	br i1 %r92, label %then_012B, label %else_0122
else_0122:
	; IF IntEq(i00D7,9)
	%r94 = icmp eq i64 %i66, 19
	br i1 %r94, label %then_012A, label %else_0123
else_0123:
	; IF IntNEq(10,0)
	%r96 = icmp ne i64 21, 1
	br i1 %r96, label %then_0125, label %else_0124
else_0124:
	; LET _t000700FB = call _mll_fail ("Divide by zero")
	; emitCall: @_mll_fail (@_slit_15) ;; live = {%intToString_clos65, %i66}
	%r128 = bitcast [3 x i64] addrspace(1)* @_slit_15 to i64 addrspace(1)*
	%r129 = call token (i64,i32,void (i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_voidp1i64f(i64 0,i32 0,
		void (i64 addrspace(1)*)* @_mll_fail,
		i32 1,i32 0,
		i64 addrspace(1)* %r128,
		i32 0,i32 0,
		i64 addrspace(1)* %intToString_clos65)
	%r130 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r129,i32 8,i32 8)
	br label %join_0126
then_0125:
	; LET _t000600F7 = IntDiv (i00F6,10)
	%r97 = ashr i64 %i66, 1
	%r98 = sdiv i64 %r97, 10
	%r99 = shl i64 %r98, 1
	%r100 = add i64 %r99, 1
	br label %join_0126
join_0126:
	%_t0005101 = phi i64 [ 1, %else_0124 ], [ %r100, %then_0125 ]
	%intToString102 = phi i64 addrspace(1)* [ %r130, %else_0124 ], [ %intToString_clos65, %then_0125 ]
	%i103 = phi i64 [ %i66, %else_0124 ], [ %i66, %then_0125 ]
	; LET _t000400E2 = apply intToString00720098 (intToString00E0,_t000500DF)
	; emitCall: @intToString0072 (%intToString102, %_t0005101) ;; live = {%_t0005101, %intToString102, %i103}
	%r104 = call token (i64,i32,i64 addrspace(1)* (i64 addrspace(1)*,i64)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64p1i64i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64 addrspace(1)*,i64)* @intToString0072,
		i32 2,i32 0,
		i64 addrspace(1)* %intToString102, i64 %_t0005101,
		i32 0,i32 0,
		i64 addrspace(1)* %intToString102)
	%r105 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r104)
	%r106 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r104,i32 9,i32 9)
	; IF IntNEq(10,0)
	%r107 = icmp ne i64 21, 1
	br i1 %r107, label %then_0128, label %else_0127
else_0127:
	; LET _t001100F3 = call _mll_fail ("Remainder by zero")
	; emitCall: @_mll_fail (@_slit_14) ;; live = {%r106, %i103, %r105}
	%r124 = bitcast [4 x i64] addrspace(1)* @_slit_14 to i64 addrspace(1)*
	%r125 = call token (i64,i32,void (i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_voidp1i64f(i64 0,i32 0,
		void (i64 addrspace(1)*)* @_mll_fail,
		i32 1,i32 0,
		i64 addrspace(1)* %r124,
		i32 0,i32 0,
		i64 addrspace(1)* %r106, i64 addrspace(1)* %r105)
	%r126 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r125,i32 8,i32 8)
	%r127 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r125,i32 9,i32 9)
	br label %join_0129
then_0128:
	; LET _t001000EE = IntMod (i00EC,10)
	%r108 = ashr i64 %i103, 1
	%r109 = srem i64 %r108, 10
	%r110 = shl i64 %r109, 1
	%r111 = add i64 %r110, 1
	br label %join_0129
join_0129:
	%_t0009112 = phi i64 [ 1, %else_0127 ], [ %r111, %then_0128 ]
	%intToString113 = phi i64 addrspace(1)* [ %r126, %else_0127 ], [ %r106, %then_0128 ]
	%i114 = phi i64 [ %i103, %else_0127 ], [ %i103, %then_0128 ]
	%_t0004115 = phi i64 addrspace(1)* [ %r127, %else_0127 ], [ %r105, %then_0128 ]
	; LET _t000800E8 = apply intToString00720098 (intToString00E5,_t000900E4)
	; emitCall: @intToString0072 (%intToString113, %_t0009112) ;; live = {%_t0009112, %intToString113, %_t0004115}
	%r116 = call token (i64,i32,i64 addrspace(1)* (i64 addrspace(1)*,i64)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64p1i64i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64 addrspace(1)*,i64)* @intToString0072,
		i32 2,i32 0,
		i64 addrspace(1)* %intToString113, i64 %_t0009112,
		i32 0,i32 0,
		i64 addrspace(1)* %intToString113, i64 addrspace(1)* %_t0004115)
	%r117 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r116)
	%r118 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r116,i32 9,i32 9)
	%r119 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r116,i32 10,i32 10)
	; LET _t001200E9 = call _mll_concat (_t000400E7,_t000800E8)
	; emitCall: @_mll_concat (%r119, %r117) ;; live = {%r119, %r117}
	%r120 = call token (i64,i32,i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64p1i64p1i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)* @_mll_concat,
		i32 2,i32 0,
		i64 addrspace(1)* %r119, i64 addrspace(1)* %r117,
		i32 0,i32 0,
		i64 addrspace(1)* %r119, i64 addrspace(1)* %r117)
	%r121 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r120)
	%r122 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r120,i32 9,i32 9)
	%r123 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r120,i32 10,i32 10)
	ret i64 addrspace(1)* %r121
then_012A:
	%r95 = bitcast [2 x i64] addrspace(1)* @_slit_13 to i64 addrspace(1)*
	ret i64 addrspace(1)* %r95
then_012B:
	%r93 = bitcast [2 x i64] addrspace(1)* @_slit_12 to i64 addrspace(1)*
	ret i64 addrspace(1)* %r93
then_012C:
	%r91 = bitcast [2 x i64] addrspace(1)* @_slit_11 to i64 addrspace(1)*
	ret i64 addrspace(1)* %r91
then_012D:
	%r89 = bitcast [2 x i64] addrspace(1)* @_slit_10 to i64 addrspace(1)*
	ret i64 addrspace(1)* %r89
then_012E:
	%r87 = bitcast [2 x i64] addrspace(1)* @_slit_9 to i64 addrspace(1)*
	ret i64 addrspace(1)* %r87
then_012F:
	%r85 = bitcast [2 x i64] addrspace(1)* @_slit_8 to i64 addrspace(1)*
	ret i64 addrspace(1)* %r85
then_0130:
	%r83 = bitcast [2 x i64] addrspace(1)* @_slit_7 to i64 addrspace(1)*
	ret i64 addrspace(1)* %r83
then_0131:
	%r81 = bitcast [2 x i64] addrspace(1)* @_slit_6 to i64 addrspace(1)*
	ret i64 addrspace(1)* %r81
then_0132:
	%r79 = bitcast [2 x i64] addrspace(1)* @_slit_5 to i64 addrspace(1)*
	ret i64 addrspace(1)* %r79
then_0133:
	%r77 = bitcast [2 x i64] addrspace(1)* @_slit_4 to i64 addrspace(1)*
	ret i64 addrspace(1)* %r77
then_0134:
	; LET _t0002009C = IntNeg (i009B)
	%r68 = sub i64 2, %i66
	; LET _t0001009D = apply intToString00720098 (intToString009A,_t0002009C)
	; emitCall: @intToString0072 (%intToString_clos65, %r68) ;; live = {%intToString_clos65, %r68}
	%r69 = call token (i64,i32,i64 addrspace(1)* (i64 addrspace(1)*,i64)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64p1i64i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64 addrspace(1)*,i64)* @intToString0072,
		i32 2,i32 0,
		i64 addrspace(1)* %intToString_clos65, i64 %r68,
		i32 0,i32 0,
		i64 addrspace(1)* %intToString_clos65)
	%r70 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r69)
	%r71 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r69,i32 9,i32 9)
	; LET _t0003009E = call _mll_concat ("-",_t0001009D)
	; emitCall: @_mll_concat (@_slit_3, %r70) ;; live = {%r70}
	%r72 = bitcast [2 x i64] addrspace(1)* @_slit_3 to i64 addrspace(1)*
	%r73 = call token (i64,i32,i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64p1i64p1i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)* @_mll_concat,
		i32 2,i32 0,
		i64 addrspace(1)* %r72, i64 addrspace(1)* %r70,
		i32 0,i32 0,
		i64 addrspace(1)* %r70)
	%r74 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r73)
	%r75 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r73,i32 9,i32 9)
	ret i64 addrspace(1)* %r74
}


declare i64 addrspace(1)* @_mll_alloc(i64)
declare i64 addrspace(1)* @_mll_concat(i64 addrspace(1)*,i64 addrspace(1)*)
declare void @_mll_exit(i64)
declare void @_mll_fail(i64 addrspace(1)*)
declare void @_mll_print(i64 addrspace(1)*)
declare i64 addrspace(1)* @_mll_str_chr(i64)
@_slit_0 = global [2 x i64] [
	i64 9,
	i64 543320422
]

@_slit_1 = global [2 x i64] [
	i64 7,
	i64 2112800
]

@_slit_2 = global [2 x i64] [
	i64 3,
	i64 10
]

@_slit_3 = global [2 x i64] [
	i64 3,
	i64 45
]

@_slit_4 = global [2 x i64] [
	i64 3,
	i64 48
]

@_slit_5 = global [2 x i64] [
	i64 3,
	i64 49
]

@_slit_6 = global [2 x i64] [
	i64 3,
	i64 50
]

@_slit_7 = global [2 x i64] [
	i64 3,
	i64 51
]

@_slit_8 = global [2 x i64] [
	i64 3,
	i64 52
]

@_slit_9 = global [2 x i64] [
	i64 3,
	i64 53
]

@_slit_10 = global [2 x i64] [
	i64 3,
	i64 54
]

@_slit_11 = global [2 x i64] [
	i64 3,
	i64 55
]

@_slit_12 = global [2 x i64] [
	i64 3,
	i64 56
]

@_slit_13 = global [2 x i64] [
	i64 3,
	i64 57
]

@_slit_14 = global [4 x i64] [
	i64 35,
	i64 7306085894386967890,
	i64 8243128972865577074,
	i64 111
]

@_slit_15 = global [3 x i64] [
	i64 29,
	i64 7070762896912181572,
	i64 122537119457401
]


declare token @llvm.experimental.gc.statepoint.p0f_p1i64p1i64p1i64f(i64,i32,i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)*,i32,i32,...)
declare token @llvm.experimental.gc.statepoint.p0f_i64p1i64i64f(i64,i32,i64 (i64 addrspace(1)*,i64)*,i32,i32,...)
declare i64 @llvm.experimental.gc.result.i64(token)
declare token @llvm.experimental.gc.statepoint.p0f_voidp1i64f(i64,i32,void (i64 addrspace(1)*)*,i32,i32,...)
declare i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token)
declare token @llvm.experimental.gc.statepoint.p0f_p1i64i64f(i64,i32,i64 addrspace(1)* (i64)*,i32,i32,...)
declare i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token,i32,i32)
declare token @llvm.experimental.gc.statepoint.p0f_p1i64p1i64i64f(i64,i32,i64 addrspace(1)* (i64 addrspace(1)*,i64)*,i32,i32,...)
