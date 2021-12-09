define fastcc i64 @_mll_entry(i64 addrspace(1)* %arguments1) gc "statepoint-example" {
entry_016D:
	; LET intToString00CA = alloc  {intToString009800CD}
	; emitCall: @_mll_alloc (1) ;; live = {}
	%r2 = call token (i64,i32,i64 addrspace(1)* (i64)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64)* @_mll_alloc,
		i32 1,i32 0,
		i64 1,
		i32 0,i32 0)
	%r3 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r2)
	%r4 = getelementptr i64, i64 addrspace(1)* %r3, i32 0
	%r5 = ptrtoint i64 addrspace(1)* (i64 addrspace(1)*,i64)* @intToString0098 to i64
	store i64 %r5, i64 addrspace(1)* %r4
	; LET y0131 = alloc  {y00A60134}
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
	%r10 = ptrtoint i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)* @y00A6 to i64
	store i64 %r10, i64 addrspace(1)* %r9
	; LET fibY013F = alloc  {fibY00AC0142}
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
	%r16 = ptrtoint i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)* @fibY00AC to i64
	store i64 %r16, i64 addrspace(1)* %r15
	; LET y_cp015F = #0(y0131)
	%r17 = bitcast i64 addrspace(1)* %r14 to i64 addrspace(1)* addrspace(1)*
	%r18 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r17, i32 0
	%r19 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r18
	; LET _t0022015E = apply y_cp015F (y0131,fibY013F)
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
	; LET _t0022_cp0161 = #0(_t0022015E)
	%r28 = bitcast i64 addrspace(1)* %r23 to i64 addrspace(1)* addrspace(1)*
	%r29 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r28, i32 0
	%r30 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r29
	; LET fib0160 = apply _t0022_cp0161 (_t0022015E,0)
	%r31 = ptrtoint i64 addrspace(1)* %r30 to i64
	%r32 = inttoptr i64 %r31 to i64 addrspace(1)* (i64 addrspace(1)*,i64)*
	; emitCall: %r32 (%r23, 1) ;; live = {%r24, %r23, %r30}
	%r33 = call token (i64,i32,i64 addrspace(1)* (i64 addrspace(1)*,i64)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64p1i64i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64 addrspace(1)*,i64)* %r32,
		i32 2,i32 0,
		i64 addrspace(1)* %r23, i64 1,
		i32 0,i32 0,
		i64 addrspace(1)* %r24, i64 addrspace(1)* %r23, i64 addrspace(1)* %r30)
	%r34 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r33)
	%r35 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r33,i32 9,i32 9)
	%r36 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r33,i32 10,i32 10)
	%r37 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r33,i32 11,i32 11)
	; LET fib_cp0163 = #0(fib0160)
	%r38 = bitcast i64 addrspace(1)* %r34 to i64 addrspace(1)* addrspace(1)*
	%r39 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r38, i32 0
	%r40 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r39
	; LET fib_n0162 = apply fib_cp0163 (fib0160,20)
	%r41 = ptrtoint i64 addrspace(1)* %r40 to i64
	%r42 = inttoptr i64 %r41 to i64 addrspace(1)* (i64 addrspace(1)*,i64)*
	; emitCall: %r42 (%r34, 41) ;; live = {%r35, %r34, %r40}
	%r43 = call token (i64,i32,i64 addrspace(1)* (i64 addrspace(1)*,i64)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64p1i64i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64 addrspace(1)*,i64)* %r42,
		i32 2,i32 0,
		i64 addrspace(1)* %r34, i64 41,
		i32 0,i32 0,
		i64 addrspace(1)* %r35, i64 addrspace(1)* %r34, i64 addrspace(1)* %r40)
	%r44 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r43)
	%r45 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r43,i32 9,i32 9)
	%r46 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r43,i32 10,i32 10)
	%r47 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r43,i32 11,i32 11)
	; LET tpl0164 = call _mll_print ("fib ")
	; emitCall: @_mll_print (@_slit_0) ;; live = {%r45, %r44}
	%r48 = bitcast [2 x i64] addrspace(1)* @_slit_0 to i64 addrspace(1)*
	%r49 = call token (i64,i32,void (i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_voidp1i64f(i64 0,i32 0,
		void (i64 addrspace(1)*)* @_mll_print,
		i32 1,i32 0,
		i64 addrspace(1)* %r48,
		i32 0,i32 0,
		i64 addrspace(1)* %r45, i64 addrspace(1)* %r44)
	%r50 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r49,i32 8,i32 8)
	%r51 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r49,i32 9,i32 9)
	; LET intToString_cp0166 = #0(intToString00CA)
	%r52 = bitcast i64 addrspace(1)* %r50 to i64 addrspace(1)* addrspace(1)*
	%r53 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r52, i32 0
	%r54 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r53
	; LET _t00240165 = apply intToString_cp0166 (intToString00CA,20)
	%r55 = ptrtoint i64 addrspace(1)* %r54 to i64
	%r56 = inttoptr i64 %r55 to i64 addrspace(1)* (i64 addrspace(1)*,i64)*
	; emitCall: %r56 (%r50, 41) ;; live = {%r50, %r51, %r54}
	%r57 = call token (i64,i32,i64 addrspace(1)* (i64 addrspace(1)*,i64)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64p1i64i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64 addrspace(1)*,i64)* %r56,
		i32 2,i32 0,
		i64 addrspace(1)* %r50, i64 41,
		i32 0,i32 0,
		i64 addrspace(1)* %r50, i64 addrspace(1)* %r51, i64 addrspace(1)* %r54)
	%r58 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r57)
	%r59 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r57,i32 9,i32 9)
	%r60 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r57,i32 10,i32 10)
	%r61 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r57,i32 11,i32 11)
	; LET tpl0167 = call _mll_print (_t00240165)
	; emitCall: @_mll_print (%r58) ;; live = {%r59, %r60, %r58}
	%r62 = call token (i64,i32,void (i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_voidp1i64f(i64 0,i32 0,
		void (i64 addrspace(1)*)* @_mll_print,
		i32 1,i32 0,
		i64 addrspace(1)* %r58,
		i32 0,i32 0,
		i64 addrspace(1)* %r59, i64 addrspace(1)* %r60, i64 addrspace(1)* %r58)
	%r63 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r62,i32 8,i32 8)
	%r64 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r62,i32 9,i32 9)
	%r65 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r62,i32 10,i32 10)
	; LET tpl0168 = call _mll_print (" = ")
	; emitCall: @_mll_print (@_slit_1) ;; live = {%r63, %r64}
	%r66 = bitcast [2 x i64] addrspace(1)* @_slit_1 to i64 addrspace(1)*
	%r67 = call token (i64,i32,void (i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_voidp1i64f(i64 0,i32 0,
		void (i64 addrspace(1)*)* @_mll_print,
		i32 1,i32 0,
		i64 addrspace(1)* %r66,
		i32 0,i32 0,
		i64 addrspace(1)* %r63, i64 addrspace(1)* %r64)
	%r68 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r67,i32 8,i32 8)
	%r69 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r67,i32 9,i32 9)
	; LET intToString_cp016A = #0(intToString00CA)
	%r70 = bitcast i64 addrspace(1)* %r68 to i64 addrspace(1)* addrspace(1)*
	%r71 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r70, i32 0
	%r72 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r71
	; LET _t00250169 = apply intToString_cp016A (intToString00CA,fib_n0162)
	%r73 = ptrtoint i64 addrspace(1)* %r72 to i64
	%r74 = inttoptr i64 %r73 to i64 addrspace(1)* (i64 addrspace(1)*,i64)*
	%r75 = ptrtoint i64 addrspace(1)* %r69 to i64
	; emitCall: %r74 (%r68, %r75) ;; live = {%r68, %r69, %r72}
	%r76 = call token (i64,i32,i64 addrspace(1)* (i64 addrspace(1)*,i64)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64p1i64i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64 addrspace(1)*,i64)* %r74,
		i32 2,i32 0,
		i64 addrspace(1)* %r68, i64 %r75,
		i32 0,i32 0,
		i64 addrspace(1)* %r68, i64 addrspace(1)* %r69, i64 addrspace(1)* %r72)
	%r77 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r76)
	%r78 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r76,i32 9,i32 9)
	%r79 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r76,i32 10,i32 10)
	%r80 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r76,i32 11,i32 11)
	; LET tpl016B = call _mll_print (_t00250169)
	; emitCall: @_mll_print (%r77) ;; live = {%r77}
	%r81 = call token (i64,i32,void (i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_voidp1i64f(i64 0,i32 0,
		void (i64 addrspace(1)*)* @_mll_print,
		i32 1,i32 0,
		i64 addrspace(1)* %r77,
		i32 0,i32 0,
		i64 addrspace(1)* %r77)
	%r82 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r81,i32 8,i32 8)
	; LET tpl016C = call _mll_print ("\n")
	; emitCall: @_mll_print (@_slit_2) ;; live = {}
	%r83 = bitcast [2 x i64] addrspace(1)* @_slit_2 to i64 addrspace(1)*
	%r84 = call token (i64,i32,void (i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_voidp1i64f(i64 0,i32 0,
		void (i64 addrspace(1)*)* @_mll_print,
		i32 1,i32 0,
		i64 addrspace(1)* %r83,
		i32 0,i32 0)
	ret i64 1
}

define fastcc i64 addrspace(1)* @fibY00AC(i64 addrspace(1)* %fibY_clos85,i64 addrspace(1)* %fib86) gc "statepoint-example" {
entry_016E:
	; LET fibY10143 = alloc  {fibY100AE0146,fib0140}
	; emitCall: @_mll_alloc (2) ;; live = {%fib86}
	%r87 = call token (i64,i32,i64 addrspace(1)* (i64)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64)* @_mll_alloc,
		i32 1,i32 0,
		i64 2,
		i32 0,i32 0,
		i64 addrspace(1)* %fib86)
	%r88 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r87)
	%r89 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r87,i32 8,i32 8)
	%r90 = getelementptr i64, i64 addrspace(1)* %r88, i32 0
	%r91 = ptrtoint i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)* @fibY100AE to i64
	store i64 %r91, i64 addrspace(1)* %r90
	%r92 = getelementptr i64, i64 addrspace(1)* %r88, i32 1
	%r93 = ptrtoint i64 addrspace(1)* %r89 to i64
	store i64 %r93, i64 addrspace(1)* %r92
	ret i64 addrspace(1)* %r88
}

define fastcc i64 addrspace(1)* @fibY100AE(i64 addrspace(1)* %fibY1_clos94,i64 addrspace(1)* %z95) gc "statepoint-example" {
entry_016F:
	; LET fib0147 = #1(fibY1_clos0145)
	%r96 = bitcast i64 addrspace(1)* %fibY1_clos94 to i64 addrspace(1)* addrspace(1)*
	%r97 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r96, i32 1
	%r98 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r97
	; LET fibY20148 = alloc  {fibY200B0014B,fib0147,z0144}
	; emitCall: @_mll_alloc (3) ;; live = {%z95, %r98}
	%r99 = call token (i64,i32,i64 addrspace(1)* (i64)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64)* @_mll_alloc,
		i32 1,i32 0,
		i64 3,
		i32 0,i32 0,
		i64 addrspace(1)* %z95, i64 addrspace(1)* %r98)
	%r100 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r99)
	%r101 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r99,i32 8,i32 8)
	%r102 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r99,i32 9,i32 9)
	%r103 = getelementptr i64, i64 addrspace(1)* %r100, i32 0
	%r104 = ptrtoint i64 (i64 addrspace(1)*,i64)* @fibY200B0 to i64
	store i64 %r104, i64 addrspace(1)* %r103
	%r105 = getelementptr i64, i64 addrspace(1)* %r100, i32 1
	%r106 = ptrtoint i64 addrspace(1)* %r102 to i64
	store i64 %r106, i64 addrspace(1)* %r105
	%r107 = getelementptr i64, i64 addrspace(1)* %r100, i32 2
	%r108 = ptrtoint i64 addrspace(1)* %r101 to i64
	store i64 %r108, i64 addrspace(1)* %r107
	ret i64 addrspace(1)* %r100
}

define fastcc i64 @fibY200B0(i64 addrspace(1)* %fibY2_clos109,i64 %n110) gc "statepoint-example" {
entry_0170:
	; LET fib014C = #1(fibY2_clos014A)
	%r111 = bitcast i64 addrspace(1)* %fibY2_clos109 to i64 addrspace(1)* addrspace(1)*
	%r112 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r111, i32 1
	%r113 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r112
	; LET z014D = #2(fibY2_clos014A)
	%r114 = bitcast i64 addrspace(1)* %fibY2_clos109 to i64 addrspace(1)* addrspace(1)*
	%r115 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r114, i32 2
	%r116 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r115
	; IF IntLte(n0149,1)
	%r117 = icmp sle i64 %n110, 3
	br i1 %r117, label %then_0172, label %else_0171
else_0171:
	; LET fib_cp0154 = #0(fib0150)
	%r118 = bitcast i64 addrspace(1)* %r113 to i64 addrspace(1)* addrspace(1)*
	%r119 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r118, i32 0
	%r120 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r119
	; LET _t00160153 = apply fib_cp0154 (fib0150,z0151)
	%r121 = ptrtoint i64 addrspace(1)* %r120 to i64
	%r122 = inttoptr i64 %r121 to i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)*
	; emitCall: %r122 (%r113, %r116) ;; live = {%r113, %r116, %n110, %r120}
	%r123 = call token (i64,i32,i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64p1i64p1i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)* %r122,
		i32 2,i32 0,
		i64 addrspace(1)* %r113, i64 addrspace(1)* %r116,
		i32 0,i32 0,
		i64 addrspace(1)* %r113, i64 addrspace(1)* %r116, i64 addrspace(1)* %r120)
	%r124 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r123)
	%r125 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r123,i32 9,i32 9)
	%r126 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r123,i32 10,i32 10)
	%r127 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r123,i32 11,i32 11)
	; LET _t00170155 = IntSub (n0152,1)
	%r128 = sub i64 %n110, 2
	; LET _t0016_cp0157 = #0(_t00160153)
	%r129 = bitcast i64 addrspace(1)* %r124 to i64 addrspace(1)* addrspace(1)*
	%r130 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r129, i32 0
	%r131 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r130
	; LET _t00150156 = apply _t0016_cp0157 (_t00160153,_t00170155)
	%r132 = ptrtoint i64 addrspace(1)* %r131 to i64
	%r133 = inttoptr i64 %r132 to i64 (i64 addrspace(1)*,i64)*
	; emitCall: %r133 (%r124, %r128) ;; live = {%r125, %r126, %n110, %r124, %r128, %r131}
	%r134 = call token (i64,i32,i64 (i64 addrspace(1)*,i64)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_i64p1i64i64f(i64 0,i32 0,
		i64 (i64 addrspace(1)*,i64)* %r133,
		i32 2,i32 0,
		i64 addrspace(1)* %r124, i64 %r128,
		i32 0,i32 0,
		i64 addrspace(1)* %r125, i64 addrspace(1)* %r126, i64 addrspace(1)* %r124, i64 addrspace(1)* %r131)
	%r135 = call i64 @llvm.experimental.gc.result.i64(token %r134)
	%r136 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r134,i32 9,i32 9)
	%r137 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r134,i32 10,i32 10)
	%r138 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r134,i32 11,i32 11)
	%r139 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r134,i32 12,i32 12)
	; LET fib_cp0159 = #0(fib0150)
	%r140 = bitcast i64 addrspace(1)* %r136 to i64 addrspace(1)* addrspace(1)*
	%r141 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r140, i32 0
	%r142 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r141
	; LET _t00190158 = apply fib_cp0159 (fib0150,z0151)
	%r143 = ptrtoint i64 addrspace(1)* %r142 to i64
	%r144 = inttoptr i64 %r143 to i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)*
	; emitCall: %r144 (%r136, %r137) ;; live = {%r136, %r137, %n110, %r135, %r142}
	%r145 = call token (i64,i32,i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64p1i64p1i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)* %r144,
		i32 2,i32 0,
		i64 addrspace(1)* %r136, i64 addrspace(1)* %r137,
		i32 0,i32 0,
		i64 addrspace(1)* %r136, i64 addrspace(1)* %r137, i64 addrspace(1)* %r142)
	%r146 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r145)
	%r147 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r145,i32 9,i32 9)
	%r148 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r145,i32 10,i32 10)
	%r149 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r145,i32 11,i32 11)
	; LET _t0020015A = IntSub (n0152,2)
	%r150 = sub i64 %n110, 4
	; LET _t0019_cp015C = #0(_t00190158)
	%r151 = bitcast i64 addrspace(1)* %r146 to i64 addrspace(1)* addrspace(1)*
	%r152 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r151, i32 0
	%r153 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r152
	; LET _t0018015B = apply _t0019_cp015C (_t00190158,_t0020015A)
	%r154 = ptrtoint i64 addrspace(1)* %r153 to i64
	%r155 = inttoptr i64 %r154 to i64 (i64 addrspace(1)*,i64)*
	; emitCall: %r155 (%r146, %r150) ;; live = {%r135, %r146, %r150, %r153}
	%r156 = call token (i64,i32,i64 (i64 addrspace(1)*,i64)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_i64p1i64i64f(i64 0,i32 0,
		i64 (i64 addrspace(1)*,i64)* %r155,
		i32 2,i32 0,
		i64 addrspace(1)* %r146, i64 %r150,
		i32 0,i32 0,
		i64 addrspace(1)* %r146, i64 addrspace(1)* %r153)
	%r157 = call i64 @llvm.experimental.gc.result.i64(token %r156)
	%r158 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r156,i32 9,i32 9)
	%r159 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r156,i32 10,i32 10)
	; LET _t0021015D = IntAdd (_t00150156,_t0018015B)
	%r160 = sub i64 %r135, 1
	%r161 = add i64 %r160, %r157
	ret i64 %r161
then_0172:
	ret i64 3
}

define fastcc i64 addrspace(1)* @y00A6(i64 addrspace(1)* %y_clos162,i64 addrspace(1)* %f163) gc "statepoint-example" {
entry_0173:
	; LET g0135 = alloc  {g00A80138,y_clos0133,f0132}
	; emitCall: @_mll_alloc (3) ;; live = {%f163, %y_clos162}
	%r164 = call token (i64,i32,i64 addrspace(1)* (i64)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64)* @_mll_alloc,
		i32 1,i32 0,
		i64 3,
		i32 0,i32 0,
		i64 addrspace(1)* %f163, i64 addrspace(1)* %y_clos162)
	%r165 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r164)
	%r166 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r164,i32 8,i32 8)
	%r167 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r164,i32 9,i32 9)
	%r168 = getelementptr i64, i64 addrspace(1)* %r165, i32 0
	%r169 = ptrtoint i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)* @g00A8 to i64
	store i64 %r169, i64 addrspace(1)* %r168
	%r170 = getelementptr i64, i64 addrspace(1)* %r165, i32 1
	%r171 = ptrtoint i64 addrspace(1)* %r167 to i64
	store i64 %r171, i64 addrspace(1)* %r170
	%r172 = getelementptr i64, i64 addrspace(1)* %r165, i32 2
	%r173 = ptrtoint i64 addrspace(1)* %r166 to i64
	store i64 %r173, i64 addrspace(1)* %r172
	; LET f_cp013E = #0(f0132)
	%r174 = bitcast i64 addrspace(1)* %r166 to i64 addrspace(1)* addrspace(1)*
	%r175 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r174, i32 0
	%r176 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r175
	; TAIL_APPLY f_cp013E(f0132,g0135)
	%r177 = ptrtoint i64 addrspace(1)* %r176 to i64
	%r178 = inttoptr i64 %r177 to i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)*
	; emitTailCall: %r178 (%r166, %r165)
	%r179 = tail call i64 addrspace(1)* %r178 (i64 addrspace(1)* %r166, i64 addrspace(1)* %r165)
	ret i64 addrspace(1)* %r179
}

define fastcc i64 addrspace(1)* @g00A8(i64 addrspace(1)* %g_clos180,i64 addrspace(1)* %z181) gc "statepoint-example" {
entry_0174:
	; LET y0139 = #1(g_clos0137)
	%r182 = bitcast i64 addrspace(1)* %g_clos180 to i64 addrspace(1)* addrspace(1)*
	%r183 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r182, i32 1
	%r184 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r183
	; LET f013A = #2(g_clos0137)
	%r185 = bitcast i64 addrspace(1)* %g_clos180 to i64 addrspace(1)* addrspace(1)*
	%r186 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r185, i32 2
	%r187 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r186
	; LET y_cp013C = #0(y0139)
	%r188 = bitcast i64 addrspace(1)* %r184 to i64 addrspace(1)* addrspace(1)*
	%r189 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r188, i32 0
	%r190 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r189
	; LET _t0013013B = apply y_cp013C (y0139,f013A)
	%r191 = ptrtoint i64 addrspace(1)* %r190 to i64
	%r192 = inttoptr i64 %r191 to i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)*
	; emitCall: %r192 (%r184, %r187) ;; live = {%r184, %r187, %r190}
	%r193 = call token (i64,i32,i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64p1i64p1i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)* %r192,
		i32 2,i32 0,
		i64 addrspace(1)* %r184, i64 addrspace(1)* %r187,
		i32 0,i32 0,
		i64 addrspace(1)* %r184, i64 addrspace(1)* %r187, i64 addrspace(1)* %r190)
	%r194 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r193)
	%r195 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r193,i32 9,i32 9)
	%r196 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r193,i32 10,i32 10)
	%r197 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r193,i32 11,i32 11)
	; LET _t0013_cp013D = #0(_t0013013B)
	%r198 = bitcast i64 addrspace(1)* %r194 to i64 addrspace(1)* addrspace(1)*
	%r199 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r198, i32 0
	%r200 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r199
	; TAIL_APPLY _t0013_cp013D(_t0013013B,0)
	%r201 = ptrtoint i64 addrspace(1)* %r200 to i64
	%r202 = inttoptr i64 %r201 to i64 addrspace(1)* (i64 addrspace(1)*,i64)*
	; emitTailCall: %r202 (%r194, 1)
	%r203 = tail call i64 addrspace(1)* %r202 (i64 addrspace(1)* %r194, i64 1)
	ret i64 addrspace(1)* %r203
}

define fastcc i64 addrspace(1)* @intToString0098(i64 addrspace(1)* %intToString_clos204,i64 %i205) gc "statepoint-example" {
entry_0175:
	; IF IntLt(i00CB,0)
	%r206 = icmp slt i64 %i205, 1
	br i1 %r206, label %then_0191, label %else_0176
else_0176:
	; IF IntEq(i00D6,0)
	%r215 = icmp eq i64 %i205, 1
	br i1 %r215, label %then_0190, label %else_0177
else_0177:
	; IF IntEq(i00DC,1)
	%r217 = icmp eq i64 %i205, 3
	br i1 %r217, label %then_018F, label %else_0178
else_0178:
	; IF IntEq(i00E2,2)
	%r219 = icmp eq i64 %i205, 5
	br i1 %r219, label %then_018E, label %else_0179
else_0179:
	; IF IntEq(i00E8,3)
	%r221 = icmp eq i64 %i205, 7
	br i1 %r221, label %then_018D, label %else_017A
else_017A:
	; IF IntEq(i00EE,4)
	%r223 = icmp eq i64 %i205, 9
	br i1 %r223, label %then_018C, label %else_017B
else_017B:
	; IF IntEq(i00F4,5)
	%r225 = icmp eq i64 %i205, 11
	br i1 %r225, label %then_018B, label %else_017C
else_017C:
	; IF IntEq(i00FA,6)
	%r227 = icmp eq i64 %i205, 13
	br i1 %r227, label %then_018A, label %else_017D
else_017D:
	; IF IntEq(i0100,7)
	%r229 = icmp eq i64 %i205, 15
	br i1 %r229, label %then_0189, label %else_017E
else_017E:
	; IF IntEq(i0106,8)
	%r231 = icmp eq i64 %i205, 17
	br i1 %r231, label %then_0188, label %else_017F
else_017F:
	; IF IntEq(i010C,9)
	%r233 = icmp eq i64 %i205, 19
	br i1 %r233, label %then_0187, label %else_0180
else_0180:
	; IF IntNEq(10,0)
	%r235 = icmp ne i64 21, 1
	br i1 %r235, label %then_0182, label %else_0181
else_0181:
	; LET _t00070130 = call _mll_fail ("Divide by zero")
	; emitCall: @_mll_fail (@_slit_15) ;; live = {%intToString_clos204, %i205}
	%r267 = bitcast [3 x i64] addrspace(1)* @_slit_15 to i64 addrspace(1)*
	%r268 = call token (i64,i32,void (i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_voidp1i64f(i64 0,i32 0,
		void (i64 addrspace(1)*)* @_mll_fail,
		i32 1,i32 0,
		i64 addrspace(1)* %r267,
		i32 0,i32 0,
		i64 addrspace(1)* %intToString_clos204)
	%r269 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r268,i32 8,i32 8)
	br label %join_0183
then_0182:
	; LET _t0006012C = IntDiv (i012B,10)
	%r236 = ashr i64 %i205, 1
	%r237 = sdiv i64 %r236, 10
	%r238 = shl i64 %r237, 1
	%r239 = add i64 %r238, 1
	br label %join_0183
join_0183:
	%_t0005240 = phi i64 [ 1, %else_0181 ], [ %r239, %then_0182 ]
	%intToString241 = phi i64 addrspace(1)* [ %r269, %else_0181 ], [ %intToString_clos204, %then_0182 ]
	%i242 = phi i64 [ %i205, %else_0181 ], [ %i205, %then_0182 ]
	; LET _t00040117 = apply intToString009800CD (intToString0115,_t00050114)
	; emitCall: @intToString0098 (%intToString241, %_t0005240) ;; live = {%_t0005240, %intToString241, %i242}
	%r243 = call token (i64,i32,i64 addrspace(1)* (i64 addrspace(1)*,i64)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64p1i64i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64 addrspace(1)*,i64)* @intToString0098,
		i32 2,i32 0,
		i64 addrspace(1)* %intToString241, i64 %_t0005240,
		i32 0,i32 0,
		i64 addrspace(1)* %intToString241)
	%r244 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r243)
	%r245 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r243,i32 9,i32 9)
	; IF IntNEq(10,0)
	%r246 = icmp ne i64 21, 1
	br i1 %r246, label %then_0185, label %else_0184
else_0184:
	; LET _t00110128 = call _mll_fail ("Remainder by zero")
	; emitCall: @_mll_fail (@_slit_14) ;; live = {%r245, %i242, %r244}
	%r263 = bitcast [4 x i64] addrspace(1)* @_slit_14 to i64 addrspace(1)*
	%r264 = call token (i64,i32,void (i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_voidp1i64f(i64 0,i32 0,
		void (i64 addrspace(1)*)* @_mll_fail,
		i32 1,i32 0,
		i64 addrspace(1)* %r263,
		i32 0,i32 0,
		i64 addrspace(1)* %r245, i64 addrspace(1)* %r244)
	%r265 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r264,i32 8,i32 8)
	%r266 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r264,i32 9,i32 9)
	br label %join_0186
then_0185:
	; LET _t00100123 = IntMod (i0121,10)
	%r247 = ashr i64 %i242, 1
	%r248 = srem i64 %r247, 10
	%r249 = shl i64 %r248, 1
	%r250 = add i64 %r249, 1
	br label %join_0186
join_0186:
	%_t0009251 = phi i64 [ 1, %else_0184 ], [ %r250, %then_0185 ]
	%intToString252 = phi i64 addrspace(1)* [ %r265, %else_0184 ], [ %r245, %then_0185 ]
	%i253 = phi i64 [ %i242, %else_0184 ], [ %i242, %then_0185 ]
	%_t0004254 = phi i64 addrspace(1)* [ %r266, %else_0184 ], [ %r244, %then_0185 ]
	; LET _t0008011D = apply intToString009800CD (intToString011A,_t00090119)
	; emitCall: @intToString0098 (%intToString252, %_t0009251) ;; live = {%_t0009251, %intToString252, %_t0004254}
	%r255 = call token (i64,i32,i64 addrspace(1)* (i64 addrspace(1)*,i64)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64p1i64i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64 addrspace(1)*,i64)* @intToString0098,
		i32 2,i32 0,
		i64 addrspace(1)* %intToString252, i64 %_t0009251,
		i32 0,i32 0,
		i64 addrspace(1)* %intToString252, i64 addrspace(1)* %_t0004254)
	%r256 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r255)
	%r257 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r255,i32 9,i32 9)
	%r258 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r255,i32 10,i32 10)
	; LET _t0012011E = call _mll_concat (_t0004011C,_t0008011D)
	; emitCall: @_mll_concat (%r258, %r256) ;; live = {%r258, %r256}
	%r259 = call token (i64,i32,i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64p1i64p1i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)* @_mll_concat,
		i32 2,i32 0,
		i64 addrspace(1)* %r258, i64 addrspace(1)* %r256,
		i32 0,i32 0,
		i64 addrspace(1)* %r258, i64 addrspace(1)* %r256)
	%r260 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r259)
	%r261 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r259,i32 9,i32 9)
	%r262 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r259,i32 10,i32 10)
	ret i64 addrspace(1)* %r260
then_0187:
	%r234 = bitcast [2 x i64] addrspace(1)* @_slit_13 to i64 addrspace(1)*
	ret i64 addrspace(1)* %r234
then_0188:
	%r232 = bitcast [2 x i64] addrspace(1)* @_slit_12 to i64 addrspace(1)*
	ret i64 addrspace(1)* %r232
then_0189:
	%r230 = bitcast [2 x i64] addrspace(1)* @_slit_11 to i64 addrspace(1)*
	ret i64 addrspace(1)* %r230
then_018A:
	%r228 = bitcast [2 x i64] addrspace(1)* @_slit_10 to i64 addrspace(1)*
	ret i64 addrspace(1)* %r228
then_018B:
	%r226 = bitcast [2 x i64] addrspace(1)* @_slit_9 to i64 addrspace(1)*
	ret i64 addrspace(1)* %r226
then_018C:
	%r224 = bitcast [2 x i64] addrspace(1)* @_slit_8 to i64 addrspace(1)*
	ret i64 addrspace(1)* %r224
then_018D:
	%r222 = bitcast [2 x i64] addrspace(1)* @_slit_7 to i64 addrspace(1)*
	ret i64 addrspace(1)* %r222
then_018E:
	%r220 = bitcast [2 x i64] addrspace(1)* @_slit_6 to i64 addrspace(1)*
	ret i64 addrspace(1)* %r220
then_018F:
	%r218 = bitcast [2 x i64] addrspace(1)* @_slit_5 to i64 addrspace(1)*
	ret i64 addrspace(1)* %r218
then_0190:
	%r216 = bitcast [2 x i64] addrspace(1)* @_slit_4 to i64 addrspace(1)*
	ret i64 addrspace(1)* %r216
then_0191:
	; LET _t000200D1 = IntNeg (i00D0)
	%r207 = sub i64 2, %i205
	; LET _t000100D2 = apply intToString009800CD (intToString00CF,_t000200D1)
	; emitCall: @intToString0098 (%intToString_clos204, %r207) ;; live = {%intToString_clos204, %r207}
	%r208 = call token (i64,i32,i64 addrspace(1)* (i64 addrspace(1)*,i64)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64p1i64i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64 addrspace(1)*,i64)* @intToString0098,
		i32 2,i32 0,
		i64 addrspace(1)* %intToString_clos204, i64 %r207,
		i32 0,i32 0,
		i64 addrspace(1)* %intToString_clos204)
	%r209 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r208)
	%r210 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r208,i32 9,i32 9)
	; LET _t000300D3 = call _mll_concat ("-",_t000100D2)
	; emitCall: @_mll_concat (@_slit_3, %r209) ;; live = {%r209}
	%r211 = bitcast [2 x i64] addrspace(1)* @_slit_3 to i64 addrspace(1)*
	%r212 = call token (i64,i32,i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64p1i64p1i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)* @_mll_concat,
		i32 2,i32 0,
		i64 addrspace(1)* %r211, i64 addrspace(1)* %r209,
		i32 0,i32 0,
		i64 addrspace(1)* %r209)
	%r213 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r212)
	%r214 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r212,i32 9,i32 9)
	ret i64 addrspace(1)* %r213
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
