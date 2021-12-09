define fastcc i64 @_mll_entry(i64 addrspace(1)* %arguments1) gc "statepoint-example" {
entry_0158:
	; LET intToString00BD = alloc  {intToString009100C0}
	; emitCall: @_mll_alloc (1) ;; live = {}
	%r2 = call token (i64,i32,i64 addrspace(1)* (i64)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64)* @_mll_alloc,
		i32 1,i32 0,
		i64 1,
		i32 0,i32 0)
	%r3 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r2)
	%r4 = getelementptr i64, i64 addrspace(1)* %r3, i32 0
	%r5 = ptrtoint i64 addrspace(1)* (i64 addrspace(1)*,i64)* @intToString0091 to i64
	store i64 %r5, i64 addrspace(1)* %r4
	; LET y0124 = alloc  {y009F0127}
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
	%r10 = ptrtoint i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)* @y009F to i64
	store i64 %r10, i64 addrspace(1)* %r9
	; LET factY013A = alloc  {factY00A7013D}
	; emitCall: @_mll_alloc (1) ;; live = {%r8, %r7}
	%r11 = call token (i64,i32,i64 addrspace(1)* (i64)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64)* @_mll_alloc,
		i32 1,i32 0,
		i64 1,
		i32 0,i32 0,
		i64 addrspace(1)* %r8, i64 addrspace(1)* %r7)
	%r12 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r11)
	%r13 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r11,i32 8,i32 8)
	%r14 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r11,i32 9,i32 9)
	%r15 = getelementptr i64, i64 addrspace(1)* %r12, i32 0
	%r16 = ptrtoint i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)* @factY00A7 to i64
	store i64 %r16, i64 addrspace(1)* %r15
	; LET y_cp014C = #0(y0124)
	%r17 = bitcast i64 addrspace(1)* %r14 to i64 addrspace(1)* addrspace(1)*
	%r18 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r17, i32 0
	%r19 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r18
	; LET fact014B = apply y_cp014C (y0124,factY013A)
	%r20 = ptrtoint i64 addrspace(1)* %r19 to i64
	%r21 = inttoptr i64 %r20 to i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)*
	; emitCall: %r21 (%r14, %r12) ;; live = {%r13, %r14, %r12, %r19}
	%r22 = call token (i64,i32,i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64p1i64p1i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)* %r21,
		i32 2,i32 0,
		i64 addrspace(1)* %r14, i64 addrspace(1)* %r12,
		i32 0,i32 0,
		i64 addrspace(1)* %r13, i64 addrspace(1)* %r14, i64 addrspace(1)* %r12, i64 addrspace(1)* %r19)
	%r23 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r22)
	%r24 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r22,i32 9,i32 9)
	%r25 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r22,i32 10,i32 10)
	%r26 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r22,i32 11,i32 11)
	%r27 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r22,i32 12,i32 12)
	; LET fact_cp014E = #0(fact014B)
	%r28 = bitcast i64 addrspace(1)* %r23 to i64 addrspace(1)* addrspace(1)*
	%r29 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r28, i32 0
	%r30 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r29
	; LET fact_n014D = apply fact_cp014E (fact014B,5)
	%r31 = ptrtoint i64 addrspace(1)* %r30 to i64
	%r32 = inttoptr i64 %r31 to i64 addrspace(1)* (i64 addrspace(1)*,i64)*
	; emitCall: %r32 (%r23, 11) ;; live = {%r24, %r23, %r30}
	%r33 = call token (i64,i32,i64 addrspace(1)* (i64 addrspace(1)*,i64)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64p1i64i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64 addrspace(1)*,i64)* %r32,
		i32 2,i32 0,
		i64 addrspace(1)* %r23, i64 11,
		i32 0,i32 0,
		i64 addrspace(1)* %r24, i64 addrspace(1)* %r23, i64 addrspace(1)* %r30)
	%r34 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r33)
	%r35 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r33,i32 9,i32 9)
	%r36 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r33,i32 10,i32 10)
	%r37 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r33,i32 11,i32 11)
	; LET tpl014F = call _mll_print ("fact ")
	; emitCall: @_mll_print (@_slit_0) ;; live = {%r35, %r34}
	%r38 = bitcast [2 x i64] addrspace(1)* @_slit_0 to i64 addrspace(1)*
	%r39 = call token (i64,i32,void (i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_voidp1i64f(i64 0,i32 0,
		void (i64 addrspace(1)*)* @_mll_print,
		i32 1,i32 0,
		i64 addrspace(1)* %r38,
		i32 0,i32 0,
		i64 addrspace(1)* %r35, i64 addrspace(1)* %r34)
	%r40 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r39,i32 8,i32 8)
	%r41 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r39,i32 9,i32 9)
	; LET intToString_cp0151 = #0(intToString00BD)
	%r42 = bitcast i64 addrspace(1)* %r40 to i64 addrspace(1)* addrspace(1)*
	%r43 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r42, i32 0
	%r44 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r43
	; LET _t00180150 = apply intToString_cp0151 (intToString00BD,5)
	%r45 = ptrtoint i64 addrspace(1)* %r44 to i64
	%r46 = inttoptr i64 %r45 to i64 addrspace(1)* (i64 addrspace(1)*,i64)*
	; emitCall: %r46 (%r40, 11) ;; live = {%r40, %r41, %r44}
	%r47 = call token (i64,i32,i64 addrspace(1)* (i64 addrspace(1)*,i64)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64p1i64i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64 addrspace(1)*,i64)* %r46,
		i32 2,i32 0,
		i64 addrspace(1)* %r40, i64 11,
		i32 0,i32 0,
		i64 addrspace(1)* %r40, i64 addrspace(1)* %r41, i64 addrspace(1)* %r44)
	%r48 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r47)
	%r49 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r47,i32 9,i32 9)
	%r50 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r47,i32 10,i32 10)
	%r51 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r47,i32 11,i32 11)
	; LET tpl0152 = call _mll_print (_t00180150)
	; emitCall: @_mll_print (%r48) ;; live = {%r49, %r50, %r48}
	%r52 = call token (i64,i32,void (i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_voidp1i64f(i64 0,i32 0,
		void (i64 addrspace(1)*)* @_mll_print,
		i32 1,i32 0,
		i64 addrspace(1)* %r48,
		i32 0,i32 0,
		i64 addrspace(1)* %r49, i64 addrspace(1)* %r50, i64 addrspace(1)* %r48)
	%r53 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r52,i32 8,i32 8)
	%r54 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r52,i32 9,i32 9)
	%r55 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r52,i32 10,i32 10)
	; LET tpl0153 = call _mll_print (" = ")
	; emitCall: @_mll_print (@_slit_1) ;; live = {%r53, %r54}
	%r56 = bitcast [2 x i64] addrspace(1)* @_slit_1 to i64 addrspace(1)*
	%r57 = call token (i64,i32,void (i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_voidp1i64f(i64 0,i32 0,
		void (i64 addrspace(1)*)* @_mll_print,
		i32 1,i32 0,
		i64 addrspace(1)* %r56,
		i32 0,i32 0,
		i64 addrspace(1)* %r53, i64 addrspace(1)* %r54)
	%r58 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r57,i32 8,i32 8)
	%r59 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r57,i32 9,i32 9)
	; LET intToString_cp0155 = #0(intToString00BD)
	%r60 = bitcast i64 addrspace(1)* %r58 to i64 addrspace(1)* addrspace(1)*
	%r61 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r60, i32 0
	%r62 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r61
	; LET _t00190154 = apply intToString_cp0155 (intToString00BD,fact_n014D)
	%r63 = ptrtoint i64 addrspace(1)* %r62 to i64
	%r64 = inttoptr i64 %r63 to i64 addrspace(1)* (i64 addrspace(1)*,i64)*
	%r65 = ptrtoint i64 addrspace(1)* %r59 to i64
	; emitCall: %r64 (%r58, %r65) ;; live = {%r58, %r59, %r62}
	%r66 = call token (i64,i32,i64 addrspace(1)* (i64 addrspace(1)*,i64)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64p1i64i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64 addrspace(1)*,i64)* %r64,
		i32 2,i32 0,
		i64 addrspace(1)* %r58, i64 %r65,
		i32 0,i32 0,
		i64 addrspace(1)* %r58, i64 addrspace(1)* %r59, i64 addrspace(1)* %r62)
	%r67 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r66)
	%r68 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r66,i32 9,i32 9)
	%r69 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r66,i32 10,i32 10)
	%r70 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r66,i32 11,i32 11)
	; LET tpl0156 = call _mll_print (_t00190154)
	; emitCall: @_mll_print (%r67) ;; live = {%r67}
	%r71 = call token (i64,i32,void (i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_voidp1i64f(i64 0,i32 0,
		void (i64 addrspace(1)*)* @_mll_print,
		i32 1,i32 0,
		i64 addrspace(1)* %r67,
		i32 0,i32 0,
		i64 addrspace(1)* %r67)
	%r72 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r71,i32 8,i32 8)
	; LET tpl0157 = call _mll_print ("\n")
	; emitCall: @_mll_print (@_slit_2) ;; live = {}
	%r73 = bitcast [2 x i64] addrspace(1)* @_slit_2 to i64 addrspace(1)*
	%r74 = call token (i64,i32,void (i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_voidp1i64f(i64 0,i32 0,
		void (i64 addrspace(1)*)* @_mll_print,
		i32 1,i32 0,
		i64 addrspace(1)* %r73,
		i32 0,i32 0)
	ret i64 1
}

define fastcc i64 addrspace(1)* @factY00A7(i64 addrspace(1)* %factY_clos75,i64 addrspace(1)* %fact76) gc "statepoint-example" {
entry_0159:
	; LET factY1013E = alloc  {factY100A90141,fact013B}
	; emitCall: @_mll_alloc (2) ;; live = {%fact76}
	%r77 = call token (i64,i32,i64 addrspace(1)* (i64)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64)* @_mll_alloc,
		i32 1,i32 0,
		i64 2,
		i32 0,i32 0,
		i64 addrspace(1)* %fact76)
	%r78 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r77)
	%r79 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r77,i32 8,i32 8)
	%r80 = getelementptr i64, i64 addrspace(1)* %r78, i32 0
	%r81 = ptrtoint i64 (i64 addrspace(1)*,i64)* @factY100A9 to i64
	store i64 %r81, i64 addrspace(1)* %r80
	%r82 = getelementptr i64, i64 addrspace(1)* %r78, i32 1
	%r83 = ptrtoint i64 addrspace(1)* %r79 to i64
	store i64 %r83, i64 addrspace(1)* %r82
	ret i64 addrspace(1)* %r78
}

define fastcc i64 @factY100A9(i64 addrspace(1)* %factY1_clos84,i64 %n85) gc "statepoint-example" {
entry_015A:
	; LET fact0142 = #1(factY1_clos0140)
	%r86 = bitcast i64 addrspace(1)* %factY1_clos84 to i64 addrspace(1)* addrspace(1)*
	%r87 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r86, i32 1
	%r88 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r87
	; IF IntEq(n013F,0)
	%r89 = icmp eq i64 %n85, 1
	br i1 %r89, label %then_015C, label %else_015B
else_015B:
	; LET _t00160147 = IntSub (n0146,1)
	%r90 = sub i64 %n85, 2
	; LET fact_cp0149 = #0(fact0145)
	%r91 = bitcast i64 addrspace(1)* %r88 to i64 addrspace(1)* addrspace(1)*
	%r92 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r91, i32 0
	%r93 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r92
	; LET _t00150148 = apply fact_cp0149 (fact0145,_t00160147)
	%r94 = ptrtoint i64 addrspace(1)* %r93 to i64
	%r95 = inttoptr i64 %r94 to i64 (i64 addrspace(1)*,i64)*
	; emitCall: %r95 (%r88, %r90) ;; live = {%r88, %n85, %r90, %r93}
	%r96 = call token (i64,i32,i64 (i64 addrspace(1)*,i64)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_i64p1i64i64f(i64 0,i32 0,
		i64 (i64 addrspace(1)*,i64)* %r95,
		i32 2,i32 0,
		i64 addrspace(1)* %r88, i64 %r90,
		i32 0,i32 0,
		i64 addrspace(1)* %r88, i64 addrspace(1)* %r93)
	%r97 = call i64 @llvm.experimental.gc.result.i64(token %r96)
	%r98 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r96,i32 9,i32 9)
	%r99 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r96,i32 10,i32 10)
	; LET _t0017014A = IntMul (n0146,_t00150148)
	%r100 = sub i64 %n85, 1
	%r101 = ashr i64 %r97, 1
	%r102 = mul i64 %r100, %r101
	%r103 = add i64 %r102, 1
	ret i64 %r103
then_015C:
	ret i64 3
}

define fastcc i64 addrspace(1)* @y009F(i64 addrspace(1)* %y_clos104,i64 addrspace(1)* %f105) gc "statepoint-example" {
entry_015D:
	; LET y10128 = alloc  {y100A1012B,y_clos0126,f0125}
	; emitCall: @_mll_alloc (3) ;; live = {%f105, %y_clos104}
	%r106 = call token (i64,i32,i64 addrspace(1)* (i64)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64)* @_mll_alloc,
		i32 1,i32 0,
		i64 3,
		i32 0,i32 0,
		i64 addrspace(1)* %f105, i64 addrspace(1)* %y_clos104)
	%r107 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r106)
	%r108 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r106,i32 8,i32 8)
	%r109 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r106,i32 9,i32 9)
	%r110 = getelementptr i64, i64 addrspace(1)* %r107, i32 0
	%r111 = ptrtoint i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)* @y100A1 to i64
	store i64 %r111, i64 addrspace(1)* %r110
	%r112 = getelementptr i64, i64 addrspace(1)* %r107, i32 1
	%r113 = ptrtoint i64 addrspace(1)* %r109 to i64
	store i64 %r113, i64 addrspace(1)* %r112
	%r114 = getelementptr i64, i64 addrspace(1)* %r107, i32 2
	%r115 = ptrtoint i64 addrspace(1)* %r108 to i64
	store i64 %r115, i64 addrspace(1)* %r114
	ret i64 addrspace(1)* %r107
}

define fastcc i64 addrspace(1)* @y100A1(i64 addrspace(1)* %y1_clos116,i64 addrspace(1)* %x117) gc "statepoint-example" {
entry_015E:
	; LET y012C = #1(y1_clos012A)
	%r118 = bitcast i64 addrspace(1)* %y1_clos116 to i64 addrspace(1)* addrspace(1)*
	%r119 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r118, i32 1
	%r120 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r119
	; LET f012D = #2(y1_clos012A)
	%r121 = bitcast i64 addrspace(1)* %y1_clos116 to i64 addrspace(1)* addrspace(1)*
	%r122 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r121, i32 2
	%r123 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r122
	; LET g012E = alloc  {g00A30131,y012C,f012D}
	; emitCall: @_mll_alloc (3) ;; live = {%x117, %r120, %r123}
	%r124 = call token (i64,i32,i64 addrspace(1)* (i64)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64)* @_mll_alloc,
		i32 1,i32 0,
		i64 3,
		i32 0,i32 0,
		i64 addrspace(1)* %x117, i64 addrspace(1)* %r120, i64 addrspace(1)* %r123)
	%r125 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r124)
	%r126 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r124,i32 8,i32 8)
	%r127 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r124,i32 9,i32 9)
	%r128 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r124,i32 10,i32 10)
	%r129 = getelementptr i64, i64 addrspace(1)* %r125, i32 0
	%r130 = ptrtoint i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)* @g00A3 to i64
	store i64 %r130, i64 addrspace(1)* %r129
	%r131 = getelementptr i64, i64 addrspace(1)* %r125, i32 1
	%r132 = ptrtoint i64 addrspace(1)* %r127 to i64
	store i64 %r132, i64 addrspace(1)* %r131
	%r133 = getelementptr i64, i64 addrspace(1)* %r125, i32 2
	%r134 = ptrtoint i64 addrspace(1)* %r128 to i64
	store i64 %r134, i64 addrspace(1)* %r133
	; LET f_cp0138 = #0(f012D)
	%r135 = bitcast i64 addrspace(1)* %r128 to i64 addrspace(1)* addrspace(1)*
	%r136 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r135, i32 0
	%r137 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r136
	; LET _t00140137 = apply f_cp0138 (f012D,g012E)
	%r138 = ptrtoint i64 addrspace(1)* %r137 to i64
	%r139 = inttoptr i64 %r138 to i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)*
	; emitCall: %r139 (%r128, %r125) ;; live = {%r126, %r128, %r125, %r137}
	%r140 = call token (i64,i32,i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64p1i64p1i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)* %r139,
		i32 2,i32 0,
		i64 addrspace(1)* %r128, i64 addrspace(1)* %r125,
		i32 0,i32 0,
		i64 addrspace(1)* %r126, i64 addrspace(1)* %r128, i64 addrspace(1)* %r125, i64 addrspace(1)* %r137)
	%r141 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r140)
	%r142 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r140,i32 9,i32 9)
	%r143 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r140,i32 10,i32 10)
	%r144 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r140,i32 11,i32 11)
	%r145 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r140,i32 12,i32 12)
	; LET _t0014_cp0139 = #0(_t00140137)
	%r146 = bitcast i64 addrspace(1)* %r141 to i64 addrspace(1)* addrspace(1)*
	%r147 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r146, i32 0
	%r148 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r147
	; TAIL_APPLY _t0014_cp0139(_t00140137,x0129)
	%r149 = ptrtoint i64 addrspace(1)* %r148 to i64
	%r150 = inttoptr i64 %r149 to i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)*
	; emitTailCall: %r150 (%r141, %r142)
	%r151 = tail call i64 addrspace(1)* %r150 (i64 addrspace(1)* %r141, i64 addrspace(1)* %r142)
	ret i64 addrspace(1)* %r151
}

define fastcc i64 addrspace(1)* @g00A3(i64 addrspace(1)* %g_clos152,i64 addrspace(1)* %x153) gc "statepoint-example" {
entry_015F:
	; LET y0132 = #1(g_clos0130)
	%r154 = bitcast i64 addrspace(1)* %g_clos152 to i64 addrspace(1)* addrspace(1)*
	%r155 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r154, i32 1
	%r156 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r155
	; LET f0133 = #2(g_clos0130)
	%r157 = bitcast i64 addrspace(1)* %g_clos152 to i64 addrspace(1)* addrspace(1)*
	%r158 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r157, i32 2
	%r159 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r158
	; LET y_cp0135 = #0(y0132)
	%r160 = bitcast i64 addrspace(1)* %r156 to i64 addrspace(1)* addrspace(1)*
	%r161 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r160, i32 0
	%r162 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r161
	; LET _t00130134 = apply y_cp0135 (y0132,f0133)
	%r163 = ptrtoint i64 addrspace(1)* %r162 to i64
	%r164 = inttoptr i64 %r163 to i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)*
	; emitCall: %r164 (%r156, %r159) ;; live = {%x153, %r156, %r159, %r162}
	%r165 = call token (i64,i32,i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64p1i64p1i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)* %r164,
		i32 2,i32 0,
		i64 addrspace(1)* %r156, i64 addrspace(1)* %r159,
		i32 0,i32 0,
		i64 addrspace(1)* %x153, i64 addrspace(1)* %r156, i64 addrspace(1)* %r159, i64 addrspace(1)* %r162)
	%r166 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r165)
	%r167 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r165,i32 9,i32 9)
	%r168 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r165,i32 10,i32 10)
	%r169 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r165,i32 11,i32 11)
	%r170 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r165,i32 12,i32 12)
	; LET _t0013_cp0136 = #0(_t00130134)
	%r171 = bitcast i64 addrspace(1)* %r166 to i64 addrspace(1)* addrspace(1)*
	%r172 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r171, i32 0
	%r173 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r172
	; TAIL_APPLY _t0013_cp0136(_t00130134,x012F)
	%r174 = ptrtoint i64 addrspace(1)* %r173 to i64
	%r175 = inttoptr i64 %r174 to i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)*
	; emitTailCall: %r175 (%r166, %r167)
	%r176 = tail call i64 addrspace(1)* %r175 (i64 addrspace(1)* %r166, i64 addrspace(1)* %r167)
	ret i64 addrspace(1)* %r176
}

define fastcc i64 addrspace(1)* @intToString0091(i64 addrspace(1)* %intToString_clos177,i64 %i178) gc "statepoint-example" {
entry_0160:
	; IF IntLt(i00BE,0)
	%r179 = icmp slt i64 %i178, 1
	br i1 %r179, label %then_017C, label %else_0161
else_0161:
	; IF IntEq(i00C9,0)
	%r188 = icmp eq i64 %i178, 1
	br i1 %r188, label %then_017B, label %else_0162
else_0162:
	; IF IntEq(i00CF,1)
	%r190 = icmp eq i64 %i178, 3
	br i1 %r190, label %then_017A, label %else_0163
else_0163:
	; IF IntEq(i00D5,2)
	%r192 = icmp eq i64 %i178, 5
	br i1 %r192, label %then_0179, label %else_0164
else_0164:
	; IF IntEq(i00DB,3)
	%r194 = icmp eq i64 %i178, 7
	br i1 %r194, label %then_0178, label %else_0165
else_0165:
	; IF IntEq(i00E1,4)
	%r196 = icmp eq i64 %i178, 9
	br i1 %r196, label %then_0177, label %else_0166
else_0166:
	; IF IntEq(i00E7,5)
	%r198 = icmp eq i64 %i178, 11
	br i1 %r198, label %then_0176, label %else_0167
else_0167:
	; IF IntEq(i00ED,6)
	%r200 = icmp eq i64 %i178, 13
	br i1 %r200, label %then_0175, label %else_0168
else_0168:
	; IF IntEq(i00F3,7)
	%r202 = icmp eq i64 %i178, 15
	br i1 %r202, label %then_0174, label %else_0169
else_0169:
	; IF IntEq(i00F9,8)
	%r204 = icmp eq i64 %i178, 17
	br i1 %r204, label %then_0173, label %else_016A
else_016A:
	; IF IntEq(i00FF,9)
	%r206 = icmp eq i64 %i178, 19
	br i1 %r206, label %then_0172, label %else_016B
else_016B:
	; IF IntNEq(10,0)
	%r208 = icmp ne i64 21, 1
	br i1 %r208, label %then_016D, label %else_016C
else_016C:
	; LET _t00070123 = call _mll_fail ("Divide by zero")
	; emitCall: @_mll_fail (@_slit_15) ;; live = {%intToString_clos177, %i178}
	%r240 = bitcast [3 x i64] addrspace(1)* @_slit_15 to i64 addrspace(1)*
	%r241 = call token (i64,i32,void (i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_voidp1i64f(i64 0,i32 0,
		void (i64 addrspace(1)*)* @_mll_fail,
		i32 1,i32 0,
		i64 addrspace(1)* %r240,
		i32 0,i32 0,
		i64 addrspace(1)* %intToString_clos177)
	%r242 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r241,i32 8,i32 8)
	br label %join_016E
then_016D:
	; LET _t0006011F = IntDiv (i011E,10)
	%r209 = ashr i64 %i178, 1
	%r210 = sdiv i64 %r209, 10
	%r211 = shl i64 %r210, 1
	%r212 = add i64 %r211, 1
	br label %join_016E
join_016E:
	%_t0005213 = phi i64 [ 1, %else_016C ], [ %r212, %then_016D ]
	%intToString214 = phi i64 addrspace(1)* [ %r242, %else_016C ], [ %intToString_clos177, %then_016D ]
	%i215 = phi i64 [ %i178, %else_016C ], [ %i178, %then_016D ]
	; LET _t0004010A = apply intToString009100C0 (intToString0108,_t00050107)
	; emitCall: @intToString0091 (%intToString214, %_t0005213) ;; live = {%_t0005213, %intToString214, %i215}
	%r216 = call token (i64,i32,i64 addrspace(1)* (i64 addrspace(1)*,i64)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64p1i64i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64 addrspace(1)*,i64)* @intToString0091,
		i32 2,i32 0,
		i64 addrspace(1)* %intToString214, i64 %_t0005213,
		i32 0,i32 0,
		i64 addrspace(1)* %intToString214)
	%r217 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r216)
	%r218 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r216,i32 9,i32 9)
	; IF IntNEq(10,0)
	%r219 = icmp ne i64 21, 1
	br i1 %r219, label %then_0170, label %else_016F
else_016F:
	; LET _t0011011B = call _mll_fail ("Remainder by zero")
	; emitCall: @_mll_fail (@_slit_14) ;; live = {%r218, %i215, %r217}
	%r236 = bitcast [4 x i64] addrspace(1)* @_slit_14 to i64 addrspace(1)*
	%r237 = call token (i64,i32,void (i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_voidp1i64f(i64 0,i32 0,
		void (i64 addrspace(1)*)* @_mll_fail,
		i32 1,i32 0,
		i64 addrspace(1)* %r236,
		i32 0,i32 0,
		i64 addrspace(1)* %r218, i64 addrspace(1)* %r217)
	%r238 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r237,i32 8,i32 8)
	%r239 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r237,i32 9,i32 9)
	br label %join_0171
then_0170:
	; LET _t00100116 = IntMod (i0114,10)
	%r220 = ashr i64 %i215, 1
	%r221 = srem i64 %r220, 10
	%r222 = shl i64 %r221, 1
	%r223 = add i64 %r222, 1
	br label %join_0171
join_0171:
	%_t0009224 = phi i64 [ 1, %else_016F ], [ %r223, %then_0170 ]
	%intToString225 = phi i64 addrspace(1)* [ %r238, %else_016F ], [ %r218, %then_0170 ]
	%i226 = phi i64 [ %i215, %else_016F ], [ %i215, %then_0170 ]
	%_t0004227 = phi i64 addrspace(1)* [ %r239, %else_016F ], [ %r217, %then_0170 ]
	; LET _t00080110 = apply intToString009100C0 (intToString010D,_t0009010C)
	; emitCall: @intToString0091 (%intToString225, %_t0009224) ;; live = {%_t0009224, %intToString225, %_t0004227}
	%r228 = call token (i64,i32,i64 addrspace(1)* (i64 addrspace(1)*,i64)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64p1i64i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64 addrspace(1)*,i64)* @intToString0091,
		i32 2,i32 0,
		i64 addrspace(1)* %intToString225, i64 %_t0009224,
		i32 0,i32 0,
		i64 addrspace(1)* %intToString225, i64 addrspace(1)* %_t0004227)
	%r229 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r228)
	%r230 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r228,i32 9,i32 9)
	%r231 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r228,i32 10,i32 10)
	; LET _t00120111 = call _mll_concat (_t0004010F,_t00080110)
	; emitCall: @_mll_concat (%r231, %r229) ;; live = {%r231, %r229}
	%r232 = call token (i64,i32,i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64p1i64p1i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)* @_mll_concat,
		i32 2,i32 0,
		i64 addrspace(1)* %r231, i64 addrspace(1)* %r229,
		i32 0,i32 0,
		i64 addrspace(1)* %r231, i64 addrspace(1)* %r229)
	%r233 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r232)
	%r234 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r232,i32 9,i32 9)
	%r235 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r232,i32 10,i32 10)
	ret i64 addrspace(1)* %r233
then_0172:
	%r207 = bitcast [2 x i64] addrspace(1)* @_slit_13 to i64 addrspace(1)*
	ret i64 addrspace(1)* %r207
then_0173:
	%r205 = bitcast [2 x i64] addrspace(1)* @_slit_12 to i64 addrspace(1)*
	ret i64 addrspace(1)* %r205
then_0174:
	%r203 = bitcast [2 x i64] addrspace(1)* @_slit_11 to i64 addrspace(1)*
	ret i64 addrspace(1)* %r203
then_0175:
	%r201 = bitcast [2 x i64] addrspace(1)* @_slit_10 to i64 addrspace(1)*
	ret i64 addrspace(1)* %r201
then_0176:
	%r199 = bitcast [2 x i64] addrspace(1)* @_slit_9 to i64 addrspace(1)*
	ret i64 addrspace(1)* %r199
then_0177:
	%r197 = bitcast [2 x i64] addrspace(1)* @_slit_8 to i64 addrspace(1)*
	ret i64 addrspace(1)* %r197
then_0178:
	%r195 = bitcast [2 x i64] addrspace(1)* @_slit_7 to i64 addrspace(1)*
	ret i64 addrspace(1)* %r195
then_0179:
	%r193 = bitcast [2 x i64] addrspace(1)* @_slit_6 to i64 addrspace(1)*
	ret i64 addrspace(1)* %r193
then_017A:
	%r191 = bitcast [2 x i64] addrspace(1)* @_slit_5 to i64 addrspace(1)*
	ret i64 addrspace(1)* %r191
then_017B:
	%r189 = bitcast [2 x i64] addrspace(1)* @_slit_4 to i64 addrspace(1)*
	ret i64 addrspace(1)* %r189
then_017C:
	; LET _t000200C4 = IntNeg (i00C3)
	%r180 = sub i64 2, %i178
	; LET _t000100C5 = apply intToString009100C0 (intToString00C2,_t000200C4)
	; emitCall: @intToString0091 (%intToString_clos177, %r180) ;; live = {%intToString_clos177, %r180}
	%r181 = call token (i64,i32,i64 addrspace(1)* (i64 addrspace(1)*,i64)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64p1i64i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64 addrspace(1)*,i64)* @intToString0091,
		i32 2,i32 0,
		i64 addrspace(1)* %intToString_clos177, i64 %r180,
		i32 0,i32 0,
		i64 addrspace(1)* %intToString_clos177)
	%r182 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r181)
	%r183 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r181,i32 9,i32 9)
	; LET _t000300C6 = call _mll_concat ("-",_t000100C5)
	; emitCall: @_mll_concat (@_slit_3, %r182) ;; live = {%r182}
	%r184 = bitcast [2 x i64] addrspace(1)* @_slit_3 to i64 addrspace(1)*
	%r185 = call token (i64,i32,i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64p1i64p1i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)* @_mll_concat,
		i32 2,i32 0,
		i64 addrspace(1)* %r184, i64 addrspace(1)* %r182,
		i32 0,i32 0,
		i64 addrspace(1)* %r182)
	%r186 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r185)
	%r187 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r185,i32 9,i32 9)
	ret i64 addrspace(1)* %r186
}


declare i64 addrspace(1)* @_mll_alloc(i64)
declare i64 addrspace(1)* @_mll_concat(i64 addrspace(1)*,i64 addrspace(1)*)
declare void @_mll_exit(i64)
declare void @_mll_fail(i64 addrspace(1)*)
declare void @_mll_print(i64 addrspace(1)*)
declare i64 addrspace(1)* @_mll_str_chr(i64)
@_slit_0 = global [2 x i64] [
	i64 11,
	i64 139391623526
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
