define fastcc i64 @_mll_entry(i64 addrspace(1)* %arguments1) gc "statepoint-example" {
entry_00AF:
	; LET _t00030089 = call _mll_concat ("Hello",", ")
	; emitCall: @_mll_concat (@_slit_0, @_slit_1) ;; live = {}
	%r2 = bitcast [2 x i64] addrspace(1)* @_slit_0 to i64 addrspace(1)*
	%r3 = bitcast [2 x i64] addrspace(1)* @_slit_1 to i64 addrspace(1)*
	%r4 = call token (i64,i32,i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64p1i64p1i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)* @_mll_concat,
		i32 2,i32 0,
		i64 addrspace(1)* %r2, i64 addrspace(1)* %r3,
		i32 0,i32 0)
	%r5 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r4)
	; LET _t0002008A = call _mll_concat (_t00030089,"world")
	; emitCall: @_mll_concat (%r5, @_slit_2) ;; live = {%r5}
	%r6 = bitcast [2 x i64] addrspace(1)* @_slit_2 to i64 addrspace(1)*
	%r7 = call token (i64,i32,i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64p1i64p1i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)* @_mll_concat,
		i32 2,i32 0,
		i64 addrspace(1)* %r5, i64 addrspace(1)* %r6,
		i32 0,i32 0,
		i64 addrspace(1)* %r5)
	%r8 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r7)
	%r9 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r7,i32 9,i32 9)
	; LET _t0001008B = call _mll_concat (_t0002008A,"!\n")
	; emitCall: @_mll_concat (%r8, @_slit_3) ;; live = {%r8}
	%r10 = bitcast [2 x i64] addrspace(1)* @_slit_3 to i64 addrspace(1)*
	%r11 = call token (i64,i32,i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64p1i64p1i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)* @_mll_concat,
		i32 2,i32 0,
		i64 addrspace(1)* %r8, i64 addrspace(1)* %r10,
		i32 0,i32 0,
		i64 addrspace(1)* %r8)
	%r12 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r11)
	%r13 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r11,i32 9,i32 9)
	; LET _008C = call _mll_print (_t0001008B)
	; emitCall: @_mll_print (%r12) ;; live = {%r12}
	%r14 = call token (i64,i32,void (i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_voidp1i64f(i64 0,i32 0,
		void (i64 addrspace(1)*)* @_mll_print,
		i32 1,i32 0,
		i64 addrspace(1)* %r12,
		i32 0,i32 0,
		i64 addrspace(1)* %r12)
	%r15 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r14,i32 8,i32 8)
	; LET f008D = alloc  {f00780090,"Goodbye","world"}
	; emitCall: @_mll_alloc (3) ;; live = {}
	%r16 = call token (i64,i32,i64 addrspace(1)* (i64)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64)* @_mll_alloc,
		i32 1,i32 0,
		i64 3,
		i32 0,i32 0)
	%r17 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r16)
	%r18 = getelementptr i64, i64 addrspace(1)* %r17, i32 0
	%r19 = ptrtoint i64 (i64 addrspace(1)*,i64)* @f0078 to i64
	store i64 %r19, i64 addrspace(1)* %r18
	%r20 = getelementptr i64, i64 addrspace(1)* %r17, i32 1
	%r21 = ptrtoint [2 x i64] addrspace(1)* @_slit_4 to i64
	store i64 %r21, i64 addrspace(1)* %r20
	%r22 = getelementptr i64, i64 addrspace(1)* %r17, i32 2
	%r23 = ptrtoint [2 x i64] addrspace(1)* @_slit_2 to i64
	store i64 %r23, i64 addrspace(1)* %r22
	; LET f_cp00AE = #0(f008D)
	%r24 = bitcast i64 addrspace(1)* %r17 to i64 addrspace(1)* addrspace(1)*
	%r25 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r24, i32 0
	%r26 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r25
	; LET _t000000AD = apply f_cp00AE (f008D,5)
	%r27 = ptrtoint i64 addrspace(1)* %r26 to i64
	%r28 = inttoptr i64 %r27 to i64 (i64 addrspace(1)*,i64)*
	; emitCall: %r28 (%r17, 11) ;; live = {%r17, %r26}
	%r29 = call token (i64,i32,i64 (i64 addrspace(1)*,i64)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_i64p1i64i64f(i64 0,i32 0,
		i64 (i64 addrspace(1)*,i64)* %r28,
		i32 2,i32 0,
		i64 addrspace(1)* %r17, i64 11,
		i32 0,i32 0,
		i64 addrspace(1)* %r17, i64 addrspace(1)* %r26)
	%r30 = call i64 @llvm.experimental.gc.result.i64(token %r29)
	%r31 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r29,i32 9,i32 9)
	%r32 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r29,i32 10,i32 10)
	ret i64 1
}

define fastcc i64 @f0078(i64 addrspace(1)* %f_clos33,i64 %n34) gc "statepoint-example" {
entry_00B0:
	; LET goodbye0091 = #1(f_clos008F)
	%r35 = bitcast i64 addrspace(1)* %f_clos33 to i64 addrspace(1)* addrspace(1)*
	%r36 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r35, i32 1
	%r37 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r36
	; LET world0092 = #2(f_clos008F)
	%r38 = bitcast i64 addrspace(1)* %f_clos33 to i64 addrspace(1)* addrspace(1)*
	%r39 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r38, i32 2
	%r40 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r39
	; LET loop0093 = alloc  {loop007A0097,n008E}
	; emitCall: @_mll_alloc (2) ;; live = {%n34, %r37, %r40}
	%r41 = call token (i64,i32,i64 addrspace(1)* (i64)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64)* @_mll_alloc,
		i32 1,i32 0,
		i64 2,
		i32 0,i32 0,
		i64 addrspace(1)* %r37, i64 addrspace(1)* %r40)
	%r42 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r41)
	%r43 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r41,i32 8,i32 8)
	%r44 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r41,i32 9,i32 9)
	%r45 = getelementptr i64, i64 addrspace(1)* %r42, i32 0
	%r46 = ptrtoint i64 (i64 addrspace(1)*,i64)* @loop007A to i64
	store i64 %r46, i64 addrspace(1)* %r45
	%r47 = getelementptr i64, i64 addrspace(1)* %r42, i32 1
	store i64 %n34, i64 addrspace(1)* %r47
	; LET _t000600A6 = call _mll_concat (goodbye0091,",")
	; emitCall: @_mll_concat (%r43, @_slit_5) ;; live = {%r43, %r44, %r42}
	%r48 = bitcast [2 x i64] addrspace(1)* @_slit_5 to i64 addrspace(1)*
	%r49 = call token (i64,i32,i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64p1i64p1i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)* @_mll_concat,
		i32 2,i32 0,
		i64 addrspace(1)* %r43, i64 addrspace(1)* %r48,
		i32 0,i32 0,
		i64 addrspace(1)* %r43, i64 addrspace(1)* %r44, i64 addrspace(1)* %r42)
	%r50 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r49)
	%r51 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r49,i32 9,i32 9)
	%r52 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r49,i32 10,i32 10)
	%r53 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r49,i32 11,i32 11)
	; LET tpl00A7 = call _mll_print (_t000600A6)
	; emitCall: @_mll_print (%r50) ;; live = {%r52, %r53, %r50}
	%r54 = call token (i64,i32,void (i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_voidp1i64f(i64 0,i32 0,
		void (i64 addrspace(1)*)* @_mll_print,
		i32 1,i32 0,
		i64 addrspace(1)* %r50,
		i32 0,i32 0,
		i64 addrspace(1)* %r52, i64 addrspace(1)* %r53, i64 addrspace(1)* %r50)
	%r55 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r54,i32 8,i32 8)
	%r56 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r54,i32 9,i32 9)
	%r57 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r54,i32 10,i32 10)
	; LET loop_cp00A9 = #0(loop0093)
	%r58 = bitcast i64 addrspace(1)* %r56 to i64 addrspace(1)* addrspace(1)*
	%r59 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r58, i32 0
	%r60 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r59
	; LET tpl00A8 = apply loop_cp00A9 (loop0093,0)
	%r61 = ptrtoint i64 addrspace(1)* %r60 to i64
	%r62 = inttoptr i64 %r61 to i64 (i64 addrspace(1)*,i64)*
	; emitCall: %r62 (%r56, 1) ;; live = {%r55, %r56, %r60}
	%r63 = call token (i64,i32,i64 (i64 addrspace(1)*,i64)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_i64p1i64i64f(i64 0,i32 0,
		i64 (i64 addrspace(1)*,i64)* %r62,
		i32 2,i32 0,
		i64 addrspace(1)* %r56, i64 1,
		i32 0,i32 0,
		i64 addrspace(1)* %r55, i64 addrspace(1)* %r56, i64 addrspace(1)* %r60)
	%r64 = call i64 @llvm.experimental.gc.result.i64(token %r63)
	%r65 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r63,i32 9,i32 9)
	%r66 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r63,i32 10,i32 10)
	%r67 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r63,i32 11,i32 11)
	; LET _t000800AA = call _mll_concat (" ",world0092)
	; emitCall: @_mll_concat (@_slit_6, %r65) ;; live = {%r65}
	%r68 = bitcast [2 x i64] addrspace(1)* @_slit_6 to i64 addrspace(1)*
	%r69 = call token (i64,i32,i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64p1i64p1i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)* @_mll_concat,
		i32 2,i32 0,
		i64 addrspace(1)* %r68, i64 addrspace(1)* %r65,
		i32 0,i32 0,
		i64 addrspace(1)* %r65)
	%r70 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r69)
	%r71 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r69,i32 9,i32 9)
	; LET _t000700AB = call _mll_concat (_t000800AA,"!\n")
	; emitCall: @_mll_concat (%r70, @_slit_3) ;; live = {%r70}
	%r72 = bitcast [2 x i64] addrspace(1)* @_slit_3 to i64 addrspace(1)*
	%r73 = call token (i64,i32,i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_p1i64p1i64p1i64f(i64 0,i32 0,
		i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)* @_mll_concat,
		i32 2,i32 0,
		i64 addrspace(1)* %r70, i64 addrspace(1)* %r72,
		i32 0,i32 0,
		i64 addrspace(1)* %r70)
	%r74 = call i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token %r73)
	%r75 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r73,i32 9,i32 9)
	; LET _t000900AC = call _mll_print (_t000700AB)
	; emitCall: @_mll_print (%r74) ;; live = {%r74}
	%r76 = call token (i64,i32,void (i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_voidp1i64f(i64 0,i32 0,
		void (i64 addrspace(1)*)* @_mll_print,
		i32 1,i32 0,
		i64 addrspace(1)* %r74,
		i32 0,i32 0,
		i64 addrspace(1)* %r74)
	%r77 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r76,i32 8,i32 8)
	ret i64 1
}

define fastcc i64 @loop007A(i64 addrspace(1)* %loop_clos78,i64 %i79) gc "statepoint-example" {
entry_00B1:
	; LET n0098 = #1(loop_clos0096)
	%r80 = bitcast i64 addrspace(1)* %loop_clos78 to i64 addrspace(1)* addrspace(1)*
	%r81 = getelementptr i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r80, i32 1
	%r82 = load i64 addrspace(1)*, i64 addrspace(1)* addrspace(1)* %r81
	%r83 = ptrtoint i64 addrspace(1)* %r82 to i64
	br label %loop007A_hdr_00B2
loop007A_hdr_00B2:
	%loop84 = phi i64 addrspace(1)* [ %r90, %then_00B4 ], [ %loop_clos78, %entry_00B1 ]
	%i85 = phi i64 [ %r91, %then_00B4 ], [ %i79, %entry_00B1 ]
	%n86 = phi i64 [ %n86, %then_00B4 ], [ %r83, %entry_00B1 ]
	; IF IntLt(i009A,n009B)
	%r87 = icmp slt i64 %i85, %n86
	br i1 %r87, label %then_00B4, label %else_00B3
else_00B3:
	ret i64 1
then_00B4:
	; LET tpl00A0 = call _mll_print (" cruel")
	; emitCall: @_mll_print (@_slit_7) ;; live = {%n86, %loop84, %i85}
	%r88 = bitcast [2 x i64] addrspace(1)* @_slit_7 to i64 addrspace(1)*
	%r89 = call token (i64,i32,void (i64 addrspace(1)*)*,i32,i32,...) @llvm.experimental.gc.statepoint.p0f_voidp1i64f(i64 0,i32 0,
		void (i64 addrspace(1)*)* @_mll_print,
		i32 1,i32 0,
		i64 addrspace(1)* %r88,
		i32 0,i32 0,
		i64 addrspace(1)* %loop84)
	%r90 = call i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token %r89,i32 8,i32 8)
	; LET _t000400A1 = IntAdd (i009F,1)
	%r91 = add i64 %i85, 2
	br label %loop007A_hdr_00B2
}


declare i64 addrspace(1)* @_mll_alloc(i64)
declare i64 addrspace(1)* @_mll_concat(i64 addrspace(1)*,i64 addrspace(1)*)
declare void @_mll_exit(i64)
declare void @_mll_fail(i64 addrspace(1)*)
declare void @_mll_print(i64 addrspace(1)*)
declare i64 addrspace(1)* @_mll_str_chr(i64)
@_slit_0 = global [2 x i64] [
	i64 11,
	i64 478560413000
]

@_slit_1 = global [2 x i64] [
	i64 5,
	i64 8236
]

@_slit_2 = global [2 x i64] [
	i64 11,
	i64 431316168567
]

@_slit_3 = global [2 x i64] [
	i64 5,
	i64 2593
]

@_slit_4 = global [2 x i64] [
	i64 15,
	i64 28562436146556743
]

@_slit_5 = global [2 x i64] [
	i64 3,
	i64 44
]

@_slit_6 = global [2 x i64] [
	i64 3,
	i64 32
]

@_slit_7 = global [2 x i64] [
	i64 13,
	i64 119183017927456
]


declare token @llvm.experimental.gc.statepoint.p0f_p1i64p1i64p1i64f(i64,i32,i64 addrspace(1)* (i64 addrspace(1)*,i64 addrspace(1)*)*,i32,i32,...)
declare token @llvm.experimental.gc.statepoint.p0f_i64p1i64i64f(i64,i32,i64 (i64 addrspace(1)*,i64)*,i32,i32,...)
declare i64 @llvm.experimental.gc.result.i64(token)
declare token @llvm.experimental.gc.statepoint.p0f_voidp1i64f(i64,i32,void (i64 addrspace(1)*)*,i32,i32,...)
declare token @llvm.experimental.gc.statepoint.p0f_p1i64i64f(i64,i32,i64 addrspace(1)* (i64)*,i32,i32,...)
declare i64 addrspace(1)* @llvm.experimental.gc.result.p1i64(token)
declare i64 addrspace(1)* @llvm.experimental.gc.relocate.p1i64(token,i32,i32)
