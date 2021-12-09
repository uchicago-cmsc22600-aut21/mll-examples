define fastcc i64 @_mll_entry(i64 addrspace(1)* %arguments1) gc "statepoint-example" {
entry_0227:
	; LET intToString0103 = alloc  {intToString00C10106}
	; emitCall: @_mll_alloc (1) ;; live = {%arguments1}
	%r2 = call token (i64,i32,i64 addrspace(1)* (i64)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64)* @_mll_alloc,
		i32 1,i32 0,
		i64 1,
		i32 0,i32 0,
		i64 addrspace(1)* %arguments1)
	%r3 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r2)
	%r4 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r2,i32 8,i32 8)
	%r5 = getelementptr i64, i64 addrspace(1)* %r3, i32 0
	%r6 = ptrtoint i64 addrspace(1)* (i64 addrspace(1)*,i64)* @intToString00C1 to i64
	store i64 %r6, i64 addrspace(1)* %r5
	; LET optionToString016A = alloc  {optionToString00CF016D}
	; emitCall: @_mll_alloc (1) ;; live = {%r4, %r3}
	%r7 = call token (i64,i32,i64 addrspace(1)* (i64)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64)* @_mll_alloc,
		i32 1,i32 0,
		i64 1,
		i32 0,i32 0,
		i64 addrspace(1)* %r4, i64 addrspace(1)* %r3)
	%r8 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r7)
	%r9 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r7,i32 8,i32 8)
	%r10 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r7,i32 9,i32 9)
	%r11 = getelementptr i64, i64 addrspace(1)* %r8, i32 0
	%r12 = ptrtoint i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)* @optionToString00CF to i64
	store i64 %r12, i64 addrspace(1)* %r11
	; LET _t0016017E = StrSize ("0")
	%r13 = bitcast [2 x i64] addrspace(1)* @_slit_0 to i64 addrspace(1)*
	%r14 = load i64, i64 addrspace(1)* %r13
	; IF UIntLt(0,_t0016017E)
	%r15 = icmp ult i64 1, %r14
	br i1 %r15, label %then_0229, label %else_0228
else_0228:
	; LET _t00180226 = call _mll_fail ("Subscript out of bounds")
	; emitCall: @_mll_fail (@_slit_3) ;; live = {%r9, %r10, %r8}
	%r107 = bitcast [4 x i64] addrspace(1)* @_slit_3 to i64 addrspace(1)*
	%r108 = call token (i64,i32,void (i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_voidp1i64f(i64 0,i32 0,
		void (i64 addrspace(1)*)* @_mll_fail,
		i32 1,i32 0,
		i64 addrspace(1)* %r107,
		i32 0,i32 0,
		i64 addrspace(1)* %r9, i64 addrspace(1)* %r10, i64 addrspace(1)* %r8)
	%r109 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r108,i32 8,i32 8)
	%r110 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r108,i32 9,i32 9)
	%r111 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r108,i32 10,i32 10)
	br label %join_022A
then_0229:
	; LET _t00170221 = StrSub ("0",0)
	%r16 = bitcast [2 x i64] addrspace(1)* @_slit_0 to i8 addrspace(1)*
	%r17 = getelementptr i8, i8 addrspace(1)* %r16, i64 8
	%r18 = bitcast i8 addrspace(1)* %r17 to i64 addrspace(1)*
	%r19 = load i64, i64 addrspace(1)* %r18
	br label %join_022A
join_022A:
	%ord020 = phi i64 [ 1, %else_0228 ], [ %r19, %then_0229 ]
	%arguments21 = phi i64 addrspace(1)* [ %r109, %else_0228 ], [ %r9, %then_0229 ]
	%intToString22 = phi i64 addrspace(1)* [ %r110, %else_0228 ], [ %r10, %then_0229 ]
	%optionToString23 = phi i64 addrspace(1)* [ %r111, %else_0228 ], [ %r8, %then_0229 ]
	; LET _t00190184 = StrSize ("9")
	%r24 = bitcast [2 x i64] addrspace(1)* @_slit_1 to i64 addrspace(1)*
	%r25 = load i64, i64 addrspace(1)* %r24
	; IF UIntLt(0,_t00190184)
	%r26 = icmp ult i64 1, %r25
	br i1 %r26, label %then_022C, label %else_022B
else_022B:
	; LET _t0021021C = call _mll_fail ("Subscript out of bounds")
	; emitCall: @_mll_fail (@_slit_3) ;; live = {%arguments21, %intToString22, %optionToString23, %ord020}
	%r102 = bitcast [4 x i64] addrspace(1)* @_slit_3 to i64 addrspace(1)*
	%r103 = call token (i64,i32,void (i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_voidp1i64f(i64 0,i32 0,
		void (i64 addrspace(1)*)* @_mll_fail,
		i32 1,i32 0,
		i64 addrspace(1)* %r102,
		i32 0,i32 0,
		i64 addrspace(1)* %arguments21, i64 addrspace(1)* %intToString22, i64 addrspace(1)* %optionToString23)
	%r104 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r103,i32 8,i32 8)
	%r105 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r103,i32 9,i32 9)
	%r106 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r103,i32 10,i32 10)
	br label %join_022D
then_022C:
	; LET _t00200216 = StrSub ("9",0)
	%r27 = bitcast [2 x i64] addrspace(1)* @_slit_1 to i8 addrspace(1)*
	%r28 = getelementptr i8, i8 addrspace(1)* %r27, i64 8
	%r29 = bitcast i8 addrspace(1)* %r28 to i64 addrspace(1)*
	%r30 = load i64, i64 addrspace(1)* %r29
	br label %join_022D
join_022D:
	%ord931 = phi i64 [ 1, %else_022B ], [ %r30, %then_022C ]
	%arguments32 = phi i64 addrspace(1)* [ %r104, %else_022B ], [ %arguments21, %then_022C ]
	%intToString33 = phi i64 addrspace(1)* [ %r105, %else_022B ], [ %intToString22, %then_022C ]
	%optionToString34 = phi i64 addrspace(1)* [ %r106, %else_022B ], [ %optionToString23, %then_022C ]
	%ord035 = phi i64 [ %ord020, %else_022B ], [ %ord020, %then_022C ]
	; LET charToDigit018B = alloc  {charToDigit00DF018E,ord0018A,ord90186}
	; emitCall: @_mll_alloc (3) ;; live = {%ord931, %arguments32, %intToString33, %optionToString34, %ord035}
	%r36 = call token (i64,i32,i64 addrspace(1)* (i64)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64)* @_mll_alloc,
		i32 1,i32 0,
		i64 3,
		i32 0,i32 0,
		i64 addrspace(1)* %arguments32, i64 addrspace(1)* %intToString33, i64 addrspace(1)* %optionToString34)
	%r37 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r36)
	%r38 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r36,i32 8,i32 8)
	%r39 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r36,i32 9,i32 9)
	%r40 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r36,i32 10,i32 10)
	%r41 = getelementptr i64, i64 addrspace(1)* %r37, i32 0
	%r42 = ptrtoint i64 addrspace(1)* (i64 addrspace(1)*,i64)* @charToDigit00DF to i64
	store i64 %r42, i64 addrspace(1)* %r41
	%r43 = getelementptr i64, i64 addrspace(1)* %r37, i32 1
	store i64 %ord035, i64 addrspace(1)* %r43
	%r44 = getelementptr i64, i64 addrspace(1)* %r37, i32 2
	store i64 %ord931, i64 addrspace(1)* %r44
	; LET stringToInt01A1 = alloc  {stringToInt00E301A4,charToDigit018B}
	; emitCall: @_mll_alloc (2) ;; live = {%r38, %r39, %r40, %r37}
	%r45 = call token (i64,i32,i64 addrspace(1)* (i64)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64)* @_mll_alloc,
		i32 1,i32 0,
		i64 2,
		i32 0,i32 0,
		i64 addrspace(1)* %r38, i64 addrspace(1)* %r39, i64 addrspace(1)* %r40, i64 addrspace(1)* %r37)
	%r46 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r45)
	%r47 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r45,i32 8,i32 8)
	%r48 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r45,i32 9,i32 9)
	%r49 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r45,i32 10,i32 10)
	%r50 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r45,i32 11,i32 11)
	%r51 = getelementptr i64, i64 addrspace(1)* %r46, i32 0
	%r52 = ptrtoint i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)* @stringToInt00E3 to i64
	store i64 %r52, i64 addrspace(1)* %r51
	%r53 = getelementptr i64, i64 addrspace(1)* %r46, i32 1
	%r54 = ptrtoint i64 addrspace(1)* %r50 to i64
	store i64 %r54, i64 addrspace(1)* %r53
	; IF Boxed(arguments0187)
	%r56 = ptrtoint i64 addrspace(1)* %r47 to i64
	%r55 = and i64 %r56, 1
	%r57 = icmp eq i64 %r55, 0
	br i1 %r57, label %then_022F, label %else_022E
else_022E:
	br label %join_0230
then_022F:
	; LET s0202 = #0(arguments01FE)
	%r58 = bitcast i64 addrspace(1)* %r47 to i64 addrspace(1)* addrspace(1)*
	%r59 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r58, i32 0
	%r60 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r59
	; LET _0203 = #1(arguments01FE)
	%r61 = bitcast i64 addrspace(1)* %r47 to i64 addrspace(1)* addrspace(1)*
	%r62 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r61, i32 1
	%r63 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r62
	; LET optionToString_cp0205 = #0(optionToString0200)
	%r64 = bitcast i64 addrspace(1)* %r49 to i64 addrspace(1)* addrspace(1)*
	%r65 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r64, i32 0
	%r66 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r65
	; LET _t00360204 = apply optionToString_cp0205 (optionToString0200,intToString01FF)
	%r67 = ptrtoint i64 addrspace(1)* %r66 to i64
	%r68 = inttoptr i64 %r67 to i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)*
	; emitCall: %r68 (%r49, %r48) ;; live = {%r48, %r49, %r46, %r60, %r66}
	%r69 = call token (i64,i32,i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64p1i64p1i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)* %r68,
		i32 2,i32 0,
		i64 addrspace(1)* %r49, i64 addrspace(1)* %r48,
		i32 0,i32 0,
		i64 addrspace(1)* %r48, i64 addrspace(1)* %r49, i64 addrspace(1)* %r46, i64 addrspace(1)* %r60, i64 addrspace(1)* %r66)
	%r70 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r69)
	%r71 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r69,i32 9,i32 9)
	%r72 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r69,i32 10,i32 10)
	%r73 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r69,i32 11,i32 11)
	%r74 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r69,i32 12,i32 12)
	%r75 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r69,i32 13,i32 13)
	; LET stringToInt_cp0207 = #0(stringToInt0201)
	%r76 = bitcast i64 addrspace(1)* %r73 to i64 addrspace(1)* addrspace(1)*
	%r77 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r76, i32 0
	%r78 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r77
	; LET _t00370206 = apply stringToInt_cp0207 (stringToInt0201,s0202)
	%r79 = ptrtoint i64 addrspace(1)* %r78 to i64
	%r80 = inttoptr i64 %r79 to i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)*
	; emitCall: %r80 (%r73, %r74) ;; live = {%r73, %r74, %r70, %r78}
	%r81 = call token (i64,i32,i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64p1i64p1i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)* %r80,
		i32 2,i32 0,
		i64 addrspace(1)* %r73, i64 addrspace(1)* %r74,
		i32 0,i32 0,
		i64 addrspace(1)* %r73, i64 addrspace(1)* %r74, i64 addrspace(1)* %r70, i64 addrspace(1)* %r78)
	%r82 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r81)
	%r83 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r81,i32 9,i32 9)
	%r84 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r81,i32 10,i32 10)
	%r85 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r81,i32 11,i32 11)
	%r86 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r81,i32 12,i32 12)
	; LET _t0036_cp0209 = #0(_t00360204)
	%r87 = bitcast i64 addrspace(1)* %r85 to i64 addrspace(1)* addrspace(1)*
	%r88 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r87, i32 0
	%r89 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r88
	; LET _t00350208 = apply _t0036_cp0209 (_t00360204,_t00370206)
	%r90 = ptrtoint i64 addrspace(1)* %r89 to i64
	%r91 = inttoptr i64 %r90 to i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)*
	; emitCall: %r91 (%r85, %r82) ;; live = {%r85, %r82, %r89}
	%r92 = call token (i64,i32,i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64p1i64p1i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)* %r91,
		i32 2,i32 0,
		i64 addrspace(1)* %r85, i64 addrspace(1)* %r82,
		i32 0,i32 0,
		i64 addrspace(1)* %r85, i64 addrspace(1)* %r82, i64 addrspace(1)* %r89)
	%r93 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r92)
	%r94 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r92,i32 9,i32 9)
	%r95 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r92,i32 10,i32 10)
	%r96 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r92,i32 11,i32 11)
	; LET tpl020A = call _mll_print (_t00350208)
	; emitCall: @_mll_print (%r93) ;; live = {%r93}
	%r97 = call token (i64,i32,void (i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_voidp1i64f(i64 0,i32 0,
		void (i64 addrspace(1)*)* @_mll_print,
		i32 1,i32 0,
		i64 addrspace(1)* %r93,
		i32 0,i32 0,
		i64 addrspace(1)* %r93)
	%r98 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r97,i32 8,i32 8)
	; LET _t0038020B = call _mll_print ("\n")
	; emitCall: @_mll_print (@_slit_2) ;; live = {}
	%r99 = bitcast [2 x i64] addrspace(1)* @_slit_2 to i64 addrspace(1)*
	%r100 = call token (i64,i32,void (i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_voidp1i64f(i64 0,i32 0,
		void (i64 addrspace(1)*)* @_mll_print,
		i32 1,i32 0,
		i64 addrspace(1)* %r99,
		i32 0,i32 0)
	br label %join_0230
join_0230:
	%_t0000101 = phi i64 [ 1, %else_022E ], [ 1, %then_022F ]
	ret i64 1
}

define fastcc i64 addrspace(1)* @stringToInt00E3(i64 addrspace(1)* %stringToInt_clos112,i64 addrspace(1)* %s113) gc "statepoint-example" {
entry_0231:
	; LET charToDigit01A5 = #1(stringToInt_clos01A3)
	%r114 = bitcast i64 addrspace(1)* %stringToInt_clos112 to i64 addrspace(1)* addrspace(1)*
	%r115 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r114, i32 1
	%r116 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r115
	; LET sz01A6 = StrSize (s01A2)
	%r117 = load i64, i64 addrspace(1)* %s113
	; LET loop01A7 = alloc  {loop00E601AB,charToDigit01A5,s01A2,sz01A6}
	; emitCall: @_mll_alloc (4) ;; live = {%s113, %r116, %r117}
	%r118 = call token (i64,i32,i64 addrspace(1)* (i64)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64)* @_mll_alloc,
		i32 1,i32 0,
		i64 4,
		i32 0,i32 0,
		i64 addrspace(1)* %s113, i64 addrspace(1)* %r116)
	%r119 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r118)
	%r120 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r118,i32 8,i32 8)
	%r121 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r118,i32 9,i32 9)
	%r122 = getelementptr i64, i64 addrspace(1)* %r119, i32 0
	%r123 = ptrtoint i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)* @loop00E6 to i64
	store i64 %r123, i64 addrspace(1)* %r122
	%r124 = getelementptr i64, i64 addrspace(1)* %r119, i32 1
	%r125 = ptrtoint i64 addrspace(1)* %r121 to i64
	store i64 %r125, i64 addrspace(1)* %r124
	%r126 = getelementptr i64, i64 addrspace(1)* %r119, i32 2
	%r127 = ptrtoint i64 addrspace(1)* %r120 to i64
	store i64 %r127, i64 addrspace(1)* %r126
	%r128 = getelementptr i64, i64 addrspace(1)* %r119, i32 3
	store i64 %r117, i64 addrspace(1)* %r128
	; IF IntLt(0,sz01A6)
	%r129 = icmp slt i64 1, %r117
	br i1 %r129, label %then_0233, label %else_0232
else_0232:
	%r141 = inttoptr i64 1 to i64 addrspace(1)*
	ret i64 addrspace(1)* %r141
then_0233:
	; LET _t003401F7 = alloc  {0,0}
	; emitCall: @_mll_alloc (2) ;; live = {%r119}
	%r130 = call token (i64,i32,i64 addrspace(1)* (i64)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64)* @_mll_alloc,
		i32 1,i32 0,
		i64 2,
		i32 0,i32 0,
		i64 addrspace(1)* %r119)
	%r131 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r130)
	%r132 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r130,i32 8,i32 8)
	%r133 = getelementptr i64, i64 addrspace(1)* %r131, i32 0
	store i64 1, i64 addrspace(1)* %r133
	%r134 = getelementptr i64, i64 addrspace(1)* %r131, i32 1
	store i64 1, i64 addrspace(1)* %r134
	; LET loop_cp01F8 = #0(loop01F6)
	%r135 = bitcast i64 addrspace(1)* %r132 to i64 addrspace(1)* addrspace(1)*
	%r136 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r135, i32 0
	%r137 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r136
	; TAIL_APPLY loop_cp01F8(loop01F6,_t003401F7)
	%r138 = ptrtoint i64 addrspace(1)* %r137 to i64
	%r139 = inttoptr i64 %r138 to i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)*
	; emitTailCall: %r139 (%r132, %r131)
	%r140 = tail call i64 addrspace(1)* %r139 (i64 addrspace(1)* %r132, i64 addrspace(1)* %r131)
	ret i64 addrspace(1)* %r140
}

define fastcc i64 addrspace(1)* @loop00E6(i64 addrspace(1)* %loop_clos142,i64 addrspace(1)* %tpl143) gc "statepoint-example" {
entry_0234:
	; LET charToDigit01AC = #1(loop_clos01AA)
	%r144 = bitcast i64 addrspace(1)* %loop_clos142 to i64 addrspace(1)* addrspace(1)*
	%r145 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r144, i32 1
	%r146 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r145
	; LET s01AD = #2(loop_clos01AA)
	%r147 = bitcast i64 addrspace(1)* %loop_clos142 to i64 addrspace(1)* addrspace(1)*
	%r148 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r147, i32 2
	%r149 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r148
	; LET sz01AE = #3(loop_clos01AA)
	%r150 = bitcast i64 addrspace(1)* %loop_clos142 to i64 addrspace(1)* addrspace(1)*
	%r151 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r150, i32 3
	%r152 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r151
	%r153 = ptrtoint i64 addrspace(1)* %r152 to i64
	br label %loop00E6_hdr_0235
loop00E6_hdr_0235:
	%loop154 = phi i64 addrspace(1)* [ %r211, %then_023C ], [ %loop_clos142, %entry_0234 ]
	%tpl155 = phi i64 addrspace(1)* [ %r208, %then_023C ], [ %tpl143, %entry_0234 ]
	%charToDigit156 = phi i64 addrspace(1)* [ %r209, %then_023C ], [ %r146, %entry_0234 ]
	%s157 = phi i64 addrspace(1)* [ %r210, %then_023C ], [ %r149, %entry_0234 ]
	%sz158 = phi i64 [ %sz179, %then_023C ], [ %r153, %entry_0234 ]
	; LET pos01B4 = #0(tpl01B0)
	%r159 = bitcast i64 addrspace(1)* %tpl155 to i64 addrspace(1)* addrspace(1)*
	%r160 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r159, i32 0
	%r161 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r160
	; LET acc01B5 = #1(tpl01B0)
	%r162 = bitcast i64 addrspace(1)* %tpl155 to i64 addrspace(1)* addrspace(1)*
	%r163 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r162, i32 1
	%r164 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r163
	; IF IntLt(pos01B4,sz01B3)
	%r166 = ptrtoint i64 addrspace(1)* %r161 to i64
	%r165 = icmp slt i64 %r166, %sz158
	%r167 = ptrtoint i64 addrspace(1)* %r161 to i64
	%r168 = ptrtoint i64 addrspace(1)* %r164 to i64
	%r220 = ptrtoint i64 addrspace(1)* %r161 to i64
	%r221 = ptrtoint i64 addrspace(1)* %r164 to i64
	br i1 %r165, label %then_0237, label %else_0236
else_0236:
	; LET _t003301F4 = alloc  {acc01F3}
	; emitCall: @_mll_alloc (1) ;; live = {%r221}
	%r222 = call token (i64,i32,i64 addrspace(1)* (i64)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64)* @_mll_alloc,
		i32 1,i32 0,
		i64 1,
		i32 0,i32 0)
	%r223 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r222)
	%r224 = getelementptr i64, i64 addrspace(1)* %r223, i32 0
	store i64 %r221, i64 addrspace(1)* %r224
	ret i64 addrspace(1)* %r223
then_0237:
	; LET _t002601BD = StrSize (s01B8)
	%r169 = load i64, i64 addrspace(1)* %s157
	; IF UIntLt(pos01BB,_t002601BD)
	%r170 = icmp ult i64 %r167, %r169
	br i1 %r170, label %then_0239, label %else_0238
else_0238:
	; LET _t002801EC = call _mll_fail ("Subscript out of bounds")
	; emitCall: @_mll_fail (@_slit_3) ;; live = {%charToDigit156, %s157, %sz158, %loop154, %r167, %r168}
	%r215 = bitcast [4 x i64] addrspace(1)* @_slit_3 to i64 addrspace(1)*
	%r216 = call token (i64,i32,void (i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_voidp1i64f(i64 0,i32 0,
		void (i64 addrspace(1)*)* @_mll_fail,
		i32 1,i32 0,
		i64 addrspace(1)* %r215,
		i32 0,i32 0,
		i64 addrspace(1)* %charToDigit156, i64 addrspace(1)* %s157, i64 addrspace(1)* %loop154)
	%r217 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r216,i32 8,i32 8)
	%r218 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r216,i32 9,i32 9)
	%r219 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r216,i32 10,i32 10)
	br label %join_023A
then_0239:
	; LET _t002701E4 = StrSub (s01DF,pos01E2)
	%r171 = bitcast i64 addrspace(1)* %s157 to i8 addrspace(1)*
	%r172 = add i64 8, %r167
	%r173 = getelementptr i8, i8 addrspace(1)* %r171, i64 %r172
	%r174 = bitcast i8 addrspace(1)* %r173 to i64 addrspace(1)*
	%r175 = load i64, i64 addrspace(1)* %r174
	br label %join_023A
join_023A:
	%_t0025176 = phi i64 [ 1, %else_0238 ], [ %r175, %then_0239 ]
	%charToDigit177 = phi i64 addrspace(1)* [ %r217, %else_0238 ], [ %charToDigit156, %then_0239 ]
	%s178 = phi i64 addrspace(1)* [ %r218, %else_0238 ], [ %s157, %then_0239 ]
	%sz179 = phi i64 [ %sz158, %else_0238 ], [ %sz158, %then_0239 ]
	%loop180 = phi i64 addrspace(1)* [ %r219, %else_0238 ], [ %loop154, %then_0239 ]
	%pos181 = phi i64 [ %r167, %else_0238 ], [ %r167, %then_0239 ]
	%acc182 = phi i64 [ %r168, %else_0238 ], [ %r168, %then_0239 ]
	; LET charToDigit_cp01C7 = #0(charToDigit01C0)
	%r183 = bitcast i64 addrspace(1)* %charToDigit177 to i64 addrspace(1)* addrspace(1)*
	%r184 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r183, i32 0
	%r185 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r184
	; LET _t002401C6 = apply charToDigit_cp01C7 (charToDigit01C0,_t002501BF)
	%r186 = ptrtoint i64 addrspace(1)* %r185 to i64
	%r187 = inttoptr i64 %r186 to i64 addrspace(1)* (i64 addrspace(1)*,i64)*
	; emitCall: %r187 (%charToDigit177, %_t0025176) ;; live = {%_t0025176, %charToDigit177, %s178, %sz179, %loop180, %pos181, %acc182, %r185}
	%r188 = call token (i64,i32,i64 addrspace(1)* (i64 addrspace(1)*,i64)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64p1i64i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64 addrspace(1)*,i64)* %r187,
		i32 2,i32 0,
		i64 addrspace(1)* %charToDigit177, i64 %_t0025176,
		i32 0,i32 0,
		i64 addrspace(1)* %charToDigit177, i64 addrspace(1)* %s178, i64 addrspace(1)* %loop180, i64 addrspace(1)* %r185)
	%r189 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r188)
	%r190 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r188,i32 9,i32 9)
	%r191 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r188,i32 10,i32 10)
	%r192 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r188,i32 11,i32 11)
	%r193 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r188,i32 12,i32 12)
	; IF Boxed(_t002401C6)
	%r195 = ptrtoint i64 addrspace(1)* %r189 to i64
	%r194 = and i64 %r195, 1
	%r196 = icmp eq i64 %r194, 0
	br i1 %r196, label %then_023C, label %else_023B
else_023B:
	%r214 = inttoptr i64 1 to i64 addrspace(1)*
	ret i64 addrspace(1)* %r214
then_023C:
	; LET i01D0 = #0(_t002401CF)
	%r197 = bitcast i64 addrspace(1)* %r189 to i64 addrspace(1)* addrspace(1)*
	%r198 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r197, i32 0
	%r199 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r198
	; LET _t003001D1 = IntAdd (pos01CD,1)
	%r200 = add i64 %pos181, 2
	; LET _t003201D2 = IntMul (acc01CE,10)
	%r201 = sub i64 %acc182, 1
	%r202 = mul i64 %r201, 10
	%r203 = add i64 %r202, 1
	; LET _t003101D3 = IntAdd (_t003201D2,i01D0)
	%r204 = sub i64 %r203, 1
	%r206 = ptrtoint i64 addrspace(1)* %r199 to i64
	%r205 = add i64 %r204, %r206
	; LET _t002901D4 = alloc  {_t003001D1,_t003101D3}
	; emitCall: @_mll_alloc (2) ;; live = {%r190, %r191, %sz179, %r192, %r200, %r205}
	%r207 = call token (i64,i32,i64 addrspace(1)* (i64)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64)* @_mll_alloc,
		i32 1,i32 0,
		i64 2,
		i32 0,i32 0,
		i64 addrspace(1)* %r190, i64 addrspace(1)* %r191, i64 addrspace(1)* %r192)
	%r208 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r207)
	%r209 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r207,i32 8,i32 8)
	%r210 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r207,i32 9,i32 9)
	%r211 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r207,i32 10,i32 10)
	%r212 = getelementptr i64, i64 addrspace(1)* %r208, i32 0
	store i64 %r200, i64 addrspace(1)* %r212
	%r213 = getelementptr i64, i64 addrspace(1)* %r208, i32 1
	store i64 %r205, i64 addrspace(1)* %r213
	br label %loop00E6_hdr_0235
}

define fastcc i64 addrspace(1)* @charToDigit00DF(i64 addrspace(1)* %charToDigit_clos225,i64 %c226) gc "statepoint-example" {
entry_023D:
	; LET ord0018F = #1(charToDigit_clos018D)
	%r227 = bitcast i64 addrspace(1)* %charToDigit_clos225 to i64 addrspace(1)* addrspace(1)*
	%r228 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r227, i32 1
	%r229 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r228
	; LET ord90190 = #2(charToDigit_clos018D)
	%r230 = bitcast i64 addrspace(1)* %charToDigit_clos225 to i64 addrspace(1)* addrspace(1)*
	%r231 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r230, i32 2
	%r232 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r231
	; IF IntLte(ord0018F,c018C)
	%r234 = ptrtoint i64 addrspace(1)* %r229 to i64
	%r233 = icmp sle i64 %r234, %c226
	%r235 = ptrtoint i64 addrspace(1)* %r229 to i64
	%r236 = ptrtoint i64 addrspace(1)* %r232 to i64
	%r244 = ptrtoint i64 addrspace(1)* %r229 to i64
	%r245 = ptrtoint i64 addrspace(1)* %r232 to i64
	br i1 %r233, label %then_023F, label %else_023E
else_023E:
	%r246 = inttoptr i64 1 to i64 addrspace(1)*
	ret i64 addrspace(1)* %r246
then_023F:
	; IF IntLte(c0194,ord90193)
	%r237 = icmp sle i64 %c226, %r236
	br i1 %r237, label %then_0241, label %else_0240
else_0240:
	%r243 = inttoptr i64 1 to i64 addrspace(1)*
	ret i64 addrspace(1)* %r243
then_0241:
	; LET _t00220198 = IntSub (c0197,ord00196)
	%r238 = sub i64 %c226, %r235
	%r239 = add i64 %r238, 1
	; LET _t00230199 = alloc  {_t00220198}
	; emitCall: @_mll_alloc (1) ;; live = {%r239}
	%r240 = call token (i64,i32,i64 addrspace(1)* (i64)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64)* @_mll_alloc,
		i32 1,i32 0,
		i64 1,
		i32 0,i32 0)
	%r241 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r240)
	%r242 = getelementptr i64, i64 addrspace(1)* %r241, i32 0
	store i64 %r239, i64 addrspace(1)* %r242
	ret i64 addrspace(1)* %r241
}

define fastcc i64 addrspace(1)* @optionToString00CF(i64 addrspace(1)* %optionToString_clos247,i64 addrspace(1)* %aToString248) gc "statepoint-example" {
entry_0242:
	; LET optionToString1016E = alloc  {optionToString100D10171,aToString016B}
	; emitCall: @_mll_alloc (2) ;; live = {%aToString248}
	%r249 = call token (i64,i32,i64 addrspace(1)* (i64)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64)* @_mll_alloc,
		i32 1,i32 0,
		i64 2,
		i32 0,i32 0,
		i64 addrspace(1)* %aToString248)
	%r250 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r249)
	%r251 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r249,i32 8,i32 8)
	%r252 = getelementptr i64, i64 addrspace(1)* %r250, i32 0
	%r253 = ptrtoint i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)* @optionToString100D1 to i64
	store i64 %r253, i64 addrspace(1)* %r252
	%r254 = getelementptr i64, i64 addrspace(1)* %r250, i32 1
	%r255 = ptrtoint i64 addrspace(1)* %r251 to i64
	store i64 %r255, i64 addrspace(1)* %r254
	ret i64 addrspace(1)* %r250
}

define fastcc i64 addrspace(1)* @optionToString100D1(i64 addrspace(1)* %optionToString1_clos256,i64 addrspace(1)* %opt257) gc "statepoint-example" {
entry_0243:
	; LET aToString0172 = #1(optionToString1_clos0170)
	%r258 = bitcast i64 addrspace(1)* %optionToString1_clos256 to i64 addrspace(1)* addrspace(1)*
	%r259 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r258, i32 1
	%r260 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r259
	; IF Boxed(opt016F)
	%r262 = ptrtoint i64 addrspace(1)* %opt257 to i64
	%r261 = and i64 %r262, 1
	%r263 = icmp eq i64 %r261, 0
	br i1 %r263, label %then_0245, label %else_0244
else_0244:
	%r285 = bitcast [2 x i64] addrspace(1)* @_slit_6 to i64 addrspace(1)*
	ret i64 addrspace(1)* %r285
then_0245:
	; LET x0176 = #0(opt0175)
	%r264 = bitcast i64 addrspace(1)* %opt257 to i64 addrspace(1)* addrspace(1)*
	%r265 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r264, i32 0
	%r266 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r265
	; LET aToString_cp0178 = #0(aToString0174)
	%r267 = bitcast i64 addrspace(1)* %r260 to i64 addrspace(1)* addrspace(1)*
	%r268 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r267, i32 0
	%r269 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r268
	; LET _t00140177 = apply aToString_cp0178 (aToString0174,x0176)
	%r270 = ptrtoint i64 addrspace(1)* %r269 to i64
	%r271 = inttoptr i64 %r270 to i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)*
	; emitCall: %r271 (%r260, %r266) ;; live = {%r260, %r266, %r269}
	%r272 = call token (i64,i32,i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64p1i64p1i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)* %r271,
		i32 2,i32 0,
		i64 addrspace(1)* %r260, i64 addrspace(1)* %r266,
		i32 0,i32 0,
		i64 addrspace(1)* %r260, i64 addrspace(1)* %r266, i64 addrspace(1)* %r269)
	%r273 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r272)
	%r274 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r272,i32 9,i32 9)
	%r275 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r272,i32 10,i32 10)
	%r276 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r272,i32 11,i32 11)
	; LET _t00130179 = call _mll_concat ("Some(",_t00140177)
	; emitCall: @_mll_concat (@_slit_4, %r273) ;; live = {%r273}
	%r277 = bitcast [2 x i64] addrspace(1)* @_slit_4 to i64 addrspace(1)*
	%r278 = call token (i64,i32,i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64p1i64p1i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)* @_mll_concat,
		i32 2,i32 0,
		i64 addrspace(1)* %r277, i64 addrspace(1)* %r273,
		i32 0,i32 0,
		i64 addrspace(1)* %r273)
	%r279 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r278)
	%r280 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r278,i32 9,i32 9)
	; LET _t0015017A = call _mll_concat (_t00130179,")")
	; emitCall: @_mll_concat (%r279, @_slit_5) ;; live = {%r279}
	%r281 = bitcast [2 x i64] addrspace(1)* @_slit_5 to i64 addrspace(1)*
	%r282 = call token (i64,i32,i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64p1i64p1i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)* @_mll_concat,
		i32 2,i32 0,
		i64 addrspace(1)* %r279, i64 addrspace(1)* %r281,
		i32 0,i32 0,
		i64 addrspace(1)* %r279)
	%r283 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r282)
	%r284 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r282,i32 9,i32 9)
	ret i64 addrspace(1)* %r283
}

define fastcc i64 addrspace(1)* @intToString00C1(i64 addrspace(1)* %intToString_clos286,i64 %i287) gc "statepoint-example" {
entry_0246:
	; IF IntLt(i0104,0)
	%r288 = icmp slt i64 %i287, 1
	br i1 %r288, label %then_0262, label %else_0247
else_0247:
	; IF IntEq(i010F,0)
	%r297 = icmp eq i64 %i287, 1
	br i1 %r297, label %then_0261, label %else_0248
else_0248:
	; IF IntEq(i0115,1)
	%r299 = icmp eq i64 %i287, 3
	br i1 %r299, label %then_0260, label %else_0249
else_0249:
	; IF IntEq(i011B,2)
	%r301 = icmp eq i64 %i287, 5
	br i1 %r301, label %then_025F, label %else_024A
else_024A:
	; IF IntEq(i0121,3)
	%r303 = icmp eq i64 %i287, 7
	br i1 %r303, label %then_025E, label %else_024B
else_024B:
	; IF IntEq(i0127,4)
	%r305 = icmp eq i64 %i287, 9
	br i1 %r305, label %then_025D, label %else_024C
else_024C:
	; IF IntEq(i012D,5)
	%r307 = icmp eq i64 %i287, 11
	br i1 %r307, label %then_025C, label %else_024D
else_024D:
	; IF IntEq(i0133,6)
	%r309 = icmp eq i64 %i287, 13
	br i1 %r309, label %then_025B, label %else_024E
else_024E:
	; IF IntEq(i0139,7)
	%r311 = icmp eq i64 %i287, 15
	br i1 %r311, label %then_025A, label %else_024F
else_024F:
	; IF IntEq(i013F,8)
	%r313 = icmp eq i64 %i287, 17
	br i1 %r313, label %then_0259, label %else_0250
else_0250:
	; IF IntEq(i0145,9)
	%r315 = icmp eq i64 %i287, 19
	br i1 %r315, label %then_0258, label %else_0251
else_0251:
	; IF IntNEq(10,0)
	%r317 = icmp ne i64 21, 1
	br i1 %r317, label %then_0253, label %else_0252
else_0252:
	; LET _t00070169 = call _mll_fail ("Divide by zero")
	; emitCall: @_mll_fail (@_slit_17) ;; live = {%intToString_clos286, %i287}
	%r349 = bitcast [3 x i64] addrspace(1)* @_slit_17 to i64 addrspace(1)*
	%r350 = call token (i64,i32,void (i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_voidp1i64f(i64 0,i32 0,
		void (i64 addrspace(1)*)* @_mll_fail,
		i32 1,i32 0,
		i64 addrspace(1)* %r349,
		i32 0,i32 0,
		i64 addrspace(1)* %intToString_clos286)
	%r351 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r350,i32 8,i32 8)
	br label %join_0254
then_0253:
	; LET _t00060165 = IntDiv (i0164,10)
	%r318 = ashr i64 %i287, 1
	%r319 = sdiv i64 %r318, 10
	%r320 = shl i64 %r319, 1
	%r321 = add i64 %r320, 1
	br label %join_0254
join_0254:
	%_t0005322 = phi i64 [ 1, %else_0252 ], [ %r321, %then_0253 ]
	%intToString323 = phi i64 addrspace(1)* [ %r351, %else_0252 ], [ %intToString_clos286, %then_0253 ]
	%i324 = phi i64 [ %i287, %else_0252 ], [ %i287, %then_0253 ]
	; LET _t00040150 = apply intToString00C10106 (intToString014E,_t0005014D)
	; emitCall: @intToString00C1 (%intToString323, %_t0005322) ;; live = {%_t0005322, %intToString323, %i324}
	%r325 = call token (i64,i32,i64 addrspace(1)* (i64 addrspace(1)*,i64)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64p1i64i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64 addrspace(1)*,i64)* @intToString00C1,
		i32 2,i32 0,
		i64 addrspace(1)* %intToString323, i64 %_t0005322,
		i32 0,i32 0,
		i64 addrspace(1)* %intToString323)
	%r326 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r325)
	%r327 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r325,i32 9,i32 9)
	; IF IntNEq(10,0)
	%r328 = icmp ne i64 21, 1
	br i1 %r328, label %then_0256, label %else_0255
else_0255:
	; LET _t00110161 = call _mll_fail ("Remainder by zero")
	; emitCall: @_mll_fail (@_slit_16) ;; live = {%r327, %i324, %r326}
	%r345 = bitcast [4 x i64] addrspace(1)* @_slit_16 to i64 addrspace(1)*
	%r346 = call token (i64,i32,void (i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_voidp1i64f(i64 0,i32 0,
		void (i64 addrspace(1)*)* @_mll_fail,
		i32 1,i32 0,
		i64 addrspace(1)* %r345,
		i32 0,i32 0,
		i64 addrspace(1)* %r327, i64 addrspace(1)* %r326)
	%r347 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r346,i32 8,i32 8)
	%r348 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r346,i32 9,i32 9)
	br label %join_0257
then_0256:
	; LET _t0010015C = IntMod (i015A,10)
	%r329 = ashr i64 %i324, 1
	%r330 = srem i64 %r329, 10
	%r331 = shl i64 %r330, 1
	%r332 = add i64 %r331, 1
	br label %join_0257
join_0257:
	%_t0009333 = phi i64 [ 1, %else_0255 ], [ %r332, %then_0256 ]
	%intToString334 = phi i64 addrspace(1)* [ %r347, %else_0255 ], [ %r327, %then_0256 ]
	%i335 = phi i64 [ %i324, %else_0255 ], [ %i324, %then_0256 ]
	%_t0004336 = phi i64 addrspace(1)* [ %r348, %else_0255 ], [ %r326, %then_0256 ]
	; LET _t00080156 = apply intToString00C10106 (intToString0153,_t00090152)
	; emitCall: @intToString00C1 (%intToString334, %_t0009333) ;; live = {%_t0009333, %intToString334, %_t0004336}
	%r337 = call token (i64,i32,i64 addrspace(1)* (i64 addrspace(1)*,i64)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64p1i64i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64 addrspace(1)*,i64)* @intToString00C1,
		i32 2,i32 0,
		i64 addrspace(1)* %intToString334, i64 %_t0009333,
		i32 0,i32 0,
		i64 addrspace(1)* %intToString334, i64 addrspace(1)* %_t0004336)
	%r338 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r337)
	%r339 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r337,i32 9,i32 9)
	%r340 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r337,i32 10,i32 10)
	; LET _t00120157 = call _mll_concat (_t00040155,_t00080156)
	; emitCall: @_mll_concat (%r340, %r338) ;; live = {%r340, %r338}
	%r341 = call token (i64,i32,i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64p1i64p1i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)* @_mll_concat,
		i32 2,i32 0,
		i64 addrspace(1)* %r340, i64 addrspace(1)* %r338,
		i32 0,i32 0,
		i64 addrspace(1)* %r340, i64 addrspace(1)* %r338)
	%r342 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r341)
	%r343 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r341,i32 9,i32 9)
	%r344 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r341,i32 10,i32 10)
	ret i64 addrspace(1)* %r342
then_0258:
	%r316 = bitcast [2 x i64] addrspace(1)* @_slit_1 to i64 addrspace(1)*
	ret i64 addrspace(1)* %r316
then_0259:
	%r314 = bitcast [2 x i64] addrspace(1)* @_slit_15 to i64 addrspace(1)*
	ret i64 addrspace(1)* %r314
then_025A:
	%r312 = bitcast [2 x i64] addrspace(1)* @_slit_14 to i64 addrspace(1)*
	ret i64 addrspace(1)* %r312
then_025B:
	%r310 = bitcast [2 x i64] addrspace(1)* @_slit_13 to i64 addrspace(1)*
	ret i64 addrspace(1)* %r310
then_025C:
	%r308 = bitcast [2 x i64] addrspace(1)* @_slit_12 to i64 addrspace(1)*
	ret i64 addrspace(1)* %r308
then_025D:
	%r306 = bitcast [2 x i64] addrspace(1)* @_slit_11 to i64 addrspace(1)*
	ret i64 addrspace(1)* %r306
then_025E:
	%r304 = bitcast [2 x i64] addrspace(1)* @_slit_10 to i64 addrspace(1)*
	ret i64 addrspace(1)* %r304
then_025F:
	%r302 = bitcast [2 x i64] addrspace(1)* @_slit_9 to i64 addrspace(1)*
	ret i64 addrspace(1)* %r302
then_0260:
	%r300 = bitcast [2 x i64] addrspace(1)* @_slit_8 to i64 addrspace(1)*
	ret i64 addrspace(1)* %r300
then_0261:
	%r298 = bitcast [2 x i64] addrspace(1)* @_slit_0 to i64 addrspace(1)*
	ret i64 addrspace(1)* %r298
then_0262:
	; LET _t0002010A = IntNeg (i0109)
	%r289 = sub i64 2, %i287
	; LET _t0001010B = apply intToString00C10106 (intToString0108,_t0002010A)
	; emitCall: @intToString00C1 (%intToString_clos286, %r289) ;; live = {%intToString_clos286, %r289}
	%r290 = call token (i64,i32,i64 addrspace(1)* (i64 addrspace(1)*,i64)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64p1i64i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64 addrspace(1)*,i64)* @intToString00C1,
		i32 2,i32 0,
		i64 addrspace(1)* %intToString_clos286, i64 %r289,
		i32 0,i32 0,
		i64 addrspace(1)* %intToString_clos286)
	%r291 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r290)
	%r292 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r290,i32 9,i32 9)
	; LET _t0003010C = call _mll_concat ("-",_t0001010B)
	; emitCall: @_mll_concat (@_slit_7, %r291) ;; live = {%r291}
	%r293 = bitcast [2 x i64] addrspace(1)* @_slit_7 to i64 addrspace(1)*
	%r294 = call token (i64,i32,i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64p1i64p1i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)* @_mll_concat,
		i32 2,i32 0,
		i64 addrspace(1)* %r293, i64 addrspace(1)* %r291,
		i32 0,i32 0,
		i64 addrspace(1)* %r291)
	%r295 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r294)
	%r296 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r294,i32 9,i32 9)
	ret i64 addrspace(1)* %r295
}


declare i64 addrspace(1)* @_mll_alloc(i64)
declare i64 addrspace(1)* @_mll_concat(i64 addrspace(1)*,i64 addrspace(1)*)
declare void @_mll_exit(i64)
declare void @_mll_fail(i64 addrspace(1)*)
declare void @_mll_print(i64 addrspace(1)*)
declare i64 addrspace(1)* @_mll_str_chr(i64)
@_slit_0 = global [2 x i64] [
	i64 3,
	i64 48
]

@_slit_1 = global [2 x i64] [
	i64 3,
	i64 57
]

@_slit_2 = global [2 x i64] [
	i64 3,
	i64 10
]

@_slit_3 = global [4 x i64] [
	i64 47,
	i64 8100131176265708883,
	i64 7381153998842044532,
	i64 32480047901139488
]

@_slit_4 = global [2 x i64] [
	i64 11,
	i64 173500362579
]

@_slit_5 = global [2 x i64] [
	i64 3,
	i64 41
]

@_slit_6 = global [2 x i64] [
	i64 9,
	i64 1701736270
]

@_slit_7 = global [2 x i64] [
	i64 3,
	i64 45
]

@_slit_8 = global [2 x i64] [
	i64 3,
	i64 49
]

@_slit_9 = global [2 x i64] [
	i64 3,
	i64 50
]

@_slit_10 = global [2 x i64] [
	i64 3,
	i64 51
]

@_slit_11 = global [2 x i64] [
	i64 3,
	i64 52
]

@_slit_12 = global [2 x i64] [
	i64 3,
	i64 53
]

@_slit_13 = global [2 x i64] [
	i64 3,
	i64 54
]

@_slit_14 = global [2 x i64] [
	i64 3,
	i64 55
]

@_slit_15 = global [2 x i64] [
	i64 3,
	i64 56
]

@_slit_16 = global [4 x i64] [
	i64 35,
	i64 7306085894386967890,
	i64 8243128972865577074,
	i64 111
]

@_slit_17 = global [3 x i64] [
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
