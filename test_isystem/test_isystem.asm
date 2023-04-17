
test_isystem:     file format elf64-x86-64


Disassembly of section .init:

0000000000000500 <_init>:
 500:	f3 0f 1e fa          	endbr64 
 504:	48 83 ec 08          	sub    $0x8,%rsp
 508:	48 8b 05 e1 0a 20 00 	mov    0x200ae1(%rip),%rax        # 200ff0 <__gmon_start__>
 50f:	48 85 c0             	test   %rax,%rax
 512:	74 02                	je     516 <_init+0x16>
 514:	ff d0                	callq  *%rax
 516:	48 83 c4 08          	add    $0x8,%rsp
 51a:	c3                   	retq   

Disassembly of section .plt:

0000000000000520 <.plt>:
 520:	ff 35 e2 0a 20 00    	pushq  0x200ae2(%rip)        # 201008 <_GLOBAL_OFFSET_TABLE_+0x8>
 526:	ff 25 e4 0a 20 00    	jmpq   *0x200ae4(%rip)        # 201010 <_GLOBAL_OFFSET_TABLE_+0x10>
 52c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000530 <__cxa_finalize@plt>:
 530:	ff 25 e2 0a 20 00    	jmpq   *0x200ae2(%rip)        # 201018 <__cxa_finalize@GLIBC_2.2.5>
 536:	68 00 00 00 00       	pushq  $0x0
 53b:	e9 e0 ff ff ff       	jmpq   520 <.plt>

Disassembly of section .text:

0000000000000540 <_start>:
 540:	f3 0f 1e fa          	endbr64 
 544:	31 ed                	xor    %ebp,%ebp
 546:	49 89 d1             	mov    %rdx,%r9
 549:	5e                   	pop    %rsi
 54a:	48 89 e2             	mov    %rsp,%rdx
 54d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 551:	50                   	push   %rax
 552:	54                   	push   %rsp
 553:	4c 8d 05 76 01 00 00 	lea    0x176(%rip),%r8        # 6d0 <__libc_csu_fini>
 55a:	48 8d 0d ff 00 00 00 	lea    0xff(%rip),%rcx        # 660 <__libc_csu_init>
 561:	48 8d 3d c8 00 00 00 	lea    0xc8(%rip),%rdi        # 630 <main>
 568:	ff 15 7a 0a 20 00    	callq  *0x200a7a(%rip)        # 200fe8 <__libc_start_main@GLIBC_2.2.5>
 56e:	f4                   	hlt    

000000000000056f <.annobin_init.c>:
 56f:	90                   	nop

0000000000000570 <deregister_tm_clones>:
 570:	48 8d 3d b1 0a 20 00 	lea    0x200ab1(%rip),%rdi        # 201028 <__TMC_END__>
 577:	48 8d 05 aa 0a 20 00 	lea    0x200aaa(%rip),%rax        # 201028 <__TMC_END__>
 57e:	48 39 f8             	cmp    %rdi,%rax
 581:	74 15                	je     598 <deregister_tm_clones+0x28>
 583:	48 8b 05 56 0a 20 00 	mov    0x200a56(%rip),%rax        # 200fe0 <_ITM_deregisterTMCloneTable>
 58a:	48 85 c0             	test   %rax,%rax
 58d:	74 09                	je     598 <deregister_tm_clones+0x28>
 58f:	ff e0                	jmpq   *%rax
 591:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 598:	c3                   	retq   
 599:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000005a0 <register_tm_clones>:
 5a0:	48 8d 3d 81 0a 20 00 	lea    0x200a81(%rip),%rdi        # 201028 <__TMC_END__>
 5a7:	48 8d 35 7a 0a 20 00 	lea    0x200a7a(%rip),%rsi        # 201028 <__TMC_END__>
 5ae:	48 29 fe             	sub    %rdi,%rsi
 5b1:	48 c1 fe 03          	sar    $0x3,%rsi
 5b5:	48 89 f0             	mov    %rsi,%rax
 5b8:	48 c1 e8 3f          	shr    $0x3f,%rax
 5bc:	48 01 c6             	add    %rax,%rsi
 5bf:	48 d1 fe             	sar    %rsi
 5c2:	74 14                	je     5d8 <register_tm_clones+0x38>
 5c4:	48 8b 05 2d 0a 20 00 	mov    0x200a2d(%rip),%rax        # 200ff8 <_ITM_registerTMCloneTable>
 5cb:	48 85 c0             	test   %rax,%rax
 5ce:	74 08                	je     5d8 <register_tm_clones+0x38>
 5d0:	ff e0                	jmpq   *%rax
 5d2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 5d8:	c3                   	retq   
 5d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000005e0 <__do_global_dtors_aux>:
 5e0:	f3 0f 1e fa          	endbr64 
 5e4:	80 3d 39 0a 20 00 00 	cmpb   $0x0,0x200a39(%rip)        # 201024 <_edata>
 5eb:	75 2b                	jne    618 <__do_global_dtors_aux+0x38>
 5ed:	55                   	push   %rbp
 5ee:	48 83 3d e2 09 20 00 	cmpq   $0x0,0x2009e2(%rip)        # 200fd8 <__cxa_finalize@GLIBC_2.2.5>
 5f5:	00 
 5f6:	48 89 e5             	mov    %rsp,%rbp
 5f9:	74 0c                	je     607 <__do_global_dtors_aux+0x27>
 5fb:	48 8d 3d ae 07 20 00 	lea    0x2007ae(%rip),%rdi        # 200db0 <__dso_handle>
 602:	e8 29 ff ff ff       	callq  530 <__cxa_finalize@plt>
 607:	e8 64 ff ff ff       	callq  570 <deregister_tm_clones>
 60c:	c6 05 11 0a 20 00 01 	movb   $0x1,0x200a11(%rip)        # 201024 <_edata>
 613:	5d                   	pop    %rbp
 614:	c3                   	retq   
 615:	0f 1f 00             	nopl   (%rax)
 618:	c3                   	retq   
 619:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000620 <frame_dummy>:
 620:	f3 0f 1e fa          	endbr64 
 624:	e9 77 ff ff ff       	jmpq   5a0 <register_tm_clones>
 629:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000630 <main>:
 630:	55                   	push   %rbp
 631:	48 89 e5             	mov    %rsp,%rbp
 634:	48 83 ec 10          	sub    $0x10,%rsp
 638:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
 63f:	e8 0c 00 00 00       	callq  650 <_Z12test_isystemv>
 644:	31 c0                	xor    %eax,%eax
 646:	48 83 c4 10          	add    $0x10,%rsp
 64a:	5d                   	pop    %rbp
 64b:	c3                   	retq   
 64c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000650 <_Z12test_isystemv>:
 650:	55                   	push   %rbp
 651:	48 89 e5             	mov    %rsp,%rbp
 654:	5d                   	pop    %rbp
 655:	c3                   	retq   
 656:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 65d:	00 00 00 

0000000000000660 <__libc_csu_init>:
 660:	f3 0f 1e fa          	endbr64 
 664:	41 57                	push   %r15
 666:	49 89 d7             	mov    %rdx,%r15
 669:	41 56                	push   %r14
 66b:	49 89 f6             	mov    %rsi,%r14
 66e:	41 55                	push   %r13
 670:	41 89 fd             	mov    %edi,%r13d
 673:	41 54                	push   %r12
 675:	4c 8d 25 24 07 20 00 	lea    0x200724(%rip),%r12        # 200da0 <__frame_dummy_init_array_entry>
 67c:	55                   	push   %rbp
 67d:	48 8d 2d 24 07 20 00 	lea    0x200724(%rip),%rbp        # 200da8 <__init_array_end>
 684:	53                   	push   %rbx
 685:	4c 29 e5             	sub    %r12,%rbp
 688:	48 83 ec 08          	sub    $0x8,%rsp
 68c:	e8 6f fe ff ff       	callq  500 <_init>
 691:	48 c1 fd 03          	sar    $0x3,%rbp
 695:	74 1f                	je     6b6 <__libc_csu_init+0x56>
 697:	31 db                	xor    %ebx,%ebx
 699:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 6a0:	4c 89 fa             	mov    %r15,%rdx
 6a3:	4c 89 f6             	mov    %r14,%rsi
 6a6:	44 89 ef             	mov    %r13d,%edi
 6a9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
 6ad:	48 83 c3 01          	add    $0x1,%rbx
 6b1:	48 39 dd             	cmp    %rbx,%rbp
 6b4:	75 ea                	jne    6a0 <__libc_csu_init+0x40>
 6b6:	48 83 c4 08          	add    $0x8,%rsp
 6ba:	5b                   	pop    %rbx
 6bb:	5d                   	pop    %rbp
 6bc:	41 5c                	pop    %r12
 6be:	41 5d                	pop    %r13
 6c0:	41 5e                	pop    %r14
 6c2:	41 5f                	pop    %r15
 6c4:	c3                   	retq   
 6c5:	90                   	nop
 6c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 6cd:	00 00 00 

00000000000006d0 <__libc_csu_fini>:
 6d0:	f3 0f 1e fa          	endbr64 
 6d4:	c3                   	retq   

Disassembly of section .fini:

00000000000006d8 <_fini>:
 6d8:	f3 0f 1e fa          	endbr64 
 6dc:	48 83 ec 08          	sub    $0x8,%rsp
 6e0:	48 83 c4 08          	add    $0x8,%rsp
 6e4:	c3                   	retq   
