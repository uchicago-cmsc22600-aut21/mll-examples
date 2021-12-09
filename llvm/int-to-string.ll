define fastcc i64 @_mll_entry(i64 addrspace(1)* %arguments1) gc "statepoint-example" {
entry_00DE:
	; LET intToString0073 = alloc  {intToString005E0076}
	; emitCall: @_mll_alloc (1) ;; live = {}
	%r2 = call token (i64,i32,i64 addrspace(1)* (i64)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64)* @_mll_alloc,
		i32 1,i32 0,
		i64 1,
		i32 0,i32 0)
	%r3 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r2)
	%r4 = getelementptr i64, i64 addrspace(1)* %r3, i32 0
	%r5 = ptrtoint i64 addrspace(1)* (i64 addrspace(1)*,i64)* @intToString005E to i64
	store i64 %r5, i64 addrspace(1)* %r4
	; LET intToString_cp00DB = #0(intToString0073)
	%r6 = bitcast i64 addrspace(1)* %r3 to i64 addrspace(1)* addrspace(1)*
	%r7 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r6, i32 0
	%r8 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r7
	; LET _t001400DA = apply intToString_cp00DB (intToString0073,42)
	%r9 = ptrtoint i64 addrspace(1)* %r8 to i64
	%r10 = inttoptr i64 %r9 to i64 addrspace(1)* (i64 addrspace(1)*,i64)*
	; emitCall: %r10 (%r3, 85) ;; live = {%r3, %r8}
	%r11 = call token (i64,i32,i64 addrspace(1)* (i64 addrspace(1)*,i64)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64p1i64i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64 addrspace(1)*,i64)* %r10,
		i32 2,i32 0,
		i64 addrspace(1)* %r3, i64 85,
		i32 0,i32 0,
		i64 addrspace(1)* %r3, i64 addrspace(1)* %r8)
	%r12 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r11)
	%r13 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r11,i32 9,i32 9)
	%r14 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r11,i32 10,i32 10)
	; LET _t001300DC = call _mll_concat (_t001400DA,"\n")
	; emitCall: @_mll_concat (%r12, @_slit_0) ;; live = {%r12}
	%r15 = bitcast [2 x i64] addrspace(1)* @_slit_0 to i64 addrspace(1)*
	%r16 = call token (i64,i32,i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64p1i64p1i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)* @_mll_concat,
		i32 2,i32 0,
		i64 addrspace(1)* %r12, i64 addrspace(1)* %r15,
		i32 0,i32 0,
		i64 addrspace(1)* %r12)
	%r17 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r16)
	%r18 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r16,i32 9,i32 9)
	; LET _t001500DD = call _mll_print (_t001300DC)
	; emitCall: @_mll_print (%r17) ;; live = {%r17}
	%r19 = call token (i64,i32,void (i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_voidp1i64f(i64 0,i32 0,
		void (i64 addrspace(1)*)* @_mll_print,
		i32 1,i32 0,
		i64 addrspace(1)* %r17,
		i32 0,i32 0,
		i64 addrspace(1)* %r17)
	%r20 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r19,i32 8,i32 8)
	ret i64 1
}

define fastcc i64 addrspace(1)* @intToString005E(i64 addrspace(1)* %intToString_clos21,i64 %i22) gc "statepoint-example" {
entry_00DF:
	; IF IntLt(i0074,0)
	%r23 = icmp slt i64 %i22, 1
	br i1 %r23, label %then_00FB, label %else_00E0
else_00E0:
	; IF IntEq(i007F,0)
	%r32 = icmp eq i64 %i22, 1
	br i1 %r32, label %then_00FA, label %else_00E1
else_00E1:
	; IF IntEq(i0085,1)
	%r34 = icmp eq i64 %i22, 3
	br i1 %r34, label %then_00F9, label %else_00E2
else_00E2:
	; IF IntEq(i008B,2)
	%r36 = icmp eq i64 %i22, 5
	br i1 %r36, label %then_00F8, label %else_00E3
else_00E3:
	; IF IntEq(i0091,3)
	%r38 = icmp eq i64 %i22, 7
	br i1 %r38, label %then_00F7, label %else_00E4
else_00E4:
	; IF IntEq(i0097,4)
	%r40 = icmp eq i64 %i22, 9
	br i1 %r40, label %then_00F6, label %else_00E5
else_00E5:
	; IF IntEq(i009D,5)
	%r42 = icmp eq i64 %i22, 11
	br i1 %r42, label %then_00F5, label %else_00E6
else_00E6:
	; IF IntEq(i00A3,6)
	%r44 = icmp eq i64 %i22, 13
	br i1 %r44, label %then_00F4, label %else_00E7
else_00E7:
	; IF IntEq(i00A9,7)
	%r46 = icmp eq i64 %i22, 15
	br i1 %r46, label %then_00F3, label %else_00E8
else_00E8:
	; IF IntEq(i00AF,8)
	%r48 = icmp eq i64 %i22, 17
	br i1 %r48, label %then_00F2, label %else_00E9
else_00E9:
	; IF IntEq(i00B5,9)
	%r50 = icmp eq i64 %i22, 19
	br i1 %r50, label %then_00F1, label %else_00EA
else_00EA:
	; IF IntNEq(10,0)
	%r52 = icmp ne i64 21, 1
	br i1 %r52, label %then_00EC, label %else_00EB
else_00EB:
	; LET _t000700D9 = call _mll_fail ("Divide by zero")
	; emitCall: @_mll_fail (@_slit_13) ;; live = {%intToString_clos21, %i22}
	%r84 = bitcast [3 x i64] addrspace(1)* @_slit_13 to i64 addrspace(1)*
	%r85 = call token (i64,i32,void (i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_voidp1i64f(i64 0,i32 0,
		void (i64 addrspace(1)*)* @_mll_fail,
		i32 1,i32 0,
		i64 addrspace(1)* %r84,
		i32 0,i32 0,
		i64 addrspace(1)* %intToString_clos21)
	%r86 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r85,i32 8,i32 8)
	br label %join_00ED
then_00EC:
	; LET _t000600D5 = IntDiv (i00D4,10)
	%r53 = ashr i64 %i22, 1
	%r54 = sdiv i64 %r53, 10
	%r55 = shl i64 %r54, 1
	%r56 = add i64 %r55, 1
	br label %join_00ED
join_00ED:
	%_t000557 = phi i64 [ 1, %else_00EB ], [ %r56, %then_00EC ]
	%intToString58 = phi i64 addrspace(1)* [ %r86, %else_00EB ], [ %intToString_clos21, %then_00EC ]
	%i59 = phi i64 [ %i22, %else_00EB ], [ %i22, %then_00EC ]
	; LET _t000400C0 = apply intToString005E0076 (intToString00BE,_t000500BD)
	; emitCall: @intToString005E (%intToString58, %_t000557) ;; live = {%_t000557, %intToString58, %i59}
	%r60 = call token (i64,i32,i64 addrspace(1)* (i64 addrspace(1)*,i64)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64p1i64i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64 addrspace(1)*,i64)* @intToString005E,
		i32 2,i32 0,
		i64 addrspace(1)* %intToString58, i64 %_t000557,
		i32 0,i32 0,
		i64 addrspace(1)* %intToString58)
	%r61 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r60)
	%r62 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r60,i32 9,i32 9)
	; IF IntNEq(10,0)
	%r63 = icmp ne i64 21, 1
	br i1 %r63, label %then_00EF, label %else_00EE
else_00EE:
	; LET _t001100D1 = call _mll_fail ("Remainder by zero")
	; emitCall: @_mll_fail (@_slit_12) ;; live = {%r62, %i59, %r61}
	%r80 = bitcast [4 x i64] addrspace(1)* @_slit_12 to i64 addrspace(1)*
	%r81 = call token (i64,i32,void (i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_voidp1i64f(i64 0,i32 0,
		void (i64 addrspace(1)*)* @_mll_fail,
		i32 1,i32 0,
		i64 addrspace(1)* %r80,
		i32 0,i32 0,
		i64 addrspace(1)* %r62, i64 addrspace(1)* %r61)
	%r82 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r81,i32 8,i32 8)
	%r83 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r81,i32 9,i32 9)
	br label %join_00F0
then_00EF:
	; LET _t001000CC = IntMod (i00CA,10)
	%r64 = ashr i64 %i59, 1
	%r65 = srem i64 %r64, 10
	%r66 = shl i64 %r65, 1
	%r67 = add i64 %r66, 1
	br label %join_00F0
join_00F0:
	%_t000968 = phi i64 [ 1, %else_00EE ], [ %r67, %then_00EF ]
	%intToString69 = phi i64 addrspace(1)* [ %r82, %else_00EE ], [ %r62, %then_00EF ]
	%i70 = phi i64 [ %i59, %else_00EE ], [ %i59, %then_00EF ]
	%_t000471 = phi i64 addrspace(1)* [ %r83, %else_00EE ], [ %r61, %then_00EF ]
	; LET _t000800C6 = apply intToString005E0076 (intToString00C3,_t000900C2)
	; emitCall: @intToString005E (%intToString69, %_t000968) ;; live = {%_t000968, %intToString69, %_t000471}
	%r72 = call token (i64,i32,i64 addrspace(1)* (i64 addrspace(1)*,i64)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64p1i64i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64 addrspace(1)*,i64)* @intToString005E,
		i32 2,i32 0,
		i64 addrspace(1)* %intToString69, i64 %_t000968,
		i32 0,i32 0,
		i64 addrspace(1)* %intToString69, i64 addrspace(1)* %_t000471)
	%r73 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r72)
	%r74 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r72,i32 9,i32 9)
	%r75 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r72,i32 10,i32 10)
	; LET _t001200C7 = call _mll_concat (_t000400C5,_t000800C6)
	; emitCall: @_mll_concat (%r75, %r73) ;; live = {%r75, %r73}
	%r76 = call token (i64,i32,i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64p1i64p1i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)* @_mll_concat,
		i32 2,i32 0,
		i64 addrspace(1)* %r75, i64 addrspace(1)* %r73,
		i32 0,i32 0,
		i64 addrspace(1)* %r75, i64 addrspace(1)* %r73)
	%r77 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r76)
	%r78 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r76,i32 9,i32 9)
	%r79 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r76,i32 10,i32 10)
	ret i64 addrspace(1)* %r77
then_00F1:
	%r51 = bitcast [2 x i64] addrspace(1)* @_slit_11 to i64 addrspace(1)*
	ret i64 addrspace(1)* %r51
then_00F2:
	%r49 = bitcast [2 x i64] addrspace(1)* @_slit_10 to i64 addrspace(1)*
	ret i64 addrspace(1)* %r49
then_00F3:
	%r47 = bitcast [2 x i64] addrspace(1)* @_slit_9 to i64 addrspace(1)*
	ret i64 addrspace(1)* %r47
then_00F4:
	%r45 = bitcast [2 x i64] addrspace(1)* @_slit_8 to i64 addrspace(1)*
	ret i64 addrspace(1)* %r45
then_00F5:
	%r43 = bitcast [2 x i64] addrspace(1)* @_slit_7 to i64 addrspace(1)*
	ret i64 addrspace(1)* %r43
then_00F6:
	%r41 = bitcast [2 x i64] addrspace(1)* @_slit_6 to i64 addrspace(1)*
	ret i64 addrspace(1)* %r41
then_00F7:
	%r39 = bitcast [2 x i64] addrspace(1)* @_slit_5 to i64 addrspace(1)*
	ret i64 addrspace(1)* %r39
then_00F8:
	%r37 = bitcast [2 x i64] addrspace(1)* @_slit_4 to i64 addrspace(1)*
	ret i64 addrspace(1)* %r37
then_00F9:
	%r35 = bitcast [2 x i64] addrspace(1)* @_slit_3 to i64 addrspace(1)*
	ret i64 addrspace(1)* %r35
then_00FA:
	%r33 = bitcast [2 x i64] addrspace(1)* @_slit_2 to i64 addrspace(1)*
	ret i64 addrspace(1)* %r33
then_00FB:
	; LET _t0002007A = IntNeg (i0079)
	%r24 = sub i64 2, %i22
	; LET _t0001007B = apply intToString005E0076 (intToString0078,_t0002007A)
	; emitCall: @intToString005E (%intToString_clos21, %r24) ;; live = {%intToString_clos21, %r24}
	%r25 = call token (i64,i32,i64 addrspace(1)* (i64 addrspace(1)*,i64)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64p1i64i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64 addrspace(1)*,i64)* @intToString005E,
		i32 2,i32 0,
		i64 addrspace(1)* %intToString_clos21, i64 %r24,
		i32 0,i32 0,
		i64 addrspace(1)* %intToString_clos21)
	%r26 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r25)
	%r27 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r25,i32 9,i32 9)
	; LET _t0003007C = call _mll_concat ("-",_t0001007B)
	; emitCall: @_mll_concat (@_slit_1, %r26) ;; live = {%r26}
	%r28 = bitcast [2 x i64] addrspace(1)* @_slit_1 to i64 addrspace(1)*
	%r29 = call token (i64,i32,i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64p1i64p1i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)* @_mll_concat,
		i32 2,i32 0,
		i64 addrspace(1)* %r28, i64 addrspace(1)* %r26,
		i32 0,i32 0,
		i64 addrspace(1)* %r26)
	%r30 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r29)
	%r31 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r29,i32 9,i32 9)
	ret i64 addrspace(1)* %r30
}


declare i64 addrspace(1)* @_mll_alloc(i64)
declare i64 addrspace(1)* @_mll_concat(i64 addrspace(1)*,i64 addrspace(1)*)
declare void @_mll_exit(i64)
declare void @_mll_fail(i64 addrspace(1)*)
declare void @_mll_print(i64 addrspace(1)*)
declare i64 addrspace(1)* @_mll_str_chr(i64)
@_slit_0 = global [2 x i64] [
	i64 3,
	i64 10
]

@_slit_1 = global [2 x i64] [
	i64 3,
	i64 45
]

@_slit_2 = global [2 x i64] [
	i64 3,
	i64 48
]

@_slit_3 = global [2 x i64] [
	i64 3,
	i64 49
]

@_slit_4 = global [2 x i64] [
	i64 3,
	i64 50
]

@_slit_5 = global [2 x i64] [
	i64 3,
	i64 51
]

@_slit_6 = global [2 x i64] [
	i64 3,
	i64 52
]

@_slit_7 = global [2 x i64] [
	i64 3,
	i64 53
]

@_slit_8 = global [2 x i64] [
	i64 3,
	i64 54
]

@_slit_9 = global [2 x i64] [
	i64 3,
	i64 55
]

@_slit_10 = global [2 x i64] [
	i64 3,
	i64 56
]

@_slit_11 = global [2 x i64] [
	i64 3,
	i64 57
]

@_slit_12 = global [4 x i64] [
	i64 35,
	i64 7306085894386967890,
	i64 8243128972865577074,
	i64 111
]

@_slit_13 = global [3 x i64] [
	i64 29,
	i64 7070762896912181572,
	i64 122537119457401
]


declare token @llvm.experimental.gc.statepoint.p0f_p1i64p1i64p1i64f(i64,i32,i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)*,i32,i32,...)
declare token @llvm.experimental.gc.statepoint.p0f_voidp1i64f(i64,i32,void (i64 addrspace(1)*)*,i32,i32,...)
declare i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token)
declare token @llvm.experimental.gc.statepoint.p0f_p1i64i64f(i64,i32,i64 addrspace(1)* (i64)*,i32,i32,...)
declare i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token,i32,i32)
declare token @llvm.experimental.gc.statepoint.p0f_p1i64p1i64i64f(i64,i32,i64 addrspace(1)* (i64 addrspace(1)*,i64)*,i32,i32,...)
