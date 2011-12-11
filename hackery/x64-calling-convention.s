	.file	"x64-calling-convention.cc"
	.text
.Ltext0:
	.globl	f
	.bss
	.align 8
	.type	f, @object
	.size	f, 8
f:
	.zero	8
	.text
	.globl	_Z3fooPcy
	.type	_Z3fooPcy, @function
_Z3fooPcy:
.LFB0:
	.file 1 "x64-calling-convention.cc"
	.loc 1 3 0
	.cfi_startproc
	pushq	%rbp
.LCFI0:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
.LCFI1:
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 1 4 0
	popq	%rbp
.LCFI2:
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	_Z3fooPcy, .-_Z3fooPcy
	.globl	_Z3barPcy
	.type	_Z3barPcy, @function
_Z3barPcy:
.LFB1:
	.loc 1 6 0
	.cfi_startproc
	pushq	%rbp
.LCFI3:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
.LCFI4:
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 1 7 0
	popq	%rbp
.LCFI5:
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	_Z3barPcy, .-_Z3barPcy
	.section	.rodata
.LC0:
	.string	"hello world"
	.text
	.globl	main
	.type	main, @function
main:
.LFB2:
	.loc 1 9 0
	.cfi_startproc
	pushq	%rbp
.LCFI6:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
.LCFI7:
	.cfi_def_cfa_register 6
	subq	$16, %rsp
.LBB2:
	.loc 1 10 0
	movq	$.LC0, -8(%rbp)
	.loc 1 11 0
	movq	$_Z3fooPcy, f(%rip)
	.loc 1 12 0
	movq	f(%rip), %rdx
	movq	-8(%rbp), %rax
	movl	$12, %esi
	movq	%rax, %rdi
	call	*%rdx
	.loc 1 13 0
	movl	$0, %eax
.LBE2:
	.loc 1 14 0
	leave
.LCFI8:
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x130
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF6
	.byte	0x4
	.long	.LASF7
	.long	.LASF8
	.quad	.Ltext0
	.quad	.Letext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.string	"foo"
	.byte	0x1
	.byte	0x3
	.long	.LASF3
	.quad	.LFB0
	.quad	.LFE0
	.long	.LLST0
	.long	0x6c
	.uleb128 0x3
	.long	.LASF0
	.byte	0x1
	.byte	0x3
	.long	0x6c
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.string	"n"
	.byte	0x1
	.byte	0x3
	.long	0x79
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x72
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.long	.LASF1
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x1
	.string	"bar"
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.quad	.LFB1
	.quad	.LFE1
	.long	.LLST1
	.long	0xbf
	.uleb128 0x3
	.long	.LASF0
	.byte	0x1
	.byte	0x6
	.long	0x6c
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.string	"n"
	.byte	0x1
	.byte	0x6
	.long	0x79
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.long	.LASF5
	.byte	0x1
	.byte	0x9
	.long	0x102
	.quad	.LFB2
	.quad	.LFE2
	.long	.LLST2
	.long	0x102
	.uleb128 0x8
	.quad	.LBB2
	.quad	.LBE2
	.uleb128 0x9
	.string	"s"
	.byte	0x1
	.byte	0xa
	.long	0x6c
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xb
	.long	0x119
	.uleb128 0xc
	.long	0x6c
	.uleb128 0xc
	.long	0x79
	.byte	0
	.uleb128 0xd
	.string	"f"
	.byte	0x1
	.byte	0x1
	.long	0x12d
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	f
	.uleb128 0x5
	.byte	0x8
	.long	0x109
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.quad	.LFB0-.Ltext0
	.quad	.LCFI0-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI0-.Ltext0
	.quad	.LCFI1-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI1-.Ltext0
	.quad	.LCFI2-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI2-.Ltext0
	.quad	.LFE0-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	0
	.quad	0
.LLST1:
	.quad	.LFB1-.Ltext0
	.quad	.LCFI3-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI3-.Ltext0
	.quad	.LCFI4-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI4-.Ltext0
	.quad	.LCFI5-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI5-.Ltext0
	.quad	.LFE1-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	0
	.quad	0
.LLST2:
	.quad	.LFB2-.Ltext0
	.quad	.LCFI6-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI6-.Ltext0
	.quad	.LCFI7-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI7-.Ltext0
	.quad	.LCFI8-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI8-.Ltext0
	.quad	.LFE2-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	0
	.quad	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF3:
	.string	"_Z3fooPcy"
.LASF6:
	.string	"GNU C++ 4.6.2 20111125 (prerelease)"
.LASF7:
	.string	"x64-calling-convention.cc"
.LASF1:
	.string	"char"
.LASF2:
	.string	"long long unsigned int"
.LASF5:
	.string	"main"
.LASF8:
	.string	"/home/spencertipping/conjectures/node-runabuf/hackery"
.LASF0:
	.string	"data"
.LASF4:
	.string	"_Z3barPcy"
	.ident	"GCC: (GNU) 4.6.2 20111125 (prerelease)"
	.section	.note.GNU-stack,"",@progbits
