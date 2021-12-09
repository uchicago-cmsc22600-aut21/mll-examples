define fastcc i64 @_mll_entry(i64 addrspace(1)* %arguments1) gc "statepoint-example" {
entry_01E7:
	; LET fst0114 = alloc  {fst00D20117}
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
	%r6 = ptrtoint i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)* @fst00D2 to i64
	store i64 %r6, i64 addrspace(1)* %r5
	; LET snd011A = alloc  {snd00D6011D}
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
	%r12 = ptrtoint i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)* @snd00D6 to i64
	store i64 %r12, i64 addrspace(1)* %r11
	; LET length0120 = alloc  {length00DA0123}
	; emitCall: @_mll_alloc (1) ;; live = {%r9, %r10, %r8}
	%r13 = call token (i64,i32,i64 addrspace(1)* (i64)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64)* @_mll_alloc,
		i32 1,i32 0,
		i64 1,
		i32 0,i32 0,
		i64 addrspace(1)* %r9, i64 addrspace(1)* %r10, i64 addrspace(1)* %r8)
	%r14 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r13)
	%r15 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r13,i32 8,i32 8)
	%r16 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r13,i32 9,i32 9)
	%r17 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r13,i32 10,i32 10)
	%r18 = getelementptr i64, i64 addrspace(1)* %r14, i32 0
	%r19 = ptrtoint i64 (i64 addrspace(1)*,i64 addrspace(1)*)* @length00DA to i64
	store i64 %r19, i64 addrspace(1)* %r18
	; LET appi012E = alloc  {appi00E10131,fst0114,snd011A}
	; emitCall: @_mll_alloc (3) ;; live = {%r15, %r16, %r17, %r14}
	%r20 = call token (i64,i32,i64 addrspace(1)* (i64)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64)* @_mll_alloc,
		i32 1,i32 0,
		i64 3,
		i32 0,i32 0,
		i64 addrspace(1)* %r15, i64 addrspace(1)* %r16, i64 addrspace(1)* %r17, i64 addrspace(1)* %r14)
	%r21 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r20)
	%r22 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r20,i32 8,i32 8)
	%r23 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r20,i32 9,i32 9)
	%r24 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r20,i32 10,i32 10)
	%r25 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r20,i32 11,i32 11)
	%r26 = getelementptr i64, i64 addrspace(1)* %r21, i32 0
	%r27 = ptrtoint i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)* @appi00E1 to i64
	store i64 %r27, i64 addrspace(1)* %r26
	%r28 = getelementptr i64, i64 addrspace(1)* %r21, i32 1
	%r29 = ptrtoint i64 addrspace(1)* %r23 to i64
	store i64 %r29, i64 addrspace(1)* %r28
	%r30 = getelementptr i64, i64 addrspace(1)* %r21, i32 2
	%r31 = ptrtoint i64 addrspace(1)* %r24 to i64
	store i64 %r31, i64 addrspace(1)* %r30
	; LET intToString0163 = alloc  {intToString00F20166}
	; emitCall: @_mll_alloc (1) ;; live = {%r22, %r23, %r24, %r25, %r21}
	%r32 = call token (i64,i32,i64 addrspace(1)* (i64)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64)* @_mll_alloc,
		i32 1,i32 0,
		i64 1,
		i32 0,i32 0,
		i64 addrspace(1)* %r22, i64 addrspace(1)* %r23, i64 addrspace(1)* %r24, i64 addrspace(1)* %r25, i64 addrspace(1)* %r21)
	%r33 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r32)
	%r34 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r32,i32 8,i32 8)
	%r35 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r32,i32 9,i32 9)
	%r36 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r32,i32 10,i32 10)
	%r37 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r32,i32 11,i32 11)
	%r38 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r32,i32 12,i32 12)
	%r39 = getelementptr i64, i64 addrspace(1)* %r33, i32 0
	%r40 = ptrtoint i64 addrspace(1)* (i64 addrspace(1)*,i64)* @intToString00F2 to i64
	store i64 %r40, i64 addrspace(1)* %r39
	; LET printArg01CA = alloc  {printArg010001CD,fst0114,snd011A,intToString0163}
	; emitCall: @_mll_alloc (4) ;; live = {%r34, %r35, %r36, %r37, %r38, %r33}
	%r41 = call token (i64,i32,i64 addrspace(1)* (i64)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64)* @_mll_alloc,
		i32 1,i32 0,
		i64 4,
		i32 0,i32 0,
		i64 addrspace(1)* %r34, i64 addrspace(1)* %r35, i64 addrspace(1)* %r36, i64 addrspace(1)* %r37, i64 addrspace(1)* %r38, i64 addrspace(1)* %r33)
	%r42 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r41)
	%r43 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r41,i32 8,i32 8)
	%r44 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r41,i32 9,i32 9)
	%r45 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r41,i32 10,i32 10)
	%r46 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r41,i32 11,i32 11)
	%r47 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r41,i32 12,i32 12)
	%r48 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r41,i32 13,i32 13)
	%r49 = getelementptr i64, i64 addrspace(1)* %r42, i32 0
	%r50 = ptrtoint i64 (i64 addrspace(1)*,i64 addrspace(1)*)* @printArg0100 to i64
	store i64 %r50, i64 addrspace(1)* %r49
	%r51 = getelementptr i64, i64 addrspace(1)* %r42, i32 1
	%r52 = ptrtoint i64 addrspace(1)* %r44 to i64
	store i64 %r52, i64 addrspace(1)* %r51
	%r53 = getelementptr i64, i64 addrspace(1)* %r42, i32 2
	%r54 = ptrtoint i64 addrspace(1)* %r45 to i64
	store i64 %r54, i64 addrspace(1)* %r53
	%r55 = getelementptr i64, i64 addrspace(1)* %r42, i32 3
	%r56 = ptrtoint i64 addrspace(1)* %r48 to i64
	store i64 %r56, i64 addrspace(1)* %r55
	; LET length_cp01DD = #0(length0120)
	%r57 = bitcast i64 addrspace(1)* %r46 to i64 addrspace(1)* addrspace(1)*
	%r58 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r57, i32 0
	%r59 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r58
	; LET nArgs01DC = apply length_cp01DD (length0120,arguments0113)
	%r60 = ptrtoint i64 addrspace(1)* %r59 to i64
	%r61 = inttoptr i64 %r60 to i64 (i64 addrspace(1)*,i64 addrspace(1)*)*
	; emitCall: %r61 (%r46, %r43) ;; live = {%r43, %r46, %r47, %r48, %r42, %r59}
	%r62 = call token (i64,i32,i64 (i64 addrspace(1)*,i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_i64p1i64p1i64f(i64 0,i32 0,
		i64 (i64 addrspace(1)*,i64 addrspace(1)*)* %r61,
		i32 2,i32 0,
		i64 addrspace(1)* %r46, i64 addrspace(1)* %r43,
		i32 0,i32 0,
		i64 addrspace(1)* %r43, i64 addrspace(1)* %r46, i64 addrspace(1)* %r47, i64 addrspace(1)* %r48, i64 addrspace(1)* %r42, i64 addrspace(1)* %r59)
	%r63 = call i64 @llvm.experimental.gc.result.i64(token %r62)
	%r64 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r62,i32 9,i32 9)
	%r65 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r62,i32 10,i32 10)
	%r66 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r62,i32 11,i32 11)
	%r67 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r62,i32 12,i32 12)
	%r68 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r62,i32 13,i32 13)
	%r69 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r62,i32 14,i32 14)
	; LET intToString_cp01DF = #0(intToString0163)
	%r70 = bitcast i64 addrspace(1)* %r67 to i64 addrspace(1)* addrspace(1)*
	%r71 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r70, i32 0
	%r72 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r71
	; LET _t002701DE = apply intToString_cp01DF (intToString0163,nArgs01DC)
	%r73 = ptrtoint i64 addrspace(1)* %r72 to i64
	%r74 = inttoptr i64 %r73 to i64 addrspace(1)* (i64 addrspace(1)*,i64)*
	; emitCall: %r74 (%r67, %r63) ;; live = {%r64, %r66, %r67, %r68, %r63, %r72}
	%r75 = call token (i64,i32,i64 addrspace(1)* (i64 addrspace(1)*,i64)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64p1i64i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64 addrspace(1)*,i64)* %r74,
		i32 2,i32 0,
		i64 addrspace(1)* %r67, i64 %r63,
		i32 0,i32 0,
		i64 addrspace(1)* %r64, i64 addrspace(1)* %r66, i64 addrspace(1)* %r67, i64 addrspace(1)* %r68, i64 addrspace(1)* %r72)
	%r76 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r75)
	%r77 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r75,i32 9,i32 9)
	%r78 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r75,i32 10,i32 10)
	%r79 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r75,i32 11,i32 11)
	%r80 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r75,i32 12,i32 12)
	%r81 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r75,i32 13,i32 13)
	; LET _t002601E0 = call _mll_concat ("# args = ",_t002701DE)
	; emitCall: @_mll_concat (@_slit_0, %r76) ;; live = {%r77, %r78, %r80, %r76}
	%r82 = bitcast [3 x i64] addrspace(1)* @_slit_0 to i64 addrspace(1)*
	%r83 = call token (i64,i32,i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64p1i64p1i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)* @_mll_concat,
		i32 2,i32 0,
		i64 addrspace(1)* %r82, i64 addrspace(1)* %r76,
		i32 0,i32 0,
		i64 addrspace(1)* %r77, i64 addrspace(1)* %r78, i64 addrspace(1)* %r80, i64 addrspace(1)* %r76)
	%r84 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r83)
	%r85 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r83,i32 9,i32 9)
	%r86 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r83,i32 10,i32 10)
	%r87 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r83,i32 11,i32 11)
	%r88 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r83,i32 12,i32 12)
	; LET _t002501E1 = call _mll_concat (_t002601E0,"\n")
	; emitCall: @_mll_concat (%r84, @_slit_1) ;; live = {%r85, %r86, %r87, %r84}
	%r89 = bitcast [2 x i64] addrspace(1)* @_slit_1 to i64 addrspace(1)*
	%r90 = call token (i64,i32,i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64p1i64p1i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)* @_mll_concat,
		i32 2,i32 0,
		i64 addrspace(1)* %r84, i64 addrspace(1)* %r89,
		i32 0,i32 0,
		i64 addrspace(1)* %r85, i64 addrspace(1)* %r86, i64 addrspace(1)* %r87, i64 addrspace(1)* %r84)
	%r91 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r90)
	%r92 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r90,i32 9,i32 9)
	%r93 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r90,i32 10,i32 10)
	%r94 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r90,i32 11,i32 11)
	%r95 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r90,i32 12,i32 12)
	; LET _01E2 = call _mll_print (_t002501E1)
	; emitCall: @_mll_print (%r91) ;; live = {%r92, %r93, %r94, %r91}
	%r96 = call token (i64,i32,void (i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_voidp1i64f(i64 0,i32 0,
		void (i64 addrspace(1)*)* @_mll_print,
		i32 1,i32 0,
		i64 addrspace(1)* %r91,
		i32 0,i32 0,
		i64 addrspace(1)* %r92, i64 addrspace(1)* %r93, i64 addrspace(1)* %r94, i64 addrspace(1)* %r91)
	%r97 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r96,i32 8,i32 8)
	%r98 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r96,i32 9,i32 9)
	%r99 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r96,i32 10,i32 10)
	%r100 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r96,i32 11,i32 11)
	; LET appi_cp01E4 = #0(appi012E)
	%r101 = bitcast i64 addrspace(1)* %r98 to i64 addrspace(1)* addrspace(1)*
	%r102 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r101, i32 0
	%r103 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r102
	; LET _t002801E3 = apply appi_cp01E4 (appi012E,printArg01CA)
	%r104 = ptrtoint i64 addrspace(1)* %r103 to i64
	%r105 = inttoptr i64 %r104 to i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)*
	; emitCall: %r105 (%r98, %r99) ;; live = {%r97, %r98, %r99, %r103}
	%r106 = call token (i64,i32,i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64p1i64p1i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)* %r105,
		i32 2,i32 0,
		i64 addrspace(1)* %r98, i64 addrspace(1)* %r99,
		i32 0,i32 0,
		i64 addrspace(1)* %r97, i64 addrspace(1)* %r98, i64 addrspace(1)* %r99, i64 addrspace(1)* %r103)
	%r107 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r106)
	%r108 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r106,i32 9,i32 9)
	%r109 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r106,i32 10,i32 10)
	%r110 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r106,i32 11,i32 11)
	%r111 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r106,i32 12,i32 12)
	; LET _t0028_cp01E6 = #0(_t002801E3)
	%r112 = bitcast i64 addrspace(1)* %r107 to i64 addrspace(1)* addrspace(1)*
	%r113 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r112, i32 0
	%r114 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r113
	; LET _t000001E5 = apply _t0028_cp01E6 (_t002801E3,arguments0113)
	%r115 = ptrtoint i64 addrspace(1)* %r114 to i64
	%r116 = inttoptr i64 %r115 to i64 (i64 addrspace(1)*,i64 addrspace(1)*)*
	; emitCall: %r116 (%r107, %r108) ;; live = {%r108, %r107, %r114}
	%r117 = call token (i64,i32,i64 (i64 addrspace(1)*,i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_i64p1i64p1i64f(i64 0,i32 0,
		i64 (i64 addrspace(1)*,i64 addrspace(1)*)* %r116,
		i32 2,i32 0,
		i64 addrspace(1)* %r107, i64 addrspace(1)* %r108,
		i32 0,i32 0,
		i64 addrspace(1)* %r108, i64 addrspace(1)* %r107, i64 addrspace(1)* %r114)
	%r118 = call i64 @llvm.experimental.gc.result.i64(token %r117)
	%r119 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r117,i32 9,i32 9)
	%r120 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r117,i32 10,i32 10)
	%r121 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r117,i32 11,i32 11)
	ret i64 1
}

define fastcc i64 @printArg0100(i64 addrspace(1)* %printArg_clos122,i64 addrspace(1)* %arg123) gc "statepoint-example" {
entry_01E8:
	; LET fst01CE = #1(printArg_clos01CC)
	%r124 = bitcast i64 addrspace(1)* %printArg_clos122 to i64 addrspace(1)* addrspace(1)*
	%r125 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r124, i32 1
	%r126 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r125
	; LET snd01CF = #2(printArg_clos01CC)
	%r127 = bitcast i64 addrspace(1)* %printArg_clos122 to i64 addrspace(1)* addrspace(1)*
	%r128 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r127, i32 2
	%r129 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r128
	; LET intToString01D0 = #3(printArg_clos01CC)
	%r130 = bitcast i64 addrspace(1)* %printArg_clos122 to i64 addrspace(1)* addrspace(1)*
	%r131 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r130, i32 3
	%r132 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r131
	; LET tpl01D1 = call _mll_print ("arg ")
	; emitCall: @_mll_print (@_slit_2) ;; live = {%arg123, %r126, %r129, %r132}
	%r133 = bitcast [2 x i64] addrspace(1)* @_slit_2 to i64 addrspace(1)*
	%r134 = call token (i64,i32,void (i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_voidp1i64f(i64 0,i32 0,
		void (i64 addrspace(1)*)* @_mll_print,
		i32 1,i32 0,
		i64 addrspace(1)* %r133,
		i32 0,i32 0,
		i64 addrspace(1)* %arg123, i64 addrspace(1)* %r126, i64 addrspace(1)* %r129, i64 addrspace(1)* %r132)
	%r135 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r134,i32 8,i32 8)
	%r136 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r134,i32 9,i32 9)
	%r137 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r134,i32 10,i32 10)
	%r138 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r134,i32 11,i32 11)
	; LET fst_cp01D3 = #0(fst01CE)
	%r139 = bitcast i64 addrspace(1)* %r136 to i64 addrspace(1)* addrspace(1)*
	%r140 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r139, i32 0
	%r141 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r140
	; LET _t002201D2 = apply fst_cp01D3 (fst01CE,arg01CB)
	%r142 = ptrtoint i64 addrspace(1)* %r141 to i64
	%r143 = inttoptr i64 %r142 to i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)*
	; emitCall: %r143 (%r136, %r135) ;; live = {%r135, %r136, %r137, %r138, %r141}
	%r144 = call token (i64,i32,i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64p1i64p1i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)* %r143,
		i32 2,i32 0,
		i64 addrspace(1)* %r136, i64 addrspace(1)* %r135,
		i32 0,i32 0,
		i64 addrspace(1)* %r135, i64 addrspace(1)* %r136, i64 addrspace(1)* %r137, i64 addrspace(1)* %r138, i64 addrspace(1)* %r141)
	%r145 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r144)
	%r146 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r144,i32 9,i32 9)
	%r147 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r144,i32 10,i32 10)
	%r148 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r144,i32 11,i32 11)
	%r149 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r144,i32 12,i32 12)
	%r150 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r144,i32 13,i32 13)
	; LET intToString_cp01D5 = #0(intToString01D0)
	%r151 = bitcast i64 addrspace(1)* %r149 to i64 addrspace(1)* addrspace(1)*
	%r152 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r151, i32 0
	%r153 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r152
	; LET _t002101D4 = apply intToString_cp01D5 (intToString01D0,_t002201D2)
	%r154 = ptrtoint i64 addrspace(1)* %r153 to i64
	%r155 = inttoptr i64 %r154 to i64 addrspace(1)* (i64 addrspace(1)*,i64)*
	%r156 = ptrtoint i64 addrspace(1)* %r145 to i64
	; emitCall: %r155 (%r149, %r156) ;; live = {%r146, %r148, %r149, %r145, %r153}
	%r157 = call token (i64,i32,i64 addrspace(1)* (i64 addrspace(1)*,i64)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64p1i64i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64 addrspace(1)*,i64)* %r155,
		i32 2,i32 0,
		i64 addrspace(1)* %r149, i64 %r156,
		i32 0,i32 0,
		i64 addrspace(1)* %r146, i64 addrspace(1)* %r148, i64 addrspace(1)* %r149, i64 addrspace(1)* %r145, i64 addrspace(1)* %r153)
	%r158 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r157)
	%r159 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r157,i32 9,i32 9)
	%r160 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r157,i32 10,i32 10)
	%r161 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r157,i32 11,i32 11)
	%r162 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r157,i32 12,i32 12)
	%r163 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r157,i32 13,i32 13)
	; LET tpl01D6 = call _mll_print (_t002101D4)
	; emitCall: @_mll_print (%r158) ;; live = {%r159, %r160, %r158}
	%r164 = call token (i64,i32,void (i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_voidp1i64f(i64 0,i32 0,
		void (i64 addrspace(1)*)* @_mll_print,
		i32 1,i32 0,
		i64 addrspace(1)* %r158,
		i32 0,i32 0,
		i64 addrspace(1)* %r159, i64 addrspace(1)* %r160, i64 addrspace(1)* %r158)
	%r165 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r164,i32 8,i32 8)
	%r166 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r164,i32 9,i32 9)
	%r167 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r164,i32 10,i32 10)
	; LET tpl01D7 = call _mll_print (" = ")
	; emitCall: @_mll_print (@_slit_3) ;; live = {%r165, %r166}
	%r168 = bitcast [2 x i64] addrspace(1)* @_slit_3 to i64 addrspace(1)*
	%r169 = call token (i64,i32,void (i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_voidp1i64f(i64 0,i32 0,
		void (i64 addrspace(1)*)* @_mll_print,
		i32 1,i32 0,
		i64 addrspace(1)* %r168,
		i32 0,i32 0,
		i64 addrspace(1)* %r165, i64 addrspace(1)* %r166)
	%r170 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r169,i32 8,i32 8)
	%r171 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r169,i32 9,i32 9)
	; LET snd_cp01D9 = #0(snd01CF)
	%r172 = bitcast i64 addrspace(1)* %r171 to i64 addrspace(1)* addrspace(1)*
	%r173 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r172, i32 0
	%r174 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r173
	; LET _t002301D8 = apply snd_cp01D9 (snd01CF,arg01CB)
	%r175 = ptrtoint i64 addrspace(1)* %r174 to i64
	%r176 = inttoptr i64 %r175 to i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)*
	; emitCall: %r176 (%r171, %r170) ;; live = {%r170, %r171, %r174}
	%r177 = call token (i64,i32,i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64p1i64p1i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)* %r176,
		i32 2,i32 0,
		i64 addrspace(1)* %r171, i64 addrspace(1)* %r170,
		i32 0,i32 0,
		i64 addrspace(1)* %r170, i64 addrspace(1)* %r171, i64 addrspace(1)* %r174)
	%r178 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r177)
	%r179 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r177,i32 9,i32 9)
	%r180 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r177,i32 10,i32 10)
	%r181 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r177,i32 11,i32 11)
	; LET tpl01DA = call _mll_print (_t002301D8)
	; emitCall: @_mll_print (%r178) ;; live = {%r178}
	%r182 = call token (i64,i32,void (i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_voidp1i64f(i64 0,i32 0,
		void (i64 addrspace(1)*)* @_mll_print,
		i32 1,i32 0,
		i64 addrspace(1)* %r178,
		i32 0,i32 0,
		i64 addrspace(1)* %r178)
	%r183 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r182,i32 8,i32 8)
	; LET _t002401DB = call _mll_print ("\n")
	; emitCall: @_mll_print (@_slit_1) ;; live = {}
	%r184 = bitcast [2 x i64] addrspace(1)* @_slit_1 to i64 addrspace(1)*
	%r185 = call token (i64,i32,void (i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_voidp1i64f(i64 0,i32 0,
		void (i64 addrspace(1)*)* @_mll_print,
		i32 1,i32 0,
		i64 addrspace(1)* %r184,
		i32 0,i32 0)
	ret i64 1
}

define fastcc i64 addrspace(1)* @intToString00F2(i64 addrspace(1)* %intToString_clos186,i64 %i187) gc "statepoint-example" {
entry_01E9:
	; IF IntLt(i0164,0)
	%r188 = icmp slt i64 %i187, 1
	br i1 %r188, label %then_0205, label %else_01EA
else_01EA:
	; IF IntEq(i016F,0)
	%r197 = icmp eq i64 %i187, 1
	br i1 %r197, label %then_0204, label %else_01EB
else_01EB:
	; IF IntEq(i0175,1)
	%r199 = icmp eq i64 %i187, 3
	br i1 %r199, label %then_0203, label %else_01EC
else_01EC:
	; IF IntEq(i017B,2)
	%r201 = icmp eq i64 %i187, 5
	br i1 %r201, label %then_0202, label %else_01ED
else_01ED:
	; IF IntEq(i0181,3)
	%r203 = icmp eq i64 %i187, 7
	br i1 %r203, label %then_0201, label %else_01EE
else_01EE:
	; IF IntEq(i0187,4)
	%r205 = icmp eq i64 %i187, 9
	br i1 %r205, label %then_0200, label %else_01EF
else_01EF:
	; IF IntEq(i018D,5)
	%r207 = icmp eq i64 %i187, 11
	br i1 %r207, label %then_01FF, label %else_01F0
else_01F0:
	; IF IntEq(i0193,6)
	%r209 = icmp eq i64 %i187, 13
	br i1 %r209, label %then_01FE, label %else_01F1
else_01F1:
	; IF IntEq(i0199,7)
	%r211 = icmp eq i64 %i187, 15
	br i1 %r211, label %then_01FD, label %else_01F2
else_01F2:
	; IF IntEq(i019F,8)
	%r213 = icmp eq i64 %i187, 17
	br i1 %r213, label %then_01FC, label %else_01F3
else_01F3:
	; IF IntEq(i01A5,9)
	%r215 = icmp eq i64 %i187, 19
	br i1 %r215, label %then_01FB, label %else_01F4
else_01F4:
	; IF IntNEq(10,0)
	%r217 = icmp ne i64 21, 1
	br i1 %r217, label %then_01F6, label %else_01F5
else_01F5:
	; LET _t001501C9 = call _mll_fail ("Divide by zero")
	; emitCall: @_mll_fail (@_slit_16) ;; live = {%intToString_clos186, %i187}
	%r249 = bitcast [3 x i64] addrspace(1)* @_slit_16 to i64 addrspace(1)*
	%r250 = call token (i64,i32,void (i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_voidp1i64f(i64 0,i32 0,
		void (i64 addrspace(1)*)* @_mll_fail,
		i32 1,i32 0,
		i64 addrspace(1)* %r249,
		i32 0,i32 0,
		i64 addrspace(1)* %intToString_clos186)
	%r251 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r250,i32 8,i32 8)
	br label %join_01F7
then_01F6:
	; LET _t001401C5 = IntDiv (i01C4,10)
	%r218 = ashr i64 %i187, 1
	%r219 = sdiv i64 %r218, 10
	%r220 = shl i64 %r219, 1
	%r221 = add i64 %r220, 1
	br label %join_01F7
join_01F7:
	%_t0013222 = phi i64 [ 1, %else_01F5 ], [ %r221, %then_01F6 ]
	%intToString223 = phi i64 addrspace(1)* [ %r251, %else_01F5 ], [ %intToString_clos186, %then_01F6 ]
	%i224 = phi i64 [ %i187, %else_01F5 ], [ %i187, %then_01F6 ]
	; LET _t001201B0 = apply intToString00F20166 (intToString01AE,_t001301AD)
	; emitCall: @intToString00F2 (%intToString223, %_t0013222) ;; live = {%_t0013222, %intToString223, %i224}
	%r225 = call token (i64,i32,i64 addrspace(1)* (i64 addrspace(1)*,i64)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64p1i64i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64 addrspace(1)*,i64)* @intToString00F2,
		i32 2,i32 0,
		i64 addrspace(1)* %intToString223, i64 %_t0013222,
		i32 0,i32 0,
		i64 addrspace(1)* %intToString223)
	%r226 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r225)
	%r227 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r225,i32 9,i32 9)
	; IF IntNEq(10,0)
	%r228 = icmp ne i64 21, 1
	br i1 %r228, label %then_01F9, label %else_01F8
else_01F8:
	; LET _t001901C1 = call _mll_fail ("Remainder by zero")
	; emitCall: @_mll_fail (@_slit_15) ;; live = {%r227, %i224, %r226}
	%r245 = bitcast [4 x i64] addrspace(1)* @_slit_15 to i64 addrspace(1)*
	%r246 = call token (i64,i32,void (i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_voidp1i64f(i64 0,i32 0,
		void (i64 addrspace(1)*)* @_mll_fail,
		i32 1,i32 0,
		i64 addrspace(1)* %r245,
		i32 0,i32 0,
		i64 addrspace(1)* %r227, i64 addrspace(1)* %r226)
	%r247 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r246,i32 8,i32 8)
	%r248 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r246,i32 9,i32 9)
	br label %join_01FA
then_01F9:
	; LET _t001801BC = IntMod (i01BA,10)
	%r229 = ashr i64 %i224, 1
	%r230 = srem i64 %r229, 10
	%r231 = shl i64 %r230, 1
	%r232 = add i64 %r231, 1
	br label %join_01FA
join_01FA:
	%_t0017233 = phi i64 [ 1, %else_01F8 ], [ %r232, %then_01F9 ]
	%intToString234 = phi i64 addrspace(1)* [ %r247, %else_01F8 ], [ %r227, %then_01F9 ]
	%i235 = phi i64 [ %i224, %else_01F8 ], [ %i224, %then_01F9 ]
	%_t0012236 = phi i64 addrspace(1)* [ %r248, %else_01F8 ], [ %r226, %then_01F9 ]
	; LET _t001601B6 = apply intToString00F20166 (intToString01B3,_t001701B2)
	; emitCall: @intToString00F2 (%intToString234, %_t0017233) ;; live = {%_t0017233, %intToString234, %_t0012236}
	%r237 = call token (i64,i32,i64 addrspace(1)* (i64 addrspace(1)*,i64)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64p1i64i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64 addrspace(1)*,i64)* @intToString00F2,
		i32 2,i32 0,
		i64 addrspace(1)* %intToString234, i64 %_t0017233,
		i32 0,i32 0,
		i64 addrspace(1)* %intToString234, i64 addrspace(1)* %_t0012236)
	%r238 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r237)
	%r239 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r237,i32 9,i32 9)
	%r240 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r237,i32 10,i32 10)
	; LET _t002001B7 = call _mll_concat (_t001201B5,_t001601B6)
	; emitCall: @_mll_concat (%r240, %r238) ;; live = {%r240, %r238}
	%r241 = call token (i64,i32,i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64p1i64p1i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)* @_mll_concat,
		i32 2,i32 0,
		i64 addrspace(1)* %r240, i64 addrspace(1)* %r238,
		i32 0,i32 0,
		i64 addrspace(1)* %r240, i64 addrspace(1)* %r238)
	%r242 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r241)
	%r243 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r241,i32 9,i32 9)
	%r244 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r241,i32 10,i32 10)
	ret i64 addrspace(1)* %r242
then_01FB:
	%r216 = bitcast [2 x i64] addrspace(1)* @_slit_14 to i64 addrspace(1)*
	ret i64 addrspace(1)* %r216
then_01FC:
	%r214 = bitcast [2 x i64] addrspace(1)* @_slit_13 to i64 addrspace(1)*
	ret i64 addrspace(1)* %r214
then_01FD:
	%r212 = bitcast [2 x i64] addrspace(1)* @_slit_12 to i64 addrspace(1)*
	ret i64 addrspace(1)* %r212
then_01FE:
	%r210 = bitcast [2 x i64] addrspace(1)* @_slit_11 to i64 addrspace(1)*
	ret i64 addrspace(1)* %r210
then_01FF:
	%r208 = bitcast [2 x i64] addrspace(1)* @_slit_10 to i64 addrspace(1)*
	ret i64 addrspace(1)* %r208
then_0200:
	%r206 = bitcast [2 x i64] addrspace(1)* @_slit_9 to i64 addrspace(1)*
	ret i64 addrspace(1)* %r206
then_0201:
	%r204 = bitcast [2 x i64] addrspace(1)* @_slit_8 to i64 addrspace(1)*
	ret i64 addrspace(1)* %r204
then_0202:
	%r202 = bitcast [2 x i64] addrspace(1)* @_slit_7 to i64 addrspace(1)*
	ret i64 addrspace(1)* %r202
then_0203:
	%r200 = bitcast [2 x i64] addrspace(1)* @_slit_6 to i64 addrspace(1)*
	ret i64 addrspace(1)* %r200
then_0204:
	%r198 = bitcast [2 x i64] addrspace(1)* @_slit_5 to i64 addrspace(1)*
	ret i64 addrspace(1)* %r198
then_0205:
	; LET _t0010016A = IntNeg (i0169)
	%r189 = sub i64 2, %i187
	; LET _t0009016B = apply intToString00F20166 (intToString0168,_t0010016A)
	; emitCall: @intToString00F2 (%intToString_clos186, %r189) ;; live = {%intToString_clos186, %r189}
	%r190 = call token (i64,i32,i64 addrspace(1)* (i64 addrspace(1)*,i64)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64p1i64i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64 addrspace(1)*,i64)* @intToString00F2,
		i32 2,i32 0,
		i64 addrspace(1)* %intToString_clos186, i64 %r189,
		i32 0,i32 0,
		i64 addrspace(1)* %intToString_clos186)
	%r191 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r190)
	%r192 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r190,i32 9,i32 9)
	; LET _t0011016C = call _mll_concat ("-",_t0009016B)
	; emitCall: @_mll_concat (@_slit_4, %r191) ;; live = {%r191}
	%r193 = bitcast [2 x i64] addrspace(1)* @_slit_4 to i64 addrspace(1)*
	%r194 = call token (i64,i32,i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64p1i64p1i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)* @_mll_concat,
		i32 2,i32 0,
		i64 addrspace(1)* %r193, i64 addrspace(1)* %r191,
		i32 0,i32 0,
		i64 addrspace(1)* %r191)
	%r195 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r194)
	%r196 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r194,i32 9,i32 9)
	ret i64 addrspace(1)* %r195
}

define fastcc i64 addrspace(1)* @appi00E1(i64 addrspace(1)* %appi_clos252,i64 addrspace(1)* %f253) gc "statepoint-example" {
entry_0206:
	; LET fst0132 = #1(appi_clos0130)
	%r254 = bitcast i64 addrspace(1)* %appi_clos252 to i64 addrspace(1)* addrspace(1)*
	%r255 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r254, i32 1
	%r256 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r255
	; LET snd0133 = #2(appi_clos0130)
	%r257 = bitcast i64 addrspace(1)* %appi_clos252 to i64 addrspace(1)* addrspace(1)*
	%r258 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r257, i32 2
	%r259 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r258
	; LET appi10134 = alloc  {appi100E30137,fst0132,snd0133,f012F}
	; emitCall: @_mll_alloc (4) ;; live = {%f253, %r256, %r259}
	%r260 = call token (i64,i32,i64 addrspace(1)* (i64)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64)* @_mll_alloc,
		i32 1,i32 0,
		i64 4,
		i32 0,i32 0,
		i64 addrspace(1)* %f253, i64 addrspace(1)* %r256, i64 addrspace(1)* %r259)
	%r261 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r260)
	%r262 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r260,i32 8,i32 8)
	%r263 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r260,i32 9,i32 9)
	%r264 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r260,i32 10,i32 10)
	%r265 = getelementptr i64, i64 addrspace(1)* %r261, i32 0
	%r266 = ptrtoint i64 (i64 addrspace(1)*,i64 addrspace(1)*)* @appi100E3 to i64
	store i64 %r266, i64 addrspace(1)* %r265
	%r267 = getelementptr i64, i64 addrspace(1)* %r261, i32 1
	%r268 = ptrtoint i64 addrspace(1)* %r263 to i64
	store i64 %r268, i64 addrspace(1)* %r267
	%r269 = getelementptr i64, i64 addrspace(1)* %r261, i32 2
	%r270 = ptrtoint i64 addrspace(1)* %r264 to i64
	store i64 %r270, i64 addrspace(1)* %r269
	%r271 = getelementptr i64, i64 addrspace(1)* %r261, i32 3
	%r272 = ptrtoint i64 addrspace(1)* %r262 to i64
	store i64 %r272, i64 addrspace(1)* %r271
	ret i64 addrspace(1)* %r261
}

define fastcc i64 @appi100E3(i64 addrspace(1)* %appi1_clos273,i64 addrspace(1)* %l274) gc "statepoint-example" {
entry_0207:
	; LET fst0138 = #1(appi1_clos0136)
	%r275 = bitcast i64 addrspace(1)* %appi1_clos273 to i64 addrspace(1)* addrspace(1)*
	%r276 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r275, i32 1
	%r277 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r276
	; LET snd0139 = #2(appi1_clos0136)
	%r278 = bitcast i64 addrspace(1)* %appi1_clos273 to i64 addrspace(1)* addrspace(1)*
	%r279 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r278, i32 2
	%r280 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r279
	; LET f013A = #3(appi1_clos0136)
	%r281 = bitcast i64 addrspace(1)* %appi1_clos273 to i64 addrspace(1)* addrspace(1)*
	%r282 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r281, i32 3
	%r283 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r282
	; LET appf013B = alloc  {appf00E5013F,fst0138,snd0139,f013A}
	; emitCall: @_mll_alloc (4) ;; live = {%l274, %r277, %r280, %r283}
	%r284 = call token (i64,i32,i64 addrspace(1)* (i64)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64)* @_mll_alloc,
		i32 1,i32 0,
		i64 4,
		i32 0,i32 0,
		i64 addrspace(1)* %l274, i64 addrspace(1)* %r277, i64 addrspace(1)* %r280, i64 addrspace(1)* %r283)
	%r285 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r284)
	%r286 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r284,i32 8,i32 8)
	%r287 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r284,i32 9,i32 9)
	%r288 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r284,i32 10,i32 10)
	%r289 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r284,i32 11,i32 11)
	%r290 = getelementptr i64, i64 addrspace(1)* %r285, i32 0
	%r291 = ptrtoint i64 (i64 addrspace(1)*,i64 addrspace(1)*)* @appf00E5 to i64
	store i64 %r291, i64 addrspace(1)* %r290
	%r292 = getelementptr i64, i64 addrspace(1)* %r285, i32 1
	%r293 = ptrtoint i64 addrspace(1)* %r287 to i64
	store i64 %r293, i64 addrspace(1)* %r292
	%r294 = getelementptr i64, i64 addrspace(1)* %r285, i32 2
	%r295 = ptrtoint i64 addrspace(1)* %r288 to i64
	store i64 %r295, i64 addrspace(1)* %r294
	%r296 = getelementptr i64, i64 addrspace(1)* %r285, i32 3
	%r297 = ptrtoint i64 addrspace(1)* %r289 to i64
	store i64 %r297, i64 addrspace(1)* %r296
	; LET _t00080161 = alloc  {0,l0135}
	; emitCall: @_mll_alloc (2) ;; live = {%r286, %r285}
	%r298 = call token (i64,i32,i64 addrspace(1)* (i64)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64)* @_mll_alloc,
		i32 1,i32 0,
		i64 2,
		i32 0,i32 0,
		i64 addrspace(1)* %r286, i64 addrspace(1)* %r285)
	%r299 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r298)
	%r300 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r298,i32 8,i32 8)
	%r301 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r298,i32 9,i32 9)
	%r302 = getelementptr i64, i64 addrspace(1)* %r299, i32 0
	store i64 1, i64 addrspace(1)* %r302
	%r303 = getelementptr i64, i64 addrspace(1)* %r299, i32 1
	%r304 = ptrtoint i64 addrspace(1)* %r300 to i64
	store i64 %r304, i64 addrspace(1)* %r303
	; LET appf_cp0162 = #0(appf013B)
	%r305 = bitcast i64 addrspace(1)* %r301 to i64 addrspace(1)* addrspace(1)*
	%r306 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r305, i32 0
	%r307 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r306
	; TAIL_APPLY appf_cp0162(appf013B,_t00080161)
	%r308 = ptrtoint i64 addrspace(1)* %r307 to i64
	%r309 = inttoptr i64 %r308 to i64 (i64 addrspace(1)*,i64 addrspace(1)*)*
	; emitTailCall: %r309 (%r301, %r299)
	%r310 = tail call i64 %r309 (i64 addrspace(1)* %r301, i64 addrspace(1)* %r299)
	ret i64 %r310
}

define fastcc i64 @appf00E5(i64 addrspace(1)* %appf_clos311,i64 addrspace(1)* %arg312) gc "statepoint-example" {
entry_0208:
	; LET fst0140 = #1(appf_clos013E)
	%r313 = bitcast i64 addrspace(1)* %appf_clos311 to i64 addrspace(1)* addrspace(1)*
	%r314 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r313, i32 1
	%r315 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r314
	; LET snd0141 = #2(appf_clos013E)
	%r316 = bitcast i64 addrspace(1)* %appf_clos311 to i64 addrspace(1)* addrspace(1)*
	%r317 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r316, i32 2
	%r318 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r317
	; LET f0142 = #3(appf_clos013E)
	%r319 = bitcast i64 addrspace(1)* %appf_clos311 to i64 addrspace(1)* addrspace(1)*
	%r320 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r319, i32 3
	%r321 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r320
	br label %appf00E5_hdr_0209
appf00E5_hdr_0209:
	%appf322 = phi i64 addrspace(1)* [ %r399, %then_020B ], [ %appf_clos311, %entry_0208 ]
	%arg323 = phi i64 addrspace(1)* [ %r395, %then_020B ], [ %arg312, %entry_0208 ]
	%fst324 = phi i64 addrspace(1)* [ %r396, %then_020B ], [ %r315, %entry_0208 ]
	%snd325 = phi i64 addrspace(1)* [ %r397, %then_020B ], [ %r318, %entry_0208 ]
	%f326 = phi i64 addrspace(1)* [ %r398, %then_020B ], [ %r321, %entry_0208 ]
	; LET snd_cp0149 = #0(snd0146)
	%r327 = bitcast i64 addrspace(1)* %snd325 to i64 addrspace(1)* addrspace(1)*
	%r328 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r327, i32 0
	%r329 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r328
	; LET _t00030148 = apply snd_cp0149 (snd0146,arg0144)
	%r330 = ptrtoint i64 addrspace(1)* %r329 to i64
	%r331 = inttoptr i64 %r330 to i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)*
	; emitCall: %r331 (%snd325, %arg323) ;; live = {%appf322, %arg323, %fst324, %snd325, %f326, %r329}
	%r332 = call token (i64,i32,i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64p1i64p1i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)* %r331,
		i32 2,i32 0,
		i64 addrspace(1)* %snd325, i64 addrspace(1)* %arg323,
		i32 0,i32 0,
		i64 addrspace(1)* %appf322, i64 addrspace(1)* %arg323, i64 addrspace(1)* %fst324, i64 addrspace(1)* %snd325, i64 addrspace(1)* %f326, i64 addrspace(1)* %r329)
	%r333 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r332)
	%r334 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r332,i32 9,i32 9)
	%r335 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r332,i32 10,i32 10)
	%r336 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r332,i32 11,i32 11)
	%r337 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r332,i32 12,i32 12)
	%r338 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r332,i32 13,i32 13)
	%r339 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r332,i32 14,i32 14)
	; IF Boxed(_t00030148)
	%r341 = ptrtoint i64 addrspace(1)* %r333 to i64
	%r340 = and i64 %r341, 1
	%r342 = icmp eq i64 %r340, 0
	br i1 %r342, label %then_020B, label %else_020A
else_020A:
	ret i64 1
then_020B:
	; LET x0151 = #0(_t00030150)
	%r343 = bitcast i64 addrspace(1)* %r333 to i64 addrspace(1)* addrspace(1)*
	%r344 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r343, i32 0
	%r345 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r344
	; LET xs0152 = #1(_t00030150)
	%r346 = bitcast i64 addrspace(1)* %r333 to i64 addrspace(1)* addrspace(1)*
	%r347 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r346, i32 1
	%r348 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r347
	; LET fst_cp0154 = #0(fst014B)
	%r349 = bitcast i64 addrspace(1)* %r336 to i64 addrspace(1)* addrspace(1)*
	%r350 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r349, i32 0
	%r351 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r350
	; LET i0153 = apply fst_cp0154 (fst014B,arg014F)
	%r352 = ptrtoint i64 addrspace(1)* %r351 to i64
	%r353 = inttoptr i64 %r352 to i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)*
	; emitCall: %r353 (%r336, %r335) ;; live = {%r336, %r337, %r338, %r334, %r335, %r345, %r348, %r351}
	%r354 = call token (i64,i32,i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64p1i64p1i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)* %r353,
		i32 2,i32 0,
		i64 addrspace(1)* %r336, i64 addrspace(1)* %r335,
		i32 0,i32 0,
		i64 addrspace(1)* %r336, i64 addrspace(1)* %r337, i64 addrspace(1)* %r338, i64 addrspace(1)* %r334, i64 addrspace(1)* %r335, i64 addrspace(1)* %r345, i64 addrspace(1)* %r348, i64 addrspace(1)* %r351)
	%r355 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r354)
	%r356 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r354,i32 9,i32 9)
	%r357 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r354,i32 10,i32 10)
	%r358 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r354,i32 11,i32 11)
	%r359 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r354,i32 12,i32 12)
	%r360 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r354,i32 13,i32 13)
	%r361 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r354,i32 14,i32 14)
	%r362 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r354,i32 15,i32 15)
	%r363 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r354,i32 16,i32 16)
	; LET _t00050155 = alloc  {i0153,x0151}
	; emitCall: @_mll_alloc (2) ;; live = {%r356, %r357, %r358, %r359, %r361, %r362, %r355}
	%r364 = call token (i64,i32,i64 addrspace(1)* (i64)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64)* @_mll_alloc,
		i32 1,i32 0,
		i64 2,
		i32 0,i32 0,
		i64 addrspace(1)* %r356, i64 addrspace(1)* %r357, i64 addrspace(1)* %r358, i64 addrspace(1)* %r359, i64 addrspace(1)* %r361, i64 addrspace(1)* %r362, i64 addrspace(1)* %r355)
	%r365 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r364)
	%r366 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r364,i32 8,i32 8)
	%r367 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r364,i32 9,i32 9)
	%r368 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r364,i32 10,i32 10)
	%r369 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r364,i32 11,i32 11)
	%r370 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r364,i32 12,i32 12)
	%r371 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r364,i32 13,i32 13)
	%r372 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r364,i32 14,i32 14)
	%r373 = getelementptr i64, i64 addrspace(1)* %r365, i32 0
	%r374 = ptrtoint i64 addrspace(1)* %r372 to i64
	store i64 %r374, i64 addrspace(1)* %r373
	%r375 = getelementptr i64, i64 addrspace(1)* %r365, i32 1
	%r376 = ptrtoint i64 addrspace(1)* %r370 to i64
	store i64 %r376, i64 addrspace(1)* %r375
	; LET f_cp0157 = #0(f014D)
	%r377 = bitcast i64 addrspace(1)* %r368 to i64 addrspace(1)* addrspace(1)*
	%r378 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r377, i32 0
	%r379 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r378
	; LET tpl0156 = apply f_cp0157 (f014D,_t00050155)
	%r380 = ptrtoint i64 addrspace(1)* %r379 to i64
	%r381 = inttoptr i64 %r380 to i64 (i64 addrspace(1)*,i64 addrspace(1)*)*
	; emitCall: %r381 (%r368, %r365) ;; live = {%r366, %r367, %r368, %r369, %r371, %r372, %r365, %r379}
	%r382 = call token (i64,i32,i64 (i64 addrspace(1)*,i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_i64p1i64p1i64f(i64 0,i32 0,
		i64 (i64 addrspace(1)*,i64 addrspace(1)*)* %r381,
		i32 2,i32 0,
		i64 addrspace(1)* %r368, i64 addrspace(1)* %r365,
		i32 0,i32 0,
		i64 addrspace(1)* %r366, i64 addrspace(1)* %r367, i64 addrspace(1)* %r368, i64 addrspace(1)* %r369, i64 addrspace(1)* %r371, i64 addrspace(1)* %r372, i64 addrspace(1)* %r365, i64 addrspace(1)* %r379)
	%r383 = call i64 @llvm.experimental.gc.result.i64(token %r382)
	%r384 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r382,i32 9,i32 9)
	%r385 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r382,i32 10,i32 10)
	%r386 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r382,i32 11,i32 11)
	%r387 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r382,i32 12,i32 12)
	%r388 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r382,i32 13,i32 13)
	%r389 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r382,i32 14,i32 14)
	%r390 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r382,i32 15,i32 15)
	%r391 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r382,i32 16,i32 16)
	; LET _t00070158 = IntAdd (i0153,1)
	%r393 = ptrtoint i64 addrspace(1)* %r389 to i64
	%r392 = add i64 %r393, 2
	; LET _t00060159 = alloc  {_t00070158,xs0152}
	; emitCall: @_mll_alloc (2) ;; live = {%r384, %r385, %r386, %r387, %r388, %r392}
	%r394 = call token (i64,i32,i64 addrspace(1)* (i64)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64)* @_mll_alloc,
		i32 1,i32 0,
		i64 2,
		i32 0,i32 0,
		i64 addrspace(1)* %r384, i64 addrspace(1)* %r385, i64 addrspace(1)* %r386, i64 addrspace(1)* %r387, i64 addrspace(1)* %r388)
	%r395 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r394)
	%r396 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r394,i32 8,i32 8)
	%r397 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r394,i32 9,i32 9)
	%r398 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r394,i32 10,i32 10)
	%r399 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r394,i32 11,i32 11)
	%r400 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r394,i32 12,i32 12)
	%r401 = getelementptr i64, i64 addrspace(1)* %r395, i32 0
	store i64 %r392, i64 addrspace(1)* %r401
	%r402 = getelementptr i64, i64 addrspace(1)* %r395, i32 1
	%r403 = ptrtoint i64 addrspace(1)* %r400 to i64
	store i64 %r403, i64 addrspace(1)* %r402
	br label %appf00E5_hdr_0209
}

define fastcc i64 @length00DA(i64 addrspace(1)* %length_clos404,i64 addrspace(1)* %l405) gc "statepoint-example" {
entry_020C:
	; IF Boxed(l0121)
	%r407 = ptrtoint i64 addrspace(1)* %l405 to i64
	%r406 = and i64 %r407, 1
	%r408 = icmp eq i64 %r406, 0
	br i1 %r408, label %then_020E, label %else_020D
else_020D:
	ret i64 1
then_020E:
	; LET _0127 = #0(l0126)
	%r409 = bitcast i64 addrspace(1)* %l405 to i64 addrspace(1)* addrspace(1)*
	%r410 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r409, i32 0
	%r411 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r410
	; LET r0128 = #1(l0126)
	%r412 = bitcast i64 addrspace(1)* %l405 to i64 addrspace(1)* addrspace(1)*
	%r413 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r412, i32 1
	%r414 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r413
	; LET _t00010129 = apply length00DA0123 (length0125,r0128)
	; emitCall: @length00DA (%length_clos404, %r414) ;; live = {%length_clos404, %r414}
	%r415 = call token (i64,i32,i64 (i64 addrspace(1)*,i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_i64p1i64p1i64f(i64 0,i32 0,
		i64 (i64 addrspace(1)*,i64 addrspace(1)*)* @length00DA,
		i32 2,i32 0,
		i64 addrspace(1)* %length_clos404, i64 addrspace(1)* %r414,
		i32 0,i32 0,
		i64 addrspace(1)* %length_clos404, i64 addrspace(1)* %r414)
	%r416 = call i64 @llvm.experimental.gc.result.i64(token %r415)
	%r417 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r415,i32 9,i32 9)
	%r418 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r415,i32 10,i32 10)
	; LET _t0002012A = IntAdd (1,_t00010129)
	%r419 = add i64 2, %r416
	ret i64 %r419
}

define fastcc i64 addrspace(1)* @snd00D6(i64 addrspace(1)* %snd_clos420,i64 addrspace(1)* %p421) gc "statepoint-example" {
entry_020F:
	; LET _011E = #0(p011B)
	%r422 = bitcast i64 addrspace(1)* %p421 to i64 addrspace(1)* addrspace(1)*
	%r423 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r422, i32 0
	%r424 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r423
	; LET b011F = #1(p011B)
	%r425 = bitcast i64 addrspace(1)* %p421 to i64 addrspace(1)* addrspace(1)*
	%r426 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r425, i32 1
	%r427 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r426
	ret i64 addrspace(1)* %r427
}

define fastcc i64 addrspace(1)* @fst00D2(i64 addrspace(1)* %fst_clos428,i64 addrspace(1)* %p429) gc "statepoint-example" {
entry_0210:
	; LET a0118 = #0(p0115)
	%r430 = bitcast i64 addrspace(1)* %p429 to i64 addrspace(1)* addrspace(1)*
	%r431 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r430, i32 0
	%r432 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r431
	; LET _0119 = #1(p0115)
	%r433 = bitcast i64 addrspace(1)* %p429 to i64 addrspace(1)* addrspace(1)*
	%r434 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r433, i32 1
	%r435 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r434
	ret i64 addrspace(1)* %r432
}


declare i64 addrspace(1)* @_mll_alloc(i64)
declare i64 addrspace(1)* @_mll_concat(i64 addrspace(1)*,i64 addrspace(1)*)
declare void @_mll_exit(i64)
declare void @_mll_fail(i64 addrspace(1)*)
declare void @_mll_print(i64 addrspace(1)*)
declare i64 addrspace(1)* @_mll_str_chr(i64)
@_slit_0 = global [3 x i64] [
	i64 19,
	i64 4404647323706138659,
	i64 32
]

@_slit_1 = global [2 x i64] [
	i64 3,
	i64 10
]

@_slit_2 = global [2 x i64] [
	i64 9,
	i64 543650401
]

@_slit_3 = global [2 x i64] [
	i64 7,
	i64 2112800
]

@_slit_4 = global [2 x i64] [
	i64 3,
	i64 45
]

@_slit_5 = global [2 x i64] [
	i64 3,
	i64 48
]

@_slit_6 = global [2 x i64] [
	i64 3,
	i64 49
]

@_slit_7 = global [2 x i64] [
	i64 3,
	i64 50
]

@_slit_8 = global [2 x i64] [
	i64 3,
	i64 51
]

@_slit_9 = global [2 x i64] [
	i64 3,
	i64 52
]

@_slit_10 = global [2 x i64] [
	i64 3,
	i64 53
]

@_slit_11 = global [2 x i64] [
	i64 3,
	i64 54
]

@_slit_12 = global [2 x i64] [
	i64 3,
	i64 55
]

@_slit_13 = global [2 x i64] [
	i64 3,
	i64 56
]

@_slit_14 = global [2 x i64] [
	i64 3,
	i64 57
]

@_slit_15 = global [4 x i64] [
	i64 35,
	i64 7306085894386967890,
	i64 8243128972865577074,
	i64 111
]

@_slit_16 = global [3 x i64] [
	i64 29,
	i64 7070762896912181572,
	i64 122537119457401
]


declare token @llvm.experimental.gc.statepoint.p0f_p1i64p1i64p1i64f(i64,i32,i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)*,i32,i32,...)
declare i64 @llvm.experimental.gc.result.i64(token)
declare token @llvm.experimental.gc.statepoint.p0f_voidp1i64f(i64,i32,void (i64 addrspace(1)*)*,i32,i32,...)
declare token @llvm.experimental.gc.statepoint.p0f_i64p1i64p1i64f(i64,i32,i64 (i64 addrspace(1)*,i64 addrspace(1)*)*,i32,i32,...)
declare i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token)
declare token @llvm.experimental.gc.statepoint.p0f_p1i64i64f(i64,i32,i64 addrspace(1)* (i64)*,i32,i32,...)
declare i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token,i32,i32)
declare token @llvm.experimental.gc.statepoint.p0f_p1i64p1i64i64f(i64,i32,i64 addrspace(1)* (i64 addrspace(1)*,i64)*,i32,i32,...)
