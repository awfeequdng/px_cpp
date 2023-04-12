
StringRef:     file format elf64-x86-64


Disassembly of section .init:

00000000000012c0 <_init>:
    12c0:	f3 0f 1e fa          	endbr64 
    12c4:	48 83 ec 08          	sub    $0x8,%rsp
    12c8:	48 8b 05 e9 4c 20 00 	mov    0x204ce9(%rip),%rax        # 205fb8 <__gmon_start__>
    12cf:	48 85 c0             	test   %rax,%rax
    12d2:	74 02                	je     12d6 <_init+0x16>
    12d4:	ff d0                	callq  *%rax
    12d6:	48 83 c4 08          	add    $0x8,%rsp
    12da:	c3                   	retq   

Disassembly of section .plt:

00000000000012e0 <.plt>:
    12e0:	ff 35 22 4d 20 00    	pushq  0x204d22(%rip)        # 206008 <_GLOBAL_OFFSET_TABLE_+0x8>
    12e6:	ff 25 24 4d 20 00    	jmpq   *0x204d24(%rip)        # 206010 <_GLOBAL_OFFSET_TABLE_+0x10>
    12ec:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000012f0 <__cxa_free_exception@plt>:
    12f0:	ff 25 22 4d 20 00    	jmpq   *0x204d22(%rip)        # 206018 <__cxa_free_exception>
    12f6:	68 00 00 00 00       	pushq  $0x0
    12fb:	e9 e0 ff ff ff       	jmpq   12e0 <.plt>

0000000000001300 <_ZN9benchmark27ReportUnrecognizedArgumentsEiPPc@plt>:
    1300:	ff 25 1a 4d 20 00    	jmpq   *0x204d1a(%rip)        # 206020 <_ZN9benchmark27ReportUnrecognizedArgumentsEiPPc>
    1306:	68 01 00 00 00       	pushq  $0x1
    130b:	e9 d0 ff ff ff       	jmpq   12e0 <.plt>

0000000000001310 <_ZNSt11logic_errorC2EPKc@plt>:
    1310:	ff 25 12 4d 20 00    	jmpq   *0x204d12(%rip)        # 206028 <_ZNSt11logic_errorC2EPKc>
    1316:	68 02 00 00 00       	pushq  $0x2
    131b:	e9 c0 ff ff ff       	jmpq   12e0 <.plt>

0000000000001320 <__cxa_begin_catch@plt>:
    1320:	ff 25 0a 4d 20 00    	jmpq   *0x204d0a(%rip)        # 206030 <__cxa_begin_catch>
    1326:	68 03 00 00 00       	pushq  $0x3
    132b:	e9 b0 ff ff ff       	jmpq   12e0 <.plt>

0000000000001330 <_ZdaPv@plt>:
    1330:	ff 25 02 4d 20 00    	jmpq   *0x204d02(%rip)        # 206038 <_ZdaPv>
    1336:	68 04 00 00 00       	pushq  $0x4
    133b:	e9 a0 ff ff ff       	jmpq   12e0 <.plt>

0000000000001340 <_Znwm@plt>:
    1340:	ff 25 fa 4c 20 00    	jmpq   *0x204cfa(%rip)        # 206040 <_Znwm>
    1346:	68 05 00 00 00       	pushq  $0x5
    134b:	e9 90 ff ff ff       	jmpq   12e0 <.plt>

0000000000001350 <_ZN9benchmark5State16StartKeepRunningEv@plt>:
    1350:	ff 25 f2 4c 20 00    	jmpq   *0x204cf2(%rip)        # 206048 <_ZN9benchmark5State16StartKeepRunningEv>
    1356:	68 06 00 00 00       	pushq  $0x6
    135b:	e9 80 ff ff ff       	jmpq   12e0 <.plt>

0000000000001360 <_ZN9benchmark22RunSpecifiedBenchmarksEv@plt>:
    1360:	ff 25 ea 4c 20 00    	jmpq   *0x204cea(%rip)        # 206050 <_ZN9benchmark22RunSpecifiedBenchmarksEv>
    1366:	68 07 00 00 00       	pushq  $0x7
    136b:	e9 70 ff ff ff       	jmpq   12e0 <.plt>

0000000000001370 <_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE@plt>:
    1370:	ff 25 e2 4c 20 00    	jmpq   *0x204ce2(%rip)        # 206058 <_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE>
    1376:	68 08 00 00 00       	pushq  $0x8
    137b:	e9 60 ff ff ff       	jmpq   12e0 <.plt>

0000000000001380 <_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcm@plt>:
    1380:	ff 25 da 4c 20 00    	jmpq   *0x204cda(%rip)        # 206060 <_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcm>
    1386:	68 09 00 00 00       	pushq  $0x9
    138b:	e9 50 ff ff ff       	jmpq   12e0 <.plt>

0000000000001390 <_ZdlPv@plt>:
    1390:	ff 25 d2 4c 20 00    	jmpq   *0x204cd2(%rip)        # 206068 <_ZdlPv>
    1396:	68 0a 00 00 00       	pushq  $0xa
    139b:	e9 40 ff ff ff       	jmpq   12e0 <.plt>

00000000000013a0 <_Znam@plt>:
    13a0:	ff 25 ca 4c 20 00    	jmpq   *0x204cca(%rip)        # 206070 <_Znam>
    13a6:	68 0b 00 00 00       	pushq  $0xb
    13ab:	e9 30 ff ff ff       	jmpq   12e0 <.plt>

00000000000013b0 <_ZN9benchmark10InitializeEPiPPcPFvvE@plt>:
    13b0:	ff 25 c2 4c 20 00    	jmpq   *0x204cc2(%rip)        # 206078 <_ZN9benchmark10InitializeEPiPPcPFvvE>
    13b6:	68 0c 00 00 00       	pushq  $0xc
    13bb:	e9 20 ff ff ff       	jmpq   12e0 <.plt>

00000000000013c0 <strlen@plt>:
    13c0:	ff 25 ba 4c 20 00    	jmpq   *0x204cba(%rip)        # 206080 <strlen@GLIBC_2.2.5>
    13c6:	68 0d 00 00 00       	pushq  $0xd
    13cb:	e9 10 ff ff ff       	jmpq   12e0 <.plt>

00000000000013d0 <__cxa_allocate_exception@plt>:
    13d0:	ff 25 b2 4c 20 00    	jmpq   *0x204cb2(%rip)        # 206088 <__cxa_allocate_exception>
    13d6:	68 0e 00 00 00       	pushq  $0xe
    13db:	e9 00 ff ff ff       	jmpq   12e0 <.plt>

00000000000013e0 <_ZdlPvSt11align_val_t@plt>:
    13e0:	ff 25 aa 4c 20 00    	jmpq   *0x204caa(%rip)        # 206090 <_ZdlPvSt11align_val_t>
    13e6:	68 0f 00 00 00       	pushq  $0xf
    13eb:	e9 f0 fe ff ff       	jmpq   12e0 <.plt>

00000000000013f0 <_Unwind_Resume@plt>:
    13f0:	ff 25 a2 4c 20 00    	jmpq   *0x204ca2(%rip)        # 206098 <_Unwind_Resume>
    13f6:	68 10 00 00 00       	pushq  $0x10
    13fb:	e9 e0 fe ff ff       	jmpq   12e0 <.plt>

0000000000001400 <_ZN9benchmark8internal9Benchmark3ArgEl@plt>:
    1400:	ff 25 9a 4c 20 00    	jmpq   *0x204c9a(%rip)        # 2060a0 <_ZN9benchmark8internal9Benchmark3ArgEl>
    1406:	68 11 00 00 00       	pushq  $0x11
    140b:	e9 d0 fe ff ff       	jmpq   12e0 <.plt>

0000000000001410 <__cxa_finalize@plt>:
    1410:	ff 25 92 4c 20 00    	jmpq   *0x204c92(%rip)        # 2060a8 <__cxa_finalize@GLIBC_2.2.5>
    1416:	68 12 00 00 00       	pushq  $0x12
    141b:	e9 c0 fe ff ff       	jmpq   12e0 <.plt>

0000000000001420 <_ZN9benchmark8ShutdownEv@plt>:
    1420:	ff 25 8a 4c 20 00    	jmpq   *0x204c8a(%rip)        # 2060b0 <_ZN9benchmark8ShutdownEv>
    1426:	68 13 00 00 00       	pushq  $0x13
    142b:	e9 b0 fe ff ff       	jmpq   12e0 <.plt>

0000000000001430 <_ZN9benchmark8internal17InitializeStreamsEv@plt>:
    1430:	ff 25 82 4c 20 00    	jmpq   *0x204c82(%rip)        # 2060b8 <_ZN9benchmark8internal17InitializeStreamsEv>
    1436:	68 14 00 00 00       	pushq  $0x14
    143b:	e9 a0 fe ff ff       	jmpq   12e0 <.plt>

0000000000001440 <__cxa_throw@plt>:
    1440:	ff 25 7a 4c 20 00    	jmpq   *0x204c7a(%rip)        # 2060c0 <__cxa_throw>
    1446:	68 15 00 00 00       	pushq  $0x15
    144b:	e9 90 fe ff ff       	jmpq   12e0 <.plt>

0000000000001450 <_ZnwmSt11align_val_t@plt>:
    1450:	ff 25 72 4c 20 00    	jmpq   *0x204c72(%rip)        # 2060c8 <_ZnwmSt11align_val_t>
    1456:	68 16 00 00 00       	pushq  $0x16
    145b:	e9 80 fe ff ff       	jmpq   12e0 <.plt>

0000000000001460 <srand@plt>:
    1460:	ff 25 6a 4c 20 00    	jmpq   *0x204c6a(%rip)        # 2060d0 <srand@GLIBC_2.2.5>
    1466:	68 17 00 00 00       	pushq  $0x17
    146b:	e9 70 fe ff ff       	jmpq   12e0 <.plt>

0000000000001470 <memcmp@plt>:
    1470:	ff 25 62 4c 20 00    	jmpq   *0x204c62(%rip)        # 2060d8 <memcmp@GLIBC_2.2.5>
    1476:	68 18 00 00 00       	pushq  $0x18
    147b:	e9 60 fe ff ff       	jmpq   12e0 <.plt>

0000000000001480 <_ZN9benchmark5State17FinishKeepRunningEv@plt>:
    1480:	ff 25 5a 4c 20 00    	jmpq   *0x204c5a(%rip)        # 2060e0 <_ZN9benchmark5State17FinishKeepRunningEv>
    1486:	68 19 00 00 00       	pushq  $0x19
    148b:	e9 50 fe ff ff       	jmpq   12e0 <.plt>

0000000000001490 <_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev@plt>:
    1490:	ff 25 52 4c 20 00    	jmpq   *0x204c52(%rip)        # 2060e8 <_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev>
    1496:	68 1a 00 00 00       	pushq  $0x1a
    149b:	e9 40 fe ff ff       	jmpq   12e0 <.plt>

00000000000014a0 <rand@plt>:
    14a0:	ff 25 4a 4c 20 00    	jmpq   *0x204c4a(%rip)        # 2060f0 <rand@GLIBC_2.2.5>
    14a6:	68 1b 00 00 00       	pushq  $0x1b
    14ab:	e9 30 fe ff ff       	jmpq   12e0 <.plt>

00000000000014b0 <_ZSt9terminatev@plt>:
    14b0:	ff 25 42 4c 20 00    	jmpq   *0x204c42(%rip)        # 2060f8 <_ZSt9terminatev>
    14b6:	68 1c 00 00 00       	pushq  $0x1c
    14bb:	e9 20 fe ff ff       	jmpq   12e0 <.plt>

00000000000014c0 <_ZN9benchmark8internal9BenchmarkC2EPKc@plt>:
    14c0:	ff 25 3a 4c 20 00    	jmpq   *0x204c3a(%rip)        # 206100 <_ZN9benchmark8internal9BenchmarkC2EPKc>
    14c6:	68 1d 00 00 00       	pushq  $0x1d
    14cb:	e9 10 fe ff ff       	jmpq   12e0 <.plt>

Disassembly of section .text:

00000000000014d0 <__cxx_global_var_init>:
    14d0:	55                   	push   %rbp
    14d1:	48 89 e5             	mov    %rsp,%rbp
    14d4:	e8 57 ff ff ff       	callq  1430 <_ZN9benchmark8internal17InitializeStreamsEv@plt>
    14d9:	89 05 41 4c 20 00    	mov    %eax,0x204c41(%rip)        # 206120 <_ZN9benchmark8internalL18stream_init_anchorE>
    14df:	5d                   	pop    %rbp
    14e0:	c3                   	retq   
    14e1:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
    14e8:	0f 1f 84 00 00 00 00 
    14ef:	00 

00000000000014f0 <__cxx_global_var_init.1>:
    14f0:	55                   	push   %rbp
    14f1:	48 89 e5             	mov    %rsp,%rbp
    14f4:	48 83 ec 20          	sub    $0x20,%rsp
    14f8:	bf e0 00 00 00       	mov    $0xe0,%edi
    14fd:	e8 3e fe ff ff       	callq  1340 <_Znwm@plt>
    1502:	48 89 c7             	mov    %rax,%rdi
    1505:	48 89 f8             	mov    %rdi,%rax
    1508:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    150c:	48 8d 35 4d 2d 00 00 	lea    0x2d4d(%rip),%rsi        # 4260 <_IO_stdin_used+0x18>
    1513:	48 8d 15 66 02 00 00 	lea    0x266(%rip),%rdx        # 1780 <_Z16BM_cmp_StringRefRN9benchmark5StateE>
    151a:	e8 21 0c 00 00       	callq  2140 <_ZN9benchmark8internal17FunctionBenchmarkC2EPKcPFvRNS_5StateEE>
    151f:	e9 00 00 00 00       	jmpq   1524 <__cxx_global_var_init.1+0x34>
    1524:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
    1528:	e8 43 fe ff ff       	callq  1370 <_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE@plt>
    152d:	48 89 c7             	mov    %rax,%rdi
    1530:	be 00 00 40 00       	mov    $0x400000,%esi
    1535:	e8 c6 fe ff ff       	callq  1400 <_ZN9benchmark8internal9Benchmark3ArgEl@plt>
    153a:	48 89 05 e7 4b 20 00 	mov    %rax,0x204be7(%rip)        # 206128 <_ZL27benchmark_uniq_2_benchmark_>
    1541:	48 83 c4 20          	add    $0x20,%rsp
    1545:	5d                   	pop    %rbp
    1546:	c3                   	retq   
    1547:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
    154b:	48 89 c1             	mov    %rax,%rcx
    154e:	89 d0                	mov    %edx,%eax
    1550:	48 89 4d f8          	mov    %rcx,-0x8(%rbp)
    1554:	89 45 f4             	mov    %eax,-0xc(%rbp)
    1557:	e8 34 fe ff ff       	callq  1390 <_ZdlPv@plt>
    155c:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    1560:	e8 8b fe ff ff       	callq  13f0 <_Unwind_Resume@plt>
    1565:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    156c:	00 00 00 00 

0000000000001570 <__cxx_global_var_init.2>:
    1570:	55                   	push   %rbp
    1571:	48 89 e5             	mov    %rsp,%rbp
    1574:	48 83 ec 20          	sub    $0x20,%rsp
    1578:	bf e0 00 00 00       	mov    $0xe0,%edi
    157d:	e8 be fd ff ff       	callq  1340 <_Znwm@plt>
    1582:	48 89 c7             	mov    %rax,%rdi
    1585:	48 89 f8             	mov    %rdi,%rax
    1588:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    158c:	48 8d 35 de 2c 00 00 	lea    0x2cde(%rip),%rsi        # 4271 <_IO_stdin_used+0x29>
    1593:	48 8d 15 66 07 00 00 	lea    0x766(%rip),%rdx        # 1d00 <_Z18BM_cmp_string_viewRN9benchmark5StateE>
    159a:	e8 a1 0b 00 00       	callq  2140 <_ZN9benchmark8internal17FunctionBenchmarkC2EPKcPFvRNS_5StateEE>
    159f:	e9 00 00 00 00       	jmpq   15a4 <__cxx_global_var_init.2+0x34>
    15a4:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
    15a8:	e8 c3 fd ff ff       	callq  1370 <_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE@plt>
    15ad:	48 89 c7             	mov    %rax,%rdi
    15b0:	be 00 00 40 00       	mov    $0x400000,%esi
    15b5:	e8 46 fe ff ff       	callq  1400 <_ZN9benchmark8internal9Benchmark3ArgEl@plt>
    15ba:	48 89 05 6f 4b 20 00 	mov    %rax,0x204b6f(%rip)        # 206130 <_ZL27benchmark_uniq_3_benchmark_>
    15c1:	48 83 c4 20          	add    $0x20,%rsp
    15c5:	5d                   	pop    %rbp
    15c6:	c3                   	retq   
    15c7:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
    15cb:	48 89 c1             	mov    %rax,%rcx
    15ce:	89 d0                	mov    %edx,%eax
    15d0:	48 89 4d f8          	mov    %rcx,-0x8(%rbp)
    15d4:	89 45 f4             	mov    %eax,-0xc(%rbp)
    15d7:	e8 b4 fd ff ff       	callq  1390 <_ZdlPv@plt>
    15dc:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    15e0:	e8 0b fe ff ff       	callq  13f0 <_Unwind_Resume@plt>
    15e5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    15ec:	00 00 00 00 

00000000000015f0 <__cxx_global_var_init.4>:
    15f0:	55                   	push   %rbp
    15f1:	48 89 e5             	mov    %rsp,%rbp
    15f4:	48 83 ec 20          	sub    $0x20,%rsp
    15f8:	bf e0 00 00 00       	mov    $0xe0,%edi
    15fd:	e8 3e fd ff ff       	callq  1340 <_Znwm@plt>
    1602:	48 89 c7             	mov    %rax,%rdi
    1605:	48 89 f8             	mov    %rdi,%rax
    1608:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    160c:	48 8d 35 71 2c 00 00 	lea    0x2c71(%rip),%rsi        # 4284 <_IO_stdin_used+0x3c>
    1613:	48 8d 15 46 08 00 00 	lea    0x846(%rip),%rdx        # 1e60 <_Z13BM_cmp_stringRN9benchmark5StateE>
    161a:	e8 21 0b 00 00       	callq  2140 <_ZN9benchmark8internal17FunctionBenchmarkC2EPKcPFvRNS_5StateEE>
    161f:	e9 00 00 00 00       	jmpq   1624 <__cxx_global_var_init.4+0x34>
    1624:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
    1628:	e8 43 fd ff ff       	callq  1370 <_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE@plt>
    162d:	48 89 c7             	mov    %rax,%rdi
    1630:	be 00 00 40 00       	mov    $0x400000,%esi
    1635:	e8 c6 fd ff ff       	callq  1400 <_ZN9benchmark8internal9Benchmark3ArgEl@plt>
    163a:	48 89 05 f7 4a 20 00 	mov    %rax,0x204af7(%rip)        # 206138 <_ZL27benchmark_uniq_4_benchmark_>
    1641:	48 83 c4 20          	add    $0x20,%rsp
    1645:	5d                   	pop    %rbp
    1646:	c3                   	retq   
    1647:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
    164b:	48 89 c1             	mov    %rax,%rcx
    164e:	89 d0                	mov    %edx,%eax
    1650:	48 89 4d f8          	mov    %rcx,-0x8(%rbp)
    1654:	89 45 f4             	mov    %eax,-0xc(%rbp)
    1657:	e8 34 fd ff ff       	callq  1390 <_ZdlPv@plt>
    165c:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    1660:	e8 8b fd ff ff       	callq  13f0 <_Unwind_Resume@plt>
    1665:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    166c:	00 00 00 00 

0000000000001670 <_GLOBAL__sub_I_StringRef.cc>:
    1670:	55                   	push   %rbp
    1671:	48 89 e5             	mov    %rsp,%rbp
    1674:	e8 57 fe ff ff       	callq  14d0 <__cxx_global_var_init>
    1679:	e8 72 fe ff ff       	callq  14f0 <__cxx_global_var_init.1>
    167e:	e8 ed fe ff ff       	callq  1570 <__cxx_global_var_init.2>
    1683:	e8 68 ff ff ff       	callq  15f0 <__cxx_global_var_init.4>
    1688:	5d                   	pop    %rbp
    1689:	c3                   	retq   

000000000000168a <.annobin_elf_init.c.hot>:
    168a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001690 <_start>:
    1690:	f3 0f 1e fa          	endbr64 
    1694:	31 ed                	xor    %ebp,%ebp
    1696:	49 89 d1             	mov    %rdx,%r9
    1699:	5e                   	pop    %rsi
    169a:	48 89 e2             	mov    %rsp,%rdx
    169d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    16a1:	50                   	push   %rax
    16a2:	54                   	push   %rsp
    16a3:	4c 8d 05 86 2b 00 00 	lea    0x2b86(%rip),%r8        # 4230 <__libc_csu_fini>
    16aa:	48 8d 0d 0f 2b 00 00 	lea    0x2b0f(%rip),%rcx        # 41c0 <__libc_csu_init>
    16b1:	48 8d 3d 08 09 00 00 	lea    0x908(%rip),%rdi        # 1fc0 <main>
    16b8:	ff 15 02 49 20 00    	callq  *0x204902(%rip)        # 205fc0 <__libc_start_main@GLIBC_2.2.5>
    16be:	f4                   	hlt    

00000000000016bf <.annobin_init.c>:
    16bf:	90                   	nop

00000000000016c0 <deregister_tm_clones>:
    16c0:	48 8d 3d 51 4a 20 00 	lea    0x204a51(%rip),%rdi        # 206118 <__TMC_END__>
    16c7:	48 8d 05 4a 4a 20 00 	lea    0x204a4a(%rip),%rax        # 206118 <__TMC_END__>
    16ce:	48 39 f8             	cmp    %rdi,%rax
    16d1:	74 15                	je     16e8 <deregister_tm_clones+0x28>
    16d3:	48 8b 05 ee 48 20 00 	mov    0x2048ee(%rip),%rax        # 205fc8 <_ITM_deregisterTMCloneTable>
    16da:	48 85 c0             	test   %rax,%rax
    16dd:	74 09                	je     16e8 <deregister_tm_clones+0x28>
    16df:	ff e0                	jmpq   *%rax
    16e1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    16e8:	c3                   	retq   
    16e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000016f0 <register_tm_clones>:
    16f0:	48 8d 3d 21 4a 20 00 	lea    0x204a21(%rip),%rdi        # 206118 <__TMC_END__>
    16f7:	48 8d 35 1a 4a 20 00 	lea    0x204a1a(%rip),%rsi        # 206118 <__TMC_END__>
    16fe:	48 29 fe             	sub    %rdi,%rsi
    1701:	48 c1 fe 03          	sar    $0x3,%rsi
    1705:	48 89 f0             	mov    %rsi,%rax
    1708:	48 c1 e8 3f          	shr    $0x3f,%rax
    170c:	48 01 c6             	add    %rax,%rsi
    170f:	48 d1 fe             	sar    %rsi
    1712:	74 14                	je     1728 <register_tm_clones+0x38>
    1714:	48 8b 05 bd 48 20 00 	mov    0x2048bd(%rip),%rax        # 205fd8 <_ITM_registerTMCloneTable>
    171b:	48 85 c0             	test   %rax,%rax
    171e:	74 08                	je     1728 <register_tm_clones+0x38>
    1720:	ff e0                	jmpq   *%rax
    1722:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1728:	c3                   	retq   
    1729:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001730 <__do_global_dtors_aux>:
    1730:	f3 0f 1e fa          	endbr64 
    1734:	80 3d dd 49 20 00 00 	cmpb   $0x0,0x2049dd(%rip)        # 206118 <__TMC_END__>
    173b:	75 2b                	jne    1768 <__do_global_dtors_aux+0x38>
    173d:	55                   	push   %rbp
    173e:	48 83 3d 9a 48 20 00 	cmpq   $0x0,0x20489a(%rip)        # 205fe0 <__cxa_finalize@GLIBC_2.2.5>
    1745:	00 
    1746:	48 89 e5             	mov    %rsp,%rbp
    1749:	74 0c                	je     1757 <__do_global_dtors_aux+0x27>
    174b:	48 8d 3d a6 45 20 00 	lea    0x2045a6(%rip),%rdi        # 205cf8 <__dso_handle>
    1752:	e8 b9 fc ff ff       	callq  1410 <__cxa_finalize@plt>
    1757:	e8 64 ff ff ff       	callq  16c0 <deregister_tm_clones>
    175c:	c6 05 b5 49 20 00 01 	movb   $0x1,0x2049b5(%rip)        # 206118 <__TMC_END__>
    1763:	5d                   	pop    %rbp
    1764:	c3                   	retq   
    1765:	0f 1f 00             	nopl   (%rax)
    1768:	c3                   	retq   
    1769:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001770 <frame_dummy>:
    1770:	f3 0f 1e fa          	endbr64 
    1774:	e9 77 ff ff ff       	jmpq   16f0 <register_tm_clones>
    1779:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001780 <_Z16BM_cmp_StringRefRN9benchmark5StateE>:
    1780:	55                   	push   %rbp
    1781:	48 89 e5             	mov    %rsp,%rbp
    1784:	48 81 ec 10 02 00 00 	sub    $0x210,%rsp
    178b:	48 89 bd f0 fe ff ff 	mov    %rdi,-0x110(%rbp)
    1792:	48 c7 85 e8 fe ff ff 	movq   $0x8000000,-0x118(%rbp)
    1799:	00 00 00 08 
    179d:	bf 00 00 00 08       	mov    $0x8000000,%edi
    17a2:	e8 f9 fb ff ff       	callq  13a0 <_Znam@plt>
    17a7:	48 89 85 e0 fe ff ff 	mov    %rax,-0x120(%rbp)
    17ae:	bf 00 00 00 08       	mov    $0x8000000,%edi
    17b3:	e8 e8 fb ff ff       	callq  13a0 <_Znam@plt>
    17b8:	48 89 85 d8 fe ff ff 	mov    %rax,-0x128(%rbp)
    17bf:	bf 00 00 00 08       	mov    $0x8000000,%edi
    17c4:	e8 d7 fb ff ff       	callq  13a0 <_Znam@plt>
    17c9:	48 89 85 d0 fe ff ff 	mov    %rax,-0x130(%rbp)
    17d0:	bf 01 00 00 00       	mov    $0x1,%edi
    17d5:	e8 86 fc ff ff       	callq  1460 <srand@plt>
    17da:	c7 85 cc fe ff ff 00 	movl   $0x0,-0x134(%rbp)
    17e1:	00 00 00 
    17e4:	8b 85 cc fe ff ff    	mov    -0x134(%rbp),%eax
    17ea:	48 3d 00 00 00 08    	cmp    $0x8000000,%rax
    17f0:	0f 83 62 00 00 00    	jae    1858 <_Z16BM_cmp_StringRefRN9benchmark5StateE+0xd8>
    17f6:	e8 a5 fc ff ff       	callq  14a0 <rand@plt>
    17fb:	88 c2                	mov    %al,%dl
    17fd:	48 8b 85 e0 fe ff ff 	mov    -0x120(%rbp),%rax
    1804:	8b 8d cc fe ff ff    	mov    -0x134(%rbp),%ecx
    180a:	88 14 08             	mov    %dl,(%rax,%rcx,1)
    180d:	48 8b 85 e0 fe ff ff 	mov    -0x120(%rbp),%rax
    1814:	8b 8d cc fe ff ff    	mov    -0x134(%rbp),%ecx
    181a:	8a 14 08             	mov    (%rax,%rcx,1),%dl
    181d:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
    1824:	8b 8d cc fe ff ff    	mov    -0x134(%rbp),%ecx
    182a:	88 14 08             	mov    %dl,(%rax,%rcx,1)
    182d:	e8 6e fc ff ff       	callq  14a0 <rand@plt>
    1832:	88 c2                	mov    %al,%dl
    1834:	48 8b 85 d0 fe ff ff 	mov    -0x130(%rbp),%rax
    183b:	8b 8d cc fe ff ff    	mov    -0x134(%rbp),%ecx
    1841:	88 14 08             	mov    %dl,(%rax,%rcx,1)
    1844:	8b 85 cc fe ff ff    	mov    -0x134(%rbp),%eax
    184a:	83 c0 01             	add    $0x1,%eax
    184d:	89 85 cc fe ff ff    	mov    %eax,-0x134(%rbp)
    1853:	e9 8c ff ff ff       	jmpq   17e4 <_Z16BM_cmp_StringRefRN9benchmark5StateE+0x64>
    1858:	c7 85 c8 fe ff ff 01 	movl   $0x1,-0x138(%rbp)
    185f:	00 00 00 
    1862:	48 8b 85 f0 fe ff ff 	mov    -0x110(%rbp),%rax
    1869:	48 89 85 c0 fe ff ff 	mov    %rax,-0x140(%rbp)
    1870:	48 8b 85 c0 fe ff ff 	mov    -0x140(%rbp),%rax
    1877:	48 89 85 f8 fe ff ff 	mov    %rax,-0x108(%rbp)
    187e:	48 8b 85 f8 fe ff ff 	mov    -0x108(%rbp),%rax
    1885:	48 8d 8d 00 ff ff ff 	lea    -0x100(%rbp),%rcx
    188c:	48 89 4d d8          	mov    %rcx,-0x28(%rbp)
    1890:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
    1894:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1898:	48 89 85 40 fe ff ff 	mov    %rax,-0x1c0(%rbp)
    189f:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    18a3:	f6 40 1a 01          	testb  $0x1,0x1a(%rax)
    18a7:	0f 84 0e 00 00 00    	je     18bb <_Z16BM_cmp_StringRefRN9benchmark5StateE+0x13b>
    18ad:	31 c0                	xor    %eax,%eax
    18af:	48 89 85 38 fe ff ff 	mov    %rax,-0x1c8(%rbp)
    18b6:	e9 0f 00 00 00       	jmpq   18ca <_Z16BM_cmp_StringRefRN9benchmark5StateE+0x14a>
    18bb:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    18bf:	48 8b 40 10          	mov    0x10(%rax),%rax
    18c3:	48 89 85 38 fe ff ff 	mov    %rax,-0x1c8(%rbp)
    18ca:	48 8b 85 40 fe ff ff 	mov    -0x1c0(%rbp),%rax
    18d1:	48 8b 8d 38 fe ff ff 	mov    -0x1c8(%rbp),%rcx
    18d8:	48 89 08             	mov    %rcx,(%rax)
    18db:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
    18df:	48 89 48 08          	mov    %rcx,0x8(%rax)
    18e3:	48 8b 8d 00 ff ff ff 	mov    -0x100(%rbp),%rcx
    18ea:	48 8b 85 08 ff ff ff 	mov    -0xf8(%rbp),%rax
    18f1:	48 89 8d b0 fe ff ff 	mov    %rcx,-0x150(%rbp)
    18f8:	48 89 85 b8 fe ff ff 	mov    %rax,-0x148(%rbp)
    18ff:	48 8b 85 c0 fe ff ff 	mov    -0x140(%rbp),%rax
    1906:	48 89 85 10 ff ff ff 	mov    %rax,-0xf0(%rbp)
    190d:	48 8b bd 10 ff ff ff 	mov    -0xf0(%rbp),%rdi
    1914:	e8 37 fa ff ff       	callq  1350 <_ZN9benchmark5State16StartKeepRunningEv@plt>
    1919:	48 8d 85 18 ff ff ff 	lea    -0xe8(%rbp),%rax
    1920:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    1924:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    1928:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
    192f:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
    1936:	00 
    1937:	48 8b 8d 18 ff ff ff 	mov    -0xe8(%rbp),%rcx
    193e:	48 8b 85 20 ff ff ff 	mov    -0xe0(%rbp),%rax
    1945:	48 89 8d a0 fe ff ff 	mov    %rcx,-0x160(%rbp)
    194c:	48 89 85 a8 fe ff ff 	mov    %rax,-0x158(%rbp)
    1953:	48 8d 85 b0 fe ff ff 	lea    -0x150(%rbp),%rax
    195a:	48 89 85 30 ff ff ff 	mov    %rax,-0xd0(%rbp)
    1961:	48 8d 85 a0 fe ff ff 	lea    -0x160(%rbp),%rax
    1968:	48 89 85 28 ff ff ff 	mov    %rax,-0xd8(%rbp)
    196f:	48 8b 85 30 ff ff ff 	mov    -0xd0(%rbp),%rax
    1976:	48 89 85 30 fe ff ff 	mov    %rax,-0x1d0(%rbp)
    197d:	48 83 38 00          	cmpq   $0x0,(%rax)
    1981:	0f 84 0c 00 00 00    	je     1993 <_Z16BM_cmp_StringRefRN9benchmark5StateE+0x213>
    1987:	c6 85 3f ff ff ff 01 	movb   $0x1,-0xc1(%rbp)
    198e:	e9 17 00 00 00       	jmpq   19aa <_Z16BM_cmp_StringRefRN9benchmark5StateE+0x22a>
    1993:	48 8b 85 30 fe ff ff 	mov    -0x1d0(%rbp),%rax
    199a:	48 8b 78 08          	mov    0x8(%rax),%rdi
    199e:	e8 dd fa ff ff       	callq  1480 <_ZN9benchmark5State17FinishKeepRunningEv@plt>
    19a3:	c6 85 3f ff ff ff 00 	movb   $0x0,-0xc1(%rbp)
    19aa:	f6 85 3f ff ff ff 01 	testb  $0x1,-0xc1(%rbp)
    19b1:	0f 85 05 00 00 00    	jne    19bc <_Z16BM_cmp_StringRefRN9benchmark5StateE+0x23c>
    19b7:	e9 8c 01 00 00       	jmpq   1b48 <_Z16BM_cmp_StringRefRN9benchmark5StateE+0x3c8>
    19bc:	48 8d 85 b0 fe ff ff 	lea    -0x150(%rbp),%rax
    19c3:	48 89 85 40 ff ff ff 	mov    %rax,-0xc0(%rbp)
    19ca:	48 8b b5 e0 fe ff ff 	mov    -0x120(%rbp),%rsi
    19d1:	48 8d bd 80 fe ff ff 	lea    -0x180(%rbp),%rdi
    19d8:	e8 93 06 00 00       	callq  2070 <_ZN9StringRefC2EPKc>
    19dd:	48 8b b5 e0 fe ff ff 	mov    -0x120(%rbp),%rsi
    19e4:	48 8d bd 70 fe ff ff 	lea    -0x190(%rbp),%rdi
    19eb:	e8 80 06 00 00       	callq  2070 <_ZN9StringRefC2EPKc>
    19f0:	48 8b 85 80 fe ff ff 	mov    -0x180(%rbp),%rax
    19f7:	48 89 85 58 fe ff ff 	mov    %rax,-0x1a8(%rbp)
    19fe:	48 8b 85 88 fe ff ff 	mov    -0x178(%rbp),%rax
    1a05:	48 89 85 60 fe ff ff 	mov    %rax,-0x1a0(%rbp)
    1a0c:	48 8b 85 70 fe ff ff 	mov    -0x190(%rbp),%rax
    1a13:	48 89 85 48 fe ff ff 	mov    %rax,-0x1b8(%rbp)
    1a1a:	48 8b 85 78 fe ff ff 	mov    -0x188(%rbp),%rax
    1a21:	48 89 85 50 fe ff ff 	mov    %rax,-0x1b0(%rbp)
    1a28:	48 8b bd 58 fe ff ff 	mov    -0x1a8(%rbp),%rdi
    1a2f:	48 8b b5 60 fe ff ff 	mov    -0x1a0(%rbp),%rsi
    1a36:	48 8b 95 48 fe ff ff 	mov    -0x1b8(%rbp),%rdx
    1a3d:	48 8b 8d 50 fe ff ff 	mov    -0x1b0(%rbp),%rcx
    1a44:	e8 67 06 00 00       	callq  20b0 <_Zlt9StringRefS_>
    1a49:	24 01                	and    $0x1,%al
    1a4b:	0f b6 c0             	movzbl %al,%eax
    1a4e:	89 85 6c fe ff ff    	mov    %eax,-0x194(%rbp)
    1a54:	48 8d 85 6c fe ff ff 	lea    -0x194(%rbp),%rax
    1a5b:	48 89 85 48 ff ff ff 	mov    %rax,-0xb8(%rbp)
    1a62:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
    1a69:	8b 08                	mov    (%rax),%ecx
    1a6b:	48 8d 85 80 fe ff ff 	lea    -0x180(%rbp),%rax
    1a72:	48 89 85 58 ff ff ff 	mov    %rax,-0xa8(%rbp)
    1a79:	48 8b 85 58 ff ff ff 	mov    -0xa8(%rbp),%rax
    1a80:	48 8d 85 70 fe ff ff 	lea    -0x190(%rbp),%rax
    1a87:	48 89 85 50 ff ff ff 	mov    %rax,-0xb0(%rbp)
    1a8e:	48 8b 85 50 ff ff ff 	mov    -0xb0(%rbp),%rax
    1a95:	bf 04 00 00 00       	mov    $0x4,%edi
    1a9a:	e8 b1 08 00 00       	callq  2350 <_ZNSt3__119atomic_signal_fenceENS_12memory_orderE>
    1a9f:	8b 85 c8 fe ff ff    	mov    -0x138(%rbp),%eax
    1aa5:	83 c0 01             	add    $0x1,%eax
    1aa8:	89 85 c8 fe ff ff    	mov    %eax,-0x138(%rbp)
    1aae:	8b 85 c8 fe ff ff    	mov    -0x138(%rbp),%eax
    1ab4:	88 c2                	mov    %al,%dl
    1ab6:	48 8b 85 e0 fe ff ff 	mov    -0x120(%rbp),%rax
    1abd:	8b 8d c8 fe ff ff    	mov    -0x138(%rbp),%ecx
    1ac3:	89 ce                	mov    %ecx,%esi
    1ac5:	b9 00 00 00 08       	mov    $0x8000000,%ecx
    1aca:	48 29 f1             	sub    %rsi,%rcx
    1acd:	88 14 08             	mov    %dl,(%rax,%rcx,1)
    1ad0:	48 8b 85 e0 fe ff ff 	mov    -0x120(%rbp),%rax
    1ad7:	8b 8d c8 fe ff ff    	mov    -0x138(%rbp),%ecx
    1add:	89 ca                	mov    %ecx,%edx
    1adf:	b9 00 00 00 08       	mov    $0x8000000,%ecx
    1ae4:	48 29 d1             	sub    %rdx,%rcx
    1ae7:	0f be 04 08          	movsbl (%rax,%rcx,1),%eax
    1aeb:	48 8b 8d d0 fe ff ff 	mov    -0x130(%rbp),%rcx
    1af2:	8b 95 c8 fe ff ff    	mov    -0x138(%rbp),%edx
    1af8:	89 d6                	mov    %edx,%esi
    1afa:	ba 00 00 00 08       	mov    $0x8000000,%edx
    1aff:	48 29 f2             	sub    %rsi,%rdx
    1b02:	0f be 0c 11          	movsbl (%rcx,%rdx,1),%ecx
    1b06:	29 c8                	sub    %ecx,%eax
    1b08:	88 c2                	mov    %al,%dl
    1b0a:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
    1b11:	8b 8d c8 fe ff ff    	mov    -0x138(%rbp),%ecx
    1b17:	89 ce                	mov    %ecx,%esi
    1b19:	b9 00 00 00 08       	mov    $0x8000000,%ecx
    1b1e:	48 29 f1             	sub    %rsi,%rcx
    1b21:	88 14 08             	mov    %dl,(%rax,%rcx,1)
    1b24:	48 8d 85 b0 fe ff ff 	lea    -0x150(%rbp),%rax
    1b2b:	48 89 85 60 ff ff ff 	mov    %rax,-0xa0(%rbp)
    1b32:	48 8b 85 60 ff ff ff 	mov    -0xa0(%rbp),%rax
    1b39:	48 8b 08             	mov    (%rax),%rcx
    1b3c:	48 83 c1 ff          	add    $0xffffffffffffffff,%rcx
    1b40:	48 89 08             	mov    %rcx,(%rax)
    1b43:	e9 0b fe ff ff       	jmpq   1953 <_Z16BM_cmp_StringRefRN9benchmark5StateE+0x1d3>
    1b48:	48 8d 85 e0 fe ff ff 	lea    -0x120(%rbp),%rax
    1b4f:	48 89 85 70 ff ff ff 	mov    %rax,-0x90(%rbp)
    1b56:	48 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%rax
    1b5d:	48 8b 08             	mov    (%rax),%rcx
    1b60:	48 8d 85 d8 fe ff ff 	lea    -0x128(%rbp),%rax
    1b67:	48 89 85 68 ff ff ff 	mov    %rax,-0x98(%rbp)
    1b6e:	48 8b 85 68 ff ff ff 	mov    -0x98(%rbp),%rax
    1b75:	48 8b 08             	mov    (%rax),%rcx
    1b78:	48 8b 85 f0 fe ff ff 	mov    -0x110(%rbp),%rax
    1b7f:	48 89 85 20 fe ff ff 	mov    %rax,-0x1e0(%rbp)
    1b86:	48 8b 85 f0 fe ff ff 	mov    -0x110(%rbp),%rax
    1b8d:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
    1b91:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    1b95:	48 89 85 28 fe ff ff 	mov    %rax,-0x1d8(%rbp)
    1b9c:	8a 40 18             	mov    0x18(%rax),%al
    1b9f:	34 ff                	xor    $0xff,%al
    1ba1:	a8 01                	test   $0x1,%al
    1ba3:	0f 85 05 00 00 00    	jne    1bae <_Z16BM_cmp_StringRefRN9benchmark5StateE+0x42e>
    1ba9:	e9 0d 00 00 00       	jmpq   1bbb <_Z16BM_cmp_StringRefRN9benchmark5StateE+0x43b>
    1bae:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
    1bb5:	00 
    1bb6:	e9 16 00 00 00       	jmpq   1bd1 <_Z16BM_cmp_StringRefRN9benchmark5StateE+0x451>
    1bbb:	48 8b 8d 28 fe ff ff 	mov    -0x1d8(%rbp),%rcx
    1bc2:	48 8b 41 10          	mov    0x10(%rcx),%rax
    1bc6:	48 2b 01             	sub    (%rcx),%rax
    1bc9:	48 03 41 08          	add    0x8(%rcx),%rax
    1bcd:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    1bd1:	48 8b 8d 20 fe ff ff 	mov    -0x1e0(%rbp),%rcx
    1bd8:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    1bdc:	48 c1 e0 1c          	shl    $0x1c,%rax
    1be0:	48 89 4d b8          	mov    %rcx,-0x48(%rbp)
    1be4:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
    1be8:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    1bec:	f2 48 0f 2a 45 b0    	cvtsi2sdq -0x50(%rbp),%xmm0
    1bf2:	48 8d 4d a0          	lea    -0x60(%rbp),%rcx
    1bf6:	48 89 4d f8          	mov    %rcx,-0x8(%rbp)
    1bfa:	f2 0f 11 45 f0       	movsd  %xmm0,-0x10(%rbp)
    1bff:	c7 45 ec 01 00 00 00 	movl   $0x1,-0x14(%rbp)
    1c06:	c7 45 e8 e8 03 00 00 	movl   $0x3e8,-0x18(%rbp)
    1c0d:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    1c11:	f2 0f 10 45 f0       	movsd  -0x10(%rbp),%xmm0
    1c16:	f2 0f 11 01          	movsd  %xmm0,(%rcx)
    1c1a:	8b 55 ec             	mov    -0x14(%rbp),%edx
    1c1d:	89 51 08             	mov    %edx,0x8(%rcx)
    1c20:	8b 55 e8             	mov    -0x18(%rbp),%edx
    1c23:	89 51 0c             	mov    %edx,0xc(%rcx)
    1c26:	48 83 c0 40          	add    $0x40,%rax
    1c2a:	48 89 85 08 fe ff ff 	mov    %rax,-0x1f8(%rbp)
    1c31:	48 8d 35 64 26 00 00 	lea    0x2664(%rip),%rsi        # 429c <_IO_stdin_used+0x54>
    1c38:	48 8d 7d 88          	lea    -0x78(%rbp),%rdi
    1c3c:	48 89 bd 10 fe ff ff 	mov    %rdi,-0x1f0(%rbp)
    1c43:	e8 d8 07 00 00       	callq  2420 <_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2IDnEEPKc>
    1c48:	48 8b bd 08 fe ff ff 	mov    -0x1f8(%rbp),%rdi
    1c4f:	48 8b b5 10 fe ff ff 	mov    -0x1f0(%rbp),%rsi
    1c56:	e8 55 07 00 00       	callq  23b0 <_ZNSt3__13mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterENS_4lessIS6_EENS4_INS_4pairIKS6_S8_EEEEEixEOS6_>
    1c5b:	48 89 85 18 fe ff ff 	mov    %rax,-0x1e8(%rbp)
    1c62:	e9 21 00 00 00       	jmpq   1c88 <_Z16BM_cmp_StringRefRN9benchmark5StateE+0x508>
    1c67:	48 89 c1             	mov    %rax,%rcx
    1c6a:	89 d0                	mov    %edx,%eax
    1c6c:	48 89 4d 80          	mov    %rcx,-0x80(%rbp)
    1c70:	89 85 7c ff ff ff    	mov    %eax,-0x84(%rbp)
    1c76:	48 8d 7d 88          	lea    -0x78(%rbp),%rdi
    1c7a:	e8 11 f8 ff ff       	callq  1490 <_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev@plt>
    1c7f:	48 8b 7d 80          	mov    -0x80(%rbp),%rdi
    1c83:	e8 68 f7 ff ff       	callq  13f0 <_Unwind_Resume@plt>
    1c88:	48 8b 85 18 fe ff ff 	mov    -0x1e8(%rbp),%rax
    1c8f:	48 8b 4d a0          	mov    -0x60(%rbp),%rcx
    1c93:	48 89 08             	mov    %rcx,(%rax)
    1c96:	48 8b 4d a8          	mov    -0x58(%rbp),%rcx
    1c9a:	48 89 48 08          	mov    %rcx,0x8(%rax)
    1c9e:	48 8d 7d 88          	lea    -0x78(%rbp),%rdi
    1ca2:	e8 e9 f7 ff ff       	callq  1490 <_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev@plt>
    1ca7:	48 8b 85 e0 fe ff ff 	mov    -0x120(%rbp),%rax
    1cae:	48 89 85 00 fe ff ff 	mov    %rax,-0x200(%rbp)
    1cb5:	48 83 f8 00          	cmp    $0x0,%rax
    1cb9:	0f 84 0c 00 00 00    	je     1ccb <_Z16BM_cmp_StringRefRN9benchmark5StateE+0x54b>
    1cbf:	48 8b bd 00 fe ff ff 	mov    -0x200(%rbp),%rdi
    1cc6:	e8 65 f6 ff ff       	callq  1330 <_ZdaPv@plt>
    1ccb:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
    1cd2:	48 89 85 f8 fd ff ff 	mov    %rax,-0x208(%rbp)
    1cd9:	48 83 f8 00          	cmp    $0x0,%rax
    1cdd:	0f 84 0c 00 00 00    	je     1cef <_Z16BM_cmp_StringRefRN9benchmark5StateE+0x56f>
    1ce3:	48 8b bd f8 fd ff ff 	mov    -0x208(%rbp),%rdi
    1cea:	e8 41 f6 ff ff       	callq  1330 <_ZdaPv@plt>
    1cef:	48 81 c4 10 02 00 00 	add    $0x210,%rsp
    1cf6:	5d                   	pop    %rbp
    1cf7:	c3                   	retq   
    1cf8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    1cff:	00 

0000000000001d00 <_Z18BM_cmp_string_viewRN9benchmark5StateE>:
    1d00:	55                   	push   %rbp
    1d01:	48 89 e5             	mov    %rsp,%rbp
    1d04:	48 81 ec d0 00 00 00 	sub    $0xd0,%rsp
    1d0b:	48 89 7d 88          	mov    %rdi,-0x78(%rbp)
    1d0f:	48 8b 45 88          	mov    -0x78(%rbp),%rax
    1d13:	48 89 45 80          	mov    %rax,-0x80(%rbp)
    1d17:	48 8b 45 80          	mov    -0x80(%rbp),%rax
    1d1b:	48 89 45 90          	mov    %rax,-0x70(%rbp)
    1d1f:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    1d23:	48 8d 4d 98          	lea    -0x68(%rbp),%rcx
    1d27:	48 89 4d f0          	mov    %rcx,-0x10(%rbp)
    1d2b:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    1d2f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1d33:	48 89 85 48 ff ff ff 	mov    %rax,-0xb8(%rbp)
    1d3a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1d3e:	f6 40 1a 01          	testb  $0x1,0x1a(%rax)
    1d42:	0f 84 0e 00 00 00    	je     1d56 <_Z18BM_cmp_string_viewRN9benchmark5StateE+0x56>
    1d48:	31 c0                	xor    %eax,%eax
    1d4a:	48 89 85 40 ff ff ff 	mov    %rax,-0xc0(%rbp)
    1d51:	e9 0f 00 00 00       	jmpq   1d65 <_Z18BM_cmp_string_viewRN9benchmark5StateE+0x65>
    1d56:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1d5a:	48 8b 40 10          	mov    0x10(%rax),%rax
    1d5e:	48 89 85 40 ff ff ff 	mov    %rax,-0xc0(%rbp)
    1d65:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
    1d6c:	48 8b 8d 40 ff ff ff 	mov    -0xc0(%rbp),%rcx
    1d73:	48 89 08             	mov    %rcx,(%rax)
    1d76:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    1d7a:	48 89 48 08          	mov    %rcx,0x8(%rax)
    1d7e:	48 8b 4d 98          	mov    -0x68(%rbp),%rcx
    1d82:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
    1d86:	48 89 8d 70 ff ff ff 	mov    %rcx,-0x90(%rbp)
    1d8d:	48 89 85 78 ff ff ff 	mov    %rax,-0x88(%rbp)
    1d94:	48 8b 45 80          	mov    -0x80(%rbp),%rax
    1d98:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
    1d9c:	48 8b 7d a8          	mov    -0x58(%rbp),%rdi
    1da0:	e8 ab f5 ff ff       	callq  1350 <_ZN9benchmark5State16StartKeepRunningEv@plt>
    1da5:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
    1da9:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1dad:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1db1:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
    1db8:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
    1dbf:	00 
    1dc0:	48 8b 4d b0          	mov    -0x50(%rbp),%rcx
    1dc4:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    1dc8:	48 89 8d 60 ff ff ff 	mov    %rcx,-0xa0(%rbp)
    1dcf:	48 89 85 68 ff ff ff 	mov    %rax,-0x98(%rbp)
    1dd6:	48 8d 85 70 ff ff ff 	lea    -0x90(%rbp),%rax
    1ddd:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    1de1:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
    1de8:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
    1dec:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    1df0:	48 89 85 38 ff ff ff 	mov    %rax,-0xc8(%rbp)
    1df7:	48 83 38 00          	cmpq   $0x0,(%rax)
    1dfb:	0f 84 09 00 00 00    	je     1e0a <_Z18BM_cmp_string_viewRN9benchmark5StateE+0x10a>
    1e01:	c6 45 d7 01          	movb   $0x1,-0x29(%rbp)
    1e05:	e9 14 00 00 00       	jmpq   1e1e <_Z18BM_cmp_string_viewRN9benchmark5StateE+0x11e>
    1e0a:	48 8b 85 38 ff ff ff 	mov    -0xc8(%rbp),%rax
    1e11:	48 8b 78 08          	mov    0x8(%rax),%rdi
    1e15:	e8 66 f6 ff ff       	callq  1480 <_ZN9benchmark5State17FinishKeepRunningEv@plt>
    1e1a:	c6 45 d7 00          	movb   $0x0,-0x29(%rbp)
    1e1e:	f6 45 d7 01          	testb  $0x1,-0x29(%rbp)
    1e22:	0f 85 05 00 00 00    	jne    1e2d <_Z18BM_cmp_string_viewRN9benchmark5StateE+0x12d>
    1e28:	e9 29 00 00 00       	jmpq   1e56 <_Z18BM_cmp_string_viewRN9benchmark5StateE+0x156>
    1e2d:	48 8d 85 70 ff ff ff 	lea    -0x90(%rbp),%rax
    1e34:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    1e38:	48 8d 85 70 ff ff ff 	lea    -0x90(%rbp),%rax
    1e3f:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    1e43:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    1e47:	48 8b 08             	mov    (%rax),%rcx
    1e4a:	48 83 c1 ff          	add    $0xffffffffffffffff,%rcx
    1e4e:	48 89 08             	mov    %rcx,(%rax)
    1e51:	e9 80 ff ff ff       	jmpq   1dd6 <_Z18BM_cmp_string_viewRN9benchmark5StateE+0xd6>
    1e56:	48 81 c4 d0 00 00 00 	add    $0xd0,%rsp
    1e5d:	5d                   	pop    %rbp
    1e5e:	c3                   	retq   
    1e5f:	90                   	nop

0000000000001e60 <_Z13BM_cmp_stringRN9benchmark5StateE>:
    1e60:	55                   	push   %rbp
    1e61:	48 89 e5             	mov    %rsp,%rbp
    1e64:	48 81 ec d0 00 00 00 	sub    $0xd0,%rsp
    1e6b:	48 89 7d 88          	mov    %rdi,-0x78(%rbp)
    1e6f:	48 8b 45 88          	mov    -0x78(%rbp),%rax
    1e73:	48 89 45 80          	mov    %rax,-0x80(%rbp)
    1e77:	48 8b 45 80          	mov    -0x80(%rbp),%rax
    1e7b:	48 89 45 90          	mov    %rax,-0x70(%rbp)
    1e7f:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    1e83:	48 8d 4d 98          	lea    -0x68(%rbp),%rcx
    1e87:	48 89 4d f0          	mov    %rcx,-0x10(%rbp)
    1e8b:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    1e8f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1e93:	48 89 85 48 ff ff ff 	mov    %rax,-0xb8(%rbp)
    1e9a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1e9e:	f6 40 1a 01          	testb  $0x1,0x1a(%rax)
    1ea2:	0f 84 0e 00 00 00    	je     1eb6 <_Z13BM_cmp_stringRN9benchmark5StateE+0x56>
    1ea8:	31 c0                	xor    %eax,%eax
    1eaa:	48 89 85 40 ff ff ff 	mov    %rax,-0xc0(%rbp)
    1eb1:	e9 0f 00 00 00       	jmpq   1ec5 <_Z13BM_cmp_stringRN9benchmark5StateE+0x65>
    1eb6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1eba:	48 8b 40 10          	mov    0x10(%rax),%rax
    1ebe:	48 89 85 40 ff ff ff 	mov    %rax,-0xc0(%rbp)
    1ec5:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
    1ecc:	48 8b 8d 40 ff ff ff 	mov    -0xc0(%rbp),%rcx
    1ed3:	48 89 08             	mov    %rcx,(%rax)
    1ed6:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    1eda:	48 89 48 08          	mov    %rcx,0x8(%rax)
    1ede:	48 8b 4d 98          	mov    -0x68(%rbp),%rcx
    1ee2:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
    1ee6:	48 89 8d 70 ff ff ff 	mov    %rcx,-0x90(%rbp)
    1eed:	48 89 85 78 ff ff ff 	mov    %rax,-0x88(%rbp)
    1ef4:	48 8b 45 80          	mov    -0x80(%rbp),%rax
    1ef8:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
    1efc:	48 8b 7d a8          	mov    -0x58(%rbp),%rdi
    1f00:	e8 4b f4 ff ff       	callq  1350 <_ZN9benchmark5State16StartKeepRunningEv@plt>
    1f05:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
    1f09:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1f0d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1f11:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
    1f18:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
    1f1f:	00 
    1f20:	48 8b 4d b0          	mov    -0x50(%rbp),%rcx
    1f24:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    1f28:	48 89 8d 60 ff ff ff 	mov    %rcx,-0xa0(%rbp)
    1f2f:	48 89 85 68 ff ff ff 	mov    %rax,-0x98(%rbp)
    1f36:	48 8d 85 70 ff ff ff 	lea    -0x90(%rbp),%rax
    1f3d:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    1f41:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
    1f48:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
    1f4c:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    1f50:	48 89 85 38 ff ff ff 	mov    %rax,-0xc8(%rbp)
    1f57:	48 83 38 00          	cmpq   $0x0,(%rax)
    1f5b:	0f 84 09 00 00 00    	je     1f6a <_Z13BM_cmp_stringRN9benchmark5StateE+0x10a>
    1f61:	c6 45 d7 01          	movb   $0x1,-0x29(%rbp)
    1f65:	e9 14 00 00 00       	jmpq   1f7e <_Z13BM_cmp_stringRN9benchmark5StateE+0x11e>
    1f6a:	48 8b 85 38 ff ff ff 	mov    -0xc8(%rbp),%rax
    1f71:	48 8b 78 08          	mov    0x8(%rax),%rdi
    1f75:	e8 06 f5 ff ff       	callq  1480 <_ZN9benchmark5State17FinishKeepRunningEv@plt>
    1f7a:	c6 45 d7 00          	movb   $0x0,-0x29(%rbp)
    1f7e:	f6 45 d7 01          	testb  $0x1,-0x29(%rbp)
    1f82:	0f 85 05 00 00 00    	jne    1f8d <_Z13BM_cmp_stringRN9benchmark5StateE+0x12d>
    1f88:	e9 29 00 00 00       	jmpq   1fb6 <_Z13BM_cmp_stringRN9benchmark5StateE+0x156>
    1f8d:	48 8d 85 70 ff ff ff 	lea    -0x90(%rbp),%rax
    1f94:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    1f98:	48 8d 85 70 ff ff ff 	lea    -0x90(%rbp),%rax
    1f9f:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    1fa3:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    1fa7:	48 8b 08             	mov    (%rax),%rcx
    1faa:	48 83 c1 ff          	add    $0xffffffffffffffff,%rcx
    1fae:	48 89 08             	mov    %rcx,(%rax)
    1fb1:	e9 80 ff ff ff       	jmpq   1f36 <_Z13BM_cmp_stringRN9benchmark5StateE+0xd6>
    1fb6:	48 81 c4 d0 00 00 00 	add    $0xd0,%rsp
    1fbd:	5d                   	pop    %rbp
    1fbe:	c3                   	retq   
    1fbf:	90                   	nop

0000000000001fc0 <main>:
    1fc0:	55                   	push   %rbp
    1fc1:	48 89 e5             	mov    %rsp,%rbp
    1fc4:	48 83 ec 30          	sub    $0x30,%rsp
    1fc8:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
    1fcf:	89 7d f8             	mov    %edi,-0x8(%rbp)
    1fd2:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    1fd6:	48 8b 05 b5 22 00 00 	mov    0x22b5(%rip),%rax        # 4292 <_IO_stdin_used+0x4a>
    1fdd:	48 89 45 e6          	mov    %rax,-0x1a(%rbp)
    1fe1:	66 8b 05 b2 22 00 00 	mov    0x22b2(%rip),%ax        # 429a <_IO_stdin_used+0x52>
    1fe8:	66 89 45 ee          	mov    %ax,-0x12(%rbp)
    1fec:	48 8d 45 e6          	lea    -0x1a(%rbp),%rax
    1ff0:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    1ff4:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
    1ff9:	0f 85 0f 00 00 00    	jne    200e <main+0x4e>
    1fff:	c7 45 f8 01 00 00 00 	movl   $0x1,-0x8(%rbp)
    2006:	48 8d 45 d8          	lea    -0x28(%rbp),%rax
    200a:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    200e:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
    2012:	48 8d 7d f8          	lea    -0x8(%rbp),%rdi
    2016:	48 8b 15 93 3f 20 00 	mov    0x203f93(%rip),%rdx        # 205fb0 <_ZN9benchmark16PrintDefaultHelpEv>
    201d:	e8 8e f3 ff ff       	callq  13b0 <_ZN9benchmark10InitializeEPiPPcPFvvE@plt>
    2022:	8b 7d f8             	mov    -0x8(%rbp),%edi
    2025:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
    2029:	e8 d2 f2 ff ff       	callq  1300 <_ZN9benchmark27ReportUnrecognizedArgumentsEiPPc@plt>
    202e:	a8 01                	test   $0x1,%al
    2030:	0f 85 05 00 00 00    	jne    203b <main+0x7b>
    2036:	e9 0c 00 00 00       	jmpq   2047 <main+0x87>
    203b:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%rbp)
    2042:	e9 11 00 00 00       	jmpq   2058 <main+0x98>
    2047:	e8 14 f3 ff ff       	callq  1360 <_ZN9benchmark22RunSpecifiedBenchmarksEv@plt>
    204c:	e8 cf f3 ff ff       	callq  1420 <_ZN9benchmark8ShutdownEv@plt>
    2051:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
    2058:	8b 45 fc             	mov    -0x4(%rbp),%eax
    205b:	48 83 c4 30          	add    $0x30,%rsp
    205f:	5d                   	pop    %rbp
    2060:	c3                   	retq   
    2061:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    2068:	00 00 00 
    206b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002070 <_ZN9StringRefC2EPKc>:
    2070:	55                   	push   %rbp
    2071:	48 89 e5             	mov    %rsp,%rbp
    2074:	48 83 ec 30          	sub    $0x30,%rsp
    2078:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    207c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    2080:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2084:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    2088:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
    208c:	48 8d 7d e0          	lea    -0x20(%rbp),%rdi
    2090:	e8 fb 00 00 00       	callq  2190 <_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2EPKc>
    2095:	48 8b 7d d8          	mov    -0x28(%rbp),%rdi
    2099:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    209d:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    20a1:	e8 2a 01 00 00       	callq  21d0 <_ZN9StringRefC2ENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE>
    20a6:	48 83 c4 30          	add    $0x30,%rsp
    20aa:	5d                   	pop    %rbp
    20ab:	c3                   	retq   
    20ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000020b0 <_Zlt9StringRefS_>:
    20b0:	55                   	push   %rbp
    20b1:	48 89 e5             	mov    %rsp,%rbp
    20b4:	48 83 ec 40          	sub    $0x40,%rsp
    20b8:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
    20bc:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
    20c0:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
    20c4:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
    20c8:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    20cc:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    20d0:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    20d4:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
    20d8:	48 8d 7d f0          	lea    -0x10(%rbp),%rdi
    20dc:	48 83 c7 08          	add    $0x8,%rdi
    20e0:	48 8d 75 e0          	lea    -0x20(%rbp),%rsi
    20e4:	48 83 c6 08          	add    $0x8,%rsi
    20e8:	e8 b3 01 00 00       	callq  22a0 <_ZNSt3__13minImEERKT_S3_S3_>
    20ed:	48 8b 7d c8          	mov    -0x38(%rbp),%rdi
    20f1:	48 8b 75 d0          	mov    -0x30(%rbp),%rsi
    20f5:	48 8b 10             	mov    (%rax),%rdx
    20f8:	e8 73 f3 ff ff       	callq  1470 <memcmp@plt>
    20fd:	89 45 dc             	mov    %eax,-0x24(%rbp)
    2100:	b0 01                	mov    $0x1,%al
    2102:	83 7d dc 00          	cmpl   $0x0,-0x24(%rbp)
    2106:	88 45 db             	mov    %al,-0x25(%rbp)
    2109:	0f 8c 23 00 00 00    	jl     2132 <_Zlt9StringRefS_+0x82>
    210f:	31 c0                	xor    %eax,%eax
    2111:	83 7d dc 00          	cmpl   $0x0,-0x24(%rbp)
    2115:	88 45 c7             	mov    %al,-0x39(%rbp)
    2118:	0f 85 0e 00 00 00    	jne    212c <_Zlt9StringRefS_+0x7c>
    211e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2122:	48 3b 45 e8          	cmp    -0x18(%rbp),%rax
    2126:	0f 92 c0             	setb   %al
    2129:	88 45 c7             	mov    %al,-0x39(%rbp)
    212c:	8a 45 c7             	mov    -0x39(%rbp),%al
    212f:	88 45 db             	mov    %al,-0x25(%rbp)
    2132:	8a 45 db             	mov    -0x25(%rbp),%al
    2135:	24 01                	and    $0x1,%al
    2137:	0f b6 c0             	movzbl %al,%eax
    213a:	48 83 c4 40          	add    $0x40,%rsp
    213e:	5d                   	pop    %rbp
    213f:	c3                   	retq   

0000000000002140 <_ZN9benchmark8internal17FunctionBenchmarkC2EPKcPFvRNS_5StateEE>:
    2140:	55                   	push   %rbp
    2141:	48 89 e5             	mov    %rsp,%rbp
    2144:	48 83 ec 20          	sub    $0x20,%rsp
    2148:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    214c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    2150:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    2154:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    2158:	48 89 7d e0          	mov    %rdi,-0x20(%rbp)
    215c:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
    2160:	e8 5b f3 ff ff       	callq  14c0 <_ZN9benchmark8internal9BenchmarkC2EPKc@plt>
    2165:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    2169:	48 8b 0d 78 3e 20 00 	mov    0x203e78(%rip),%rcx        # 205fe8 <_ZTVN9benchmark8internal17FunctionBenchmarkE>
    2170:	48 83 c1 10          	add    $0x10,%rcx
    2174:	48 89 08             	mov    %rcx,(%rax)
    2177:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    217b:	48 89 88 d8 00 00 00 	mov    %rcx,0xd8(%rax)
    2182:	48 83 c4 20          	add    $0x20,%rsp
    2186:	5d                   	pop    %rbp
    2187:	c3                   	retq   
    2188:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    218f:	00 

0000000000002190 <_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2EPKc>:
    2190:	55                   	push   %rbp
    2191:	48 89 e5             	mov    %rsp,%rbp
    2194:	48 83 ec 20          	sub    $0x20,%rsp
    2198:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    219c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    21a0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    21a4:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    21a8:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
    21ac:	48 89 08             	mov    %rcx,(%rax)
    21af:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
    21b3:	e8 68 00 00 00       	callq  2220 <_ZNSt3__128__char_traits_length_checkedINS_11char_traitsIcEEEEmPKNT_9char_typeE>
    21b8:	48 89 c1             	mov    %rax,%rcx
    21bb:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    21bf:	48 89 48 08          	mov    %rcx,0x8(%rax)
    21c3:	48 83 c4 20          	add    $0x20,%rsp
    21c7:	5d                   	pop    %rbp
    21c8:	c3                   	retq   
    21c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000021d0 <_ZN9StringRefC2ENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE>:
    21d0:	55                   	push   %rbp
    21d1:	48 89 e5             	mov    %rsp,%rbp
    21d4:	48 83 ec 20          	sub    $0x20,%rsp
    21d8:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    21dc:	48 89 55 f8          	mov    %rdx,-0x8(%rbp)
    21e0:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    21e4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    21e8:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    21ec:	48 8d 7d f0          	lea    -0x10(%rbp),%rdi
    21f0:	e8 6b 00 00 00       	callq  2260 <_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4dataEv>
    21f5:	48 89 c1             	mov    %rax,%rcx
    21f8:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    21fc:	48 89 08             	mov    %rcx,(%rax)
    21ff:	48 8d 7d f0          	lea    -0x10(%rbp),%rdi
    2203:	e8 78 00 00 00       	callq  2280 <_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4sizeEv>
    2208:	48 89 c1             	mov    %rax,%rcx
    220b:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    220f:	48 89 48 08          	mov    %rcx,0x8(%rax)
    2213:	48 83 c4 20          	add    $0x20,%rsp
    2217:	5d                   	pop    %rbp
    2218:	c3                   	retq   
    2219:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000002220 <_ZNSt3__128__char_traits_length_checkedINS_11char_traitsIcEEEEmPKNT_9char_typeE>:
    2220:	55                   	push   %rbp
    2221:	48 89 e5             	mov    %rsp,%rbp
    2224:	48 83 ec 10          	sub    $0x10,%rsp
    2228:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    222c:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    2230:	e8 0b 00 00 00       	callq  2240 <_ZNSt3__111char_traitsIcE6lengthEPKc>
    2235:	48 83 c4 10          	add    $0x10,%rsp
    2239:	5d                   	pop    %rbp
    223a:	c3                   	retq   
    223b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002240 <_ZNSt3__111char_traitsIcE6lengthEPKc>:
    2240:	55                   	push   %rbp
    2241:	48 89 e5             	mov    %rsp,%rbp
    2244:	48 83 ec 10          	sub    $0x10,%rsp
    2248:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    224c:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    2250:	e8 6b f1 ff ff       	callq  13c0 <strlen@plt>
    2255:	48 83 c4 10          	add    $0x10,%rsp
    2259:	5d                   	pop    %rbp
    225a:	c3                   	retq   
    225b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002260 <_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4dataEv>:
    2260:	55                   	push   %rbp
    2261:	48 89 e5             	mov    %rsp,%rbp
    2264:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    2268:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    226c:	48 8b 00             	mov    (%rax),%rax
    226f:	5d                   	pop    %rbp
    2270:	c3                   	retq   
    2271:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    2278:	00 00 00 
    227b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002280 <_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4sizeEv>:
    2280:	55                   	push   %rbp
    2281:	48 89 e5             	mov    %rsp,%rbp
    2284:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    2288:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    228c:	48 8b 40 08          	mov    0x8(%rax),%rax
    2290:	5d                   	pop    %rbp
    2291:	c3                   	retq   
    2292:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    2299:	00 00 00 
    229c:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000022a0 <_ZNSt3__13minImEERKT_S3_S3_>:
    22a0:	55                   	push   %rbp
    22a1:	48 89 e5             	mov    %rsp,%rbp
    22a4:	48 83 ec 20          	sub    $0x20,%rsp
    22a8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    22ac:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    22b0:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    22b4:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
    22b8:	e8 13 00 00 00       	callq  22d0 <_ZNSt3__13minImNS_6__lessImmEEEERKT_S5_S5_T0_>
    22bd:	48 83 c4 20          	add    $0x20,%rsp
    22c1:	5d                   	pop    %rbp
    22c2:	c3                   	retq   
    22c3:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    22ca:	00 00 00 
    22cd:	0f 1f 00             	nopl   (%rax)

00000000000022d0 <_ZNSt3__13minImNS_6__lessImmEEEERKT_S5_S5_T0_>:
    22d0:	55                   	push   %rbp
    22d1:	48 89 e5             	mov    %rsp,%rbp
    22d4:	48 83 ec 20          	sub    $0x20,%rsp
    22d8:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
    22dc:	48 89 75 e8          	mov    %rsi,-0x18(%rbp)
    22e0:	48 8b 75 e8          	mov    -0x18(%rbp),%rsi
    22e4:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    22e8:	48 8d 7d f8          	lea    -0x8(%rbp),%rdi
    22ec:	e8 2f 00 00 00       	callq  2320 <_ZNKSt3__16__lessImmEclERKmS3_>
    22f1:	a8 01                	test   $0x1,%al
    22f3:	0f 85 05 00 00 00    	jne    22fe <_ZNSt3__13minImNS_6__lessImmEEEERKT_S5_S5_T0_+0x2e>
    22f9:	e9 0d 00 00 00       	jmpq   230b <_ZNSt3__13minImNS_6__lessImmEEEERKT_S5_S5_T0_+0x3b>
    22fe:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2302:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    2306:	e9 08 00 00 00       	jmpq   2313 <_ZNSt3__13minImNS_6__lessImmEEEERKT_S5_S5_T0_+0x43>
    230b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    230f:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    2313:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    2317:	48 83 c4 20          	add    $0x20,%rsp
    231b:	5d                   	pop    %rbp
    231c:	c3                   	retq   
    231d:	0f 1f 00             	nopl   (%rax)

0000000000002320 <_ZNKSt3__16__lessImmEclERKmS3_>:
    2320:	55                   	push   %rbp
    2321:	48 89 e5             	mov    %rsp,%rbp
    2324:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    2328:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    232c:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    2330:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    2334:	48 8b 00             	mov    (%rax),%rax
    2337:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    233b:	48 3b 01             	cmp    (%rcx),%rax
    233e:	0f 92 c0             	setb   %al
    2341:	24 01                	and    $0x1,%al
    2343:	0f b6 c0             	movzbl %al,%eax
    2346:	5d                   	pop    %rbp
    2347:	c3                   	retq   
    2348:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    234f:	00 

0000000000002350 <_ZNSt3__119atomic_signal_fenceENS_12memory_orderE>:
    2350:	55                   	push   %rbp
    2351:	48 89 e5             	mov    %rsp,%rbp
    2354:	48 83 ec 10          	sub    $0x10,%rsp
    2358:	89 7d fc             	mov    %edi,-0x4(%rbp)
    235b:	8b 7d fc             	mov    -0x4(%rbp),%edi
    235e:	e8 0d 00 00 00       	callq  2370 <_ZNSt3__125__cxx_atomic_signal_fenceENS_12memory_orderE>
    2363:	48 83 c4 10          	add    $0x10,%rsp
    2367:	5d                   	pop    %rbp
    2368:	c3                   	retq   
    2369:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000002370 <_ZNSt3__125__cxx_atomic_signal_fenceENS_12memory_orderE>:
    2370:	55                   	push   %rbp
    2371:	48 89 e5             	mov    %rsp,%rbp
    2374:	89 7d fc             	mov    %edi,-0x4(%rbp)
    2377:	8b 45 fc             	mov    -0x4(%rbp),%eax
    237a:	ff c8                	dec    %eax
    237c:	89 c1                	mov    %eax,%ecx
    237e:	48 89 4d f0          	mov    %rcx,-0x10(%rbp)
    2382:	83 e8 04             	sub    $0x4,%eax
    2385:	0f 87 23 00 00 00    	ja     23ae <_ZNSt3__125__cxx_atomic_signal_fenceENS_12memory_orderE+0x3e>
    238b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    238f:	48 8d 0d b6 1e 00 00 	lea    0x1eb6(%rip),%rcx        # 424c <_IO_stdin_used+0x4>
    2396:	48 63 04 81          	movslq (%rcx,%rax,4),%rax
    239a:	48 01 c8             	add    %rcx,%rax
    239d:	ff e0                	jmpq   *%rax
    239f:	e9 0a 00 00 00       	jmpq   23ae <_ZNSt3__125__cxx_atomic_signal_fenceENS_12memory_orderE+0x3e>
    23a4:	e9 05 00 00 00       	jmpq   23ae <_ZNSt3__125__cxx_atomic_signal_fenceENS_12memory_orderE+0x3e>
    23a9:	e9 00 00 00 00       	jmpq   23ae <_ZNSt3__125__cxx_atomic_signal_fenceENS_12memory_orderE+0x3e>
    23ae:	5d                   	pop    %rbp
    23af:	c3                   	retq   

00000000000023b0 <_ZNSt3__13mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterENS_4lessIS6_EENS4_INS_4pairIKS6_S8_EEEEEixEOS6_>:
    23b0:	55                   	push   %rbp
    23b1:	48 89 e5             	mov    %rsp,%rbp
    23b4:	48 83 ec 50          	sub    $0x50,%rsp
    23b8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    23bc:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    23c0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    23c4:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
    23c8:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    23cc:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
    23d0:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
    23d4:	e8 97 01 00 00       	callq  2570 <_ZNSt3__116forward_as_tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEENS_5tupleIJDpOT_EEESA_>
    23d9:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    23dd:	e8 be 01 00 00       	callq  25a0 <_ZNSt3__116forward_as_tupleIJEEENS_5tupleIJDpOT_EEES4_>
    23e2:	48 8b 7d b8          	mov    -0x48(%rbp),%rdi
    23e6:	48 8b 75 c0          	mov    -0x40(%rbp),%rsi
    23ea:	48 8d 15 00 1f 00 00 	lea    0x1f00(%rip),%rdx        # 42f1 <_ZNSt3__1L19piecewise_constructE>
    23f1:	48 8d 4d d8          	lea    -0x28(%rbp),%rcx
    23f5:	4c 8d 45 d0          	lea    -0x30(%rbp),%r8
    23f9:	e8 72 00 00 00       	callq  2470 <_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEENS_19__map_value_compareIS7_SA_NS_4lessIS7_EELb1EEENS5_ISA_EEE25__emplace_unique_key_argsIS7_JRKNS_21piecewise_construct_tENS_5tupleIJOS7_EEENSL_IJEEEEEENS_4pairINS_15__tree_iteratorISA_PNS_11__tree_nodeISA_PvEElEEbEERKT_DpOT0_>
    23fe:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    2402:	88 55 e8             	mov    %dl,-0x18(%rbp)
    2405:	48 8d 7d e0          	lea    -0x20(%rbp),%rdi
    2409:	e8 a2 01 00 00       	callq  25b0 <_ZNKSt3__115__tree_iteratorINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEEPNS_11__tree_nodeISA_PvEElEptEv>
    240e:	48 89 c7             	mov    %rax,%rdi
    2411:	e8 ca 01 00 00       	callq  25e0 <_ZNSt3__112__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEE11__get_valueEv>
    2416:	48 83 c0 18          	add    $0x18,%rax
    241a:	48 83 c4 50          	add    $0x50,%rsp
    241e:	5d                   	pop    %rbp
    241f:	c3                   	retq   

0000000000002420 <_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2IDnEEPKc>:
    2420:	55                   	push   %rbp
    2421:	48 89 e5             	mov    %rsp,%rbp
    2424:	48 83 ec 30          	sub    $0x30,%rsp
    2428:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    242c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    2430:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    2434:	48 89 7d d0          	mov    %rdi,-0x30(%rbp)
    2438:	48 8d 75 e8          	lea    -0x18(%rbp),%rsi
    243c:	48 8d 55 e0          	lea    -0x20(%rbp),%rdx
    2440:	e8 0b 1d 00 00       	callq  4150 <_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2INS_18__default_init_tagESA_EEOT_OT0_>
    2445:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    2449:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    244d:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
    2451:	e8 ea fd ff ff       	callq  2240 <_ZNSt3__111char_traitsIcE6lengthEPKc>
    2456:	48 8b 7d d0          	mov    -0x30(%rbp),%rdi
    245a:	48 8b 75 d8          	mov    -0x28(%rbp),%rsi
    245e:	48 89 c2             	mov    %rax,%rdx
    2461:	e8 1a ef ff ff       	callq  1380 <_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcm@plt>
    2466:	48 83 c4 30          	add    $0x30,%rsp
    246a:	5d                   	pop    %rbp
    246b:	c3                   	retq   
    246c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000002470 <_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEENS_19__map_value_compareIS7_SA_NS_4lessIS7_EELb1EEENS5_ISA_EEE25__emplace_unique_key_argsIS7_JRKNS_21piecewise_construct_tENS_5tupleIJOS7_EEENSL_IJEEEEEENS_4pairINS_15__tree_iteratorISA_PNS_11__tree_nodeISA_PvEElEEbEERKT_DpOT0_>:
    2470:	55                   	push   %rbp
    2471:	48 89 e5             	mov    %rsp,%rbp
    2474:	48 81 ec a0 00 00 00 	sub    $0xa0,%rsp
    247b:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    247f:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    2483:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    2487:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
    248b:	4c 89 45 c8          	mov    %r8,-0x38(%rbp)
    248f:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
    2493:	48 89 7d 80          	mov    %rdi,-0x80(%rbp)
    2497:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    249b:	48 8d 75 c0          	lea    -0x40(%rbp),%rsi
    249f:	e8 5c 01 00 00       	callq  2600 <_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEENS_19__map_value_compareIS7_SA_NS_4lessIS7_EELb1EEENS5_ISA_EEE12__find_equalIS7_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISL_EERKT_>
    24a4:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
    24a8:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    24ac:	48 8b 00             	mov    (%rax),%rax
    24af:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
    24b3:	c6 45 af 00          	movb   $0x0,-0x51(%rbp)
    24b7:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    24bb:	48 83 38 00          	cmpq   $0x0,(%rax)
    24bf:	0f 85 6c 00 00 00    	jne    2531 <_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEENS_19__map_value_compareIS7_SA_NS_4lessIS7_EELb1EEENS5_ISA_EEE25__emplace_unique_key_argsIS7_JRKNS_21piecewise_construct_tENS_5tupleIJOS7_EEENSL_IJEEEEEENS_4pairINS_15__tree_iteratorISA_PNS_11__tree_nodeISA_PvEElEEbEERKT_DpOT0_+0xc1>
    24c5:	48 8b 75 80          	mov    -0x80(%rbp),%rsi
    24c9:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    24cd:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
    24d1:	4c 8b 45 c8          	mov    -0x38(%rbp),%r8
    24d5:	48 8d 7d 90          	lea    -0x70(%rbp),%rdi
    24d9:	e8 a2 02 00 00       	callq  2780 <_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEENS_19__map_value_compareIS7_SA_NS_4lessIS7_EELb1EEENS5_ISA_EEE16__construct_nodeIJRKNS_21piecewise_construct_tENS_5tupleIJOS7_EEENSL_IJEEEEEENS_10unique_ptrINS_11__tree_nodeISA_PvEENS_22__tree_node_destructorINS5_ISS_EEEEEEDpOT_>
    24de:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    24e2:	48 89 85 70 ff ff ff 	mov    %rax,-0x90(%rbp)
    24e9:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    24ed:	48 89 85 78 ff ff ff 	mov    %rax,-0x88(%rbp)
    24f4:	48 8d 7d 90          	lea    -0x70(%rbp),%rdi
    24f8:	e8 53 04 00 00       	callq  2950 <_ZNKSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEEPvEENS_22__tree_node_destructorINS6_ISD_EEEEE3getEv>
    24fd:	48 8b 7d 80          	mov    -0x80(%rbp),%rdi
    2501:	48 8b b5 70 ff ff ff 	mov    -0x90(%rbp),%rsi
    2508:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
    250f:	48 89 c1             	mov    %rax,%rcx
    2512:	e8 79 03 00 00       	callq  2890 <_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEENS_19__map_value_compareIS7_SA_NS_4lessIS7_EELb1EEENS5_ISA_EEE16__insert_node_atEPNS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEERSL_SL_>
    2517:	48 8d 7d 90          	lea    -0x70(%rbp),%rdi
    251b:	e8 50 04 00 00       	callq  2970 <_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEEPvEENS_22__tree_node_destructorINS6_ISD_EEEEE7releaseEv>
    2520:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
    2524:	c6 45 af 01          	movb   $0x1,-0x51(%rbp)
    2528:	48 8d 7d 90          	lea    -0x70(%rbp),%rdi
    252c:	e8 7f 04 00 00       	callq  29b0 <_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEEPvEENS_22__tree_node_destructorINS6_ISD_EEEEED2Ev>
    2531:	48 8b 75 b0          	mov    -0x50(%rbp),%rsi
    2535:	48 8d 7d 88          	lea    -0x78(%rbp),%rdi
    2539:	48 89 bd 68 ff ff ff 	mov    %rdi,-0x98(%rbp)
    2540:	e8 8b 04 00 00       	callq  29d0 <_ZNSt3__115__tree_iteratorINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEEPNS_11__tree_nodeISA_PvEElEC2ESE_>
    2545:	48 8b b5 68 ff ff ff 	mov    -0x98(%rbp),%rsi
    254c:	48 8d 7d f0          	lea    -0x10(%rbp),%rdi
    2550:	48 8d 55 af          	lea    -0x51(%rbp),%rdx
    2554:	e8 97 04 00 00       	callq  29f0 <_ZNSt3__14pairINS_15__tree_iteratorINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEEPNS_11__tree_nodeISB_PvEElEEbEC2ISG_RbLb0EEEOT_OT0_>
    2559:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    255d:	8a 55 f8             	mov    -0x8(%rbp),%dl
    2560:	48 81 c4 a0 00 00 00 	add    $0xa0,%rsp
    2567:	5d                   	pop    %rbp
    2568:	c3                   	retq   
    2569:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000002570 <_ZNSt3__116forward_as_tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEENS_5tupleIJDpOT_EEESA_>:
    2570:	55                   	push   %rbp
    2571:	48 89 e5             	mov    %rsp,%rbp
    2574:	48 83 ec 10          	sub    $0x10,%rsp
    2578:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
    257c:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
    2580:	48 8d 7d f8          	lea    -0x8(%rbp),%rdi
    2584:	e8 e7 1a 00 00       	callq  4070 <_ZNSt3__15tupleIJONS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEC2IJS6_ELb0ELb0EEEDpOT_>
    2589:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    258d:	48 83 c4 10          	add    $0x10,%rsp
    2591:	5d                   	pop    %rbp
    2592:	c3                   	retq   
    2593:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    259a:	00 00 00 
    259d:	0f 1f 00             	nopl   (%rax)

00000000000025a0 <_ZNSt3__116forward_as_tupleIJEEENS_5tupleIJDpOT_EEES4_>:
    25a0:	55                   	push   %rbp
    25a1:	48 89 e5             	mov    %rsp,%rbp
    25a4:	5d                   	pop    %rbp
    25a5:	c3                   	retq   
    25a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    25ad:	00 00 00 

00000000000025b0 <_ZNKSt3__115__tree_iteratorINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEEPNS_11__tree_nodeISA_PvEElEptEv>:
    25b0:	55                   	push   %rbp
    25b1:	48 89 e5             	mov    %rsp,%rbp
    25b4:	48 83 ec 10          	sub    $0x10,%rsp
    25b8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    25bc:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    25c0:	e8 3b 1b 00 00       	callq  4100 <_ZNKSt3__115__tree_iteratorINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEEPNS_11__tree_nodeISA_PvEElE8__get_npEv>
    25c5:	48 89 c7             	mov    %rax,%rdi
    25c8:	48 83 c7 20          	add    $0x20,%rdi
    25cc:	e8 1f 1b 00 00       	callq  40f0 <_ZNSt3__114pointer_traitsIPNS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEEE10pointer_toERSA_>
    25d1:	48 83 c4 10          	add    $0x10,%rsp
    25d5:	5d                   	pop    %rbp
    25d6:	c3                   	retq   
    25d7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    25de:	00 00 

00000000000025e0 <_ZNSt3__112__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEE11__get_valueEv>:
    25e0:	55                   	push   %rbp
    25e1:	48 89 e5             	mov    %rsp,%rbp
    25e4:	48 83 ec 10          	sub    $0x10,%rsp
    25e8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    25ec:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    25f0:	e8 2b 1b 00 00       	callq  4120 <_ZNSt3__17launderINS_4pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEEEEPT_SD_>
    25f5:	48 83 c4 10          	add    $0x10,%rsp
    25f9:	5d                   	pop    %rbp
    25fa:	c3                   	retq   
    25fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002600 <_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEENS_19__map_value_compareIS7_SA_NS_4lessIS7_EELb1EEENS5_ISA_EEE12__find_equalIS7_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISL_EERKT_>:
    2600:	55                   	push   %rbp
    2601:	48 89 e5             	mov    %rsp,%rbp
    2604:	48 83 ec 40          	sub    $0x40,%rsp
    2608:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
    260c:	48 89 75 e8          	mov    %rsi,-0x18(%rbp)
    2610:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
    2614:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
    2618:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
    261c:	e8 ff 03 00 00       	callq  2a20 <_ZNKSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEENS_19__map_value_compareIS7_SA_NS_4lessIS7_EELb1EEENS5_ISA_EEE6__rootEv>
    2621:	48 8b 7d c8          	mov    -0x38(%rbp),%rdi
    2625:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    2629:	e8 12 04 00 00       	callq  2a40 <_ZNKSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEENS_19__map_value_compareIS7_SA_NS_4lessIS7_EELb1EEENS5_ISA_EEE10__root_ptrEv>
    262e:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
    2632:	48 83 7d d8 00       	cmpq   $0x0,-0x28(%rbp)
    2637:	0f 84 0e 01 00 00    	je     274b <_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEENS_19__map_value_compareIS7_SA_NS_4lessIS7_EELb1EEENS5_ISA_EEE12__find_equalIS7_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISL_EERKT_+0x14b>
    263d:	e9 00 00 00 00       	jmpq   2642 <_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEENS_19__map_value_compareIS7_SA_NS_4lessIS7_EELb1EEENS5_ISA_EEE12__find_equalIS7_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISL_EERKT_+0x42>
    2642:	48 8b 7d c8          	mov    -0x38(%rbp),%rdi
    2646:	e8 15 04 00 00       	callq  2a60 <_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEENS_19__map_value_compareIS7_SA_NS_4lessIS7_EELb1EEENS5_ISA_EEE10value_compEv>
    264b:	48 89 c7             	mov    %rax,%rdi
    264e:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    2652:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    2656:	48 83 c2 20          	add    $0x20,%rdx
    265a:	e8 21 04 00 00       	callq  2a80 <_ZNKSt3__119__map_value_compareINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12__value_typeIS6_N9benchmark7CounterEEENS_4lessIS6_EELb1EEclERKS6_RKSA_>
    265f:	a8 01                	test   $0x1,%al
    2661:	0f 85 05 00 00 00    	jne    266c <_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEENS_19__map_value_compareIS7_SA_NS_4lessIS7_EELb1EEENS5_ISA_EEE12__find_equalIS7_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISL_EERKT_+0x6c>
    2667:	e9 46 00 00 00       	jmpq   26b2 <_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEENS_19__map_value_compareIS7_SA_NS_4lessIS7_EELb1EEENS5_ISA_EEE12__find_equalIS7_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISL_EERKT_+0xb2>
    266c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    2670:	48 83 38 00          	cmpq   $0x0,(%rax)
    2674:	0f 84 18 00 00 00    	je     2692 <_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEENS_19__map_value_compareIS7_SA_NS_4lessIS7_EELb1EEENS5_ISA_EEE12__find_equalIS7_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISL_EERKT_+0x92>
    267a:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    267e:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
    2682:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    2686:	48 8b 00             	mov    (%rax),%rax
    2689:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    268d:	e9 1b 00 00 00       	jmpq   26ad <_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEENS_19__map_value_compareIS7_SA_NS_4lessIS7_EELb1EEENS5_ISA_EEE12__find_equalIS7_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISL_EERKT_+0xad>
    2692:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
    2696:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    269a:	48 89 08             	mov    %rcx,(%rax)
    269d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    26a1:	48 8b 00             	mov    (%rax),%rax
    26a4:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    26a8:	e9 bc 00 00 00       	jmpq   2769 <_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEENS_19__map_value_compareIS7_SA_NS_4lessIS7_EELb1EEENS5_ISA_EEE12__find_equalIS7_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISL_EERKT_+0x169>
    26ad:	e9 94 00 00 00       	jmpq   2746 <_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEENS_19__map_value_compareIS7_SA_NS_4lessIS7_EELb1EEENS5_ISA_EEE12__find_equalIS7_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISL_EERKT_+0x146>
    26b2:	48 8b 7d c8          	mov    -0x38(%rbp),%rdi
    26b6:	e8 a5 03 00 00       	callq  2a60 <_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEENS_19__map_value_compareIS7_SA_NS_4lessIS7_EELb1EEENS5_ISA_EEE10value_compEv>
    26bb:	48 89 c7             	mov    %rax,%rdi
    26be:	48 8b 75 d8          	mov    -0x28(%rbp),%rsi
    26c2:	48 83 c6 20          	add    $0x20,%rsi
    26c6:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    26ca:	e8 01 04 00 00       	callq  2ad0 <_ZNKSt3__119__map_value_compareINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12__value_typeIS6_N9benchmark7CounterEEENS_4lessIS6_EELb1EEclERKSA_RKS6_>
    26cf:	a8 01                	test   $0x1,%al
    26d1:	0f 85 05 00 00 00    	jne    26dc <_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEENS_19__map_value_compareIS7_SA_NS_4lessIS7_EELb1EEENS5_ISA_EEE12__find_equalIS7_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISL_EERKT_+0xdc>
    26d7:	e9 4d 00 00 00       	jmpq   2729 <_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEENS_19__map_value_compareIS7_SA_NS_4lessIS7_EELb1EEENS5_ISA_EEE12__find_equalIS7_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISL_EERKT_+0x129>
    26dc:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    26e0:	48 83 78 08 00       	cmpq   $0x0,0x8(%rax)
    26e5:	0f 84 1d 00 00 00    	je     2708 <_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEENS_19__map_value_compareIS7_SA_NS_4lessIS7_EELb1EEENS5_ISA_EEE12__find_equalIS7_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISL_EERKT_+0x108>
    26eb:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    26ef:	48 83 c0 08          	add    $0x8,%rax
    26f3:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
    26f7:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    26fb:	48 8b 40 08          	mov    0x8(%rax),%rax
    26ff:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    2703:	e9 1c 00 00 00       	jmpq   2724 <_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEENS_19__map_value_compareIS7_SA_NS_4lessIS7_EELb1EEENS5_ISA_EEE12__find_equalIS7_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISL_EERKT_+0x124>
    2708:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
    270c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2710:	48 89 08             	mov    %rcx,(%rax)
    2713:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    2717:	48 83 c0 08          	add    $0x8,%rax
    271b:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    271f:	e9 45 00 00 00       	jmpq   2769 <_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEENS_19__map_value_compareIS7_SA_NS_4lessIS7_EELb1EEENS5_ISA_EEE12__find_equalIS7_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISL_EERKT_+0x169>
    2724:	e9 18 00 00 00       	jmpq   2741 <_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEENS_19__map_value_compareIS7_SA_NS_4lessIS7_EELb1EEENS5_ISA_EEE12__find_equalIS7_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISL_EERKT_+0x141>
    2729:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
    272d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2731:	48 89 08             	mov    %rcx,(%rax)
    2734:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    2738:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    273c:	e9 28 00 00 00       	jmpq   2769 <_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEENS_19__map_value_compareIS7_SA_NS_4lessIS7_EELb1EEENS5_ISA_EEE12__find_equalIS7_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISL_EERKT_+0x169>
    2741:	e9 00 00 00 00       	jmpq   2746 <_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEENS_19__map_value_compareIS7_SA_NS_4lessIS7_EELb1EEENS5_ISA_EEE12__find_equalIS7_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISL_EERKT_+0x146>
    2746:	e9 f7 fe ff ff       	jmpq   2642 <_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEENS_19__map_value_compareIS7_SA_NS_4lessIS7_EELb1EEENS5_ISA_EEE12__find_equalIS7_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISL_EERKT_+0x42>
    274b:	48 8b 7d c8          	mov    -0x38(%rbp),%rdi
    274f:	e8 bc 03 00 00       	callq  2b10 <_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEENS_19__map_value_compareIS7_SA_NS_4lessIS7_EELb1EEENS5_ISA_EEE10__end_nodeEv>
    2754:	48 89 c1             	mov    %rax,%rcx
    2757:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    275b:	48 89 08             	mov    %rcx,(%rax)
    275e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2762:	48 8b 00             	mov    (%rax),%rax
    2765:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    2769:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    276d:	48 83 c4 40          	add    $0x40,%rsp
    2771:	5d                   	pop    %rbp
    2772:	c3                   	retq   
    2773:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    277a:	00 00 00 
    277d:	0f 1f 00             	nopl   (%rax)

0000000000002780 <_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEENS_19__map_value_compareIS7_SA_NS_4lessIS7_EELb1EEENS5_ISA_EEE16__construct_nodeIJRKNS_21piecewise_construct_tENS_5tupleIJOS7_EEENSL_IJEEEEEENS_10unique_ptrINS_11__tree_nodeISA_PvEENS_22__tree_node_destructorINS5_ISS_EEEEEEDpOT_>:
    2780:	55                   	push   %rbp
    2781:	48 89 e5             	mov    %rsp,%rbp
    2784:	48 81 ec 80 00 00 00 	sub    $0x80,%rsp
    278b:	48 89 7d 98          	mov    %rdi,-0x68(%rbp)
    278f:	48 89 7d 80          	mov    %rdi,-0x80(%rbp)
    2793:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
    2797:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
    279b:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
    279f:	4c 89 45 e0          	mov    %r8,-0x20(%rbp)
    27a3:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    27a7:	e8 14 09 00 00       	callq  30c0 <_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEENS_19__map_value_compareIS7_SA_NS_4lessIS7_EELb1EEENS5_ISA_EEE12__node_allocEv>
    27ac:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    27b0:	c6 45 d7 00          	movb   $0x0,-0x29(%rbp)
    27b4:	48 8b 7d d8          	mov    -0x28(%rbp),%rdi
    27b8:	be 01 00 00 00       	mov    $0x1,%esi
    27bd:	e8 1e 09 00 00       	callq  30e0 <_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEN9benchmark7CounterEEEPvEEEEE8allocateERSE_m>
    27c2:	48 89 45 88          	mov    %rax,-0x78(%rbp)
    27c6:	48 8b 75 d8          	mov    -0x28(%rbp),%rsi
    27ca:	48 8d 7d c0          	lea    -0x40(%rbp),%rdi
    27ce:	48 89 7d 90          	mov    %rdi,-0x70(%rbp)
    27d2:	31 d2                	xor    %edx,%edx
    27d4:	e8 37 09 00 00       	callq  3110 <_ZNSt3__122__tree_node_destructorINS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEN9benchmark7CounterEEEPvEEEEEC2ERSE_b>
    27d9:	48 8b 75 88          	mov    -0x78(%rbp),%rsi
    27dd:	48 8b 55 90          	mov    -0x70(%rbp),%rdx
    27e1:	48 8b 7d 98          	mov    -0x68(%rbp),%rdi
    27e5:	e8 56 09 00 00       	callq  3140 <_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEEPvEENS_22__tree_node_destructorINS6_ISD_EEEEEC2ILb1EvEEPSD_NS_16__dependent_typeINS_27__unique_ptr_deleter_sfinaeISG_EEXT_EE20__good_rval_ref_typeE>
    27ea:	48 8b 7d 98          	mov    -0x68(%rbp),%rdi
    27ee:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    27f2:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
    27f6:	e8 e5 09 00 00       	callq  31e0 <_ZNKSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEEPvEENS_22__tree_node_destructorINS6_ISD_EEEEEptEv>
    27fb:	48 89 c7             	mov    %rax,%rdi
    27fe:	48 83 c7 20          	add    $0x20,%rdi
    2802:	e8 b9 09 00 00       	callq  31c0 <_ZNSt3__122__tree_key_value_typesINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEEE9__get_ptrERSA_>
    2807:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
    280b:	e9 00 00 00 00       	jmpq   2810 <_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEENS_19__map_value_compareIS7_SA_NS_4lessIS7_EELb1EEENS5_ISA_EEE16__construct_nodeIJRKNS_21piecewise_construct_tENS_5tupleIJOS7_EEENSL_IJEEEEEENS_10unique_ptrINS_11__tree_nodeISA_PvEENS_22__tree_node_destructorINS5_ISS_EEEEEEDpOT_+0x90>
    2810:	48 8b 75 a8          	mov    -0x58(%rbp),%rsi
    2814:	48 8b 7d a0          	mov    -0x60(%rbp),%rdi
    2818:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    281c:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    2820:	4c 8b 45 e0          	mov    -0x20(%rbp),%r8
    2824:	e8 57 09 00 00       	callq  3180 <_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEN9benchmark7CounterEEEPvEEEEE9constructINS_4pairIKS8_SA_EEJRKNS_21piecewise_construct_tENS_5tupleIJOS8_EEENSN_IJEEEEEEvRSE_PT_DpOT0_>
    2829:	e9 00 00 00 00       	jmpq   282e <_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEENS_19__map_value_compareIS7_SA_NS_4lessIS7_EELb1EEENS5_ISA_EEE16__construct_nodeIJRKNS_21piecewise_construct_tENS_5tupleIJOS7_EEENSL_IJEEEEEENS_10unique_ptrINS_11__tree_nodeISA_PvEENS_22__tree_node_destructorINS5_ISS_EEEEEEDpOT_+0xae>
    282e:	48 8b 7d 98          	mov    -0x68(%rbp),%rdi
    2832:	e8 c9 09 00 00       	callq  3200 <_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEEPvEENS_22__tree_node_destructorINS6_ISD_EEEEE11get_deleterEv>
    2837:	c6 40 08 01          	movb   $0x1,0x8(%rax)
    283b:	c6 45 d7 01          	movb   $0x1,-0x29(%rbp)
    283f:	f6 45 d7 01          	testb  $0x1,-0x29(%rbp)
    2843:	0f 85 28 00 00 00    	jne    2871 <_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEENS_19__map_value_compareIS7_SA_NS_4lessIS7_EELb1EEENS5_ISA_EEE16__construct_nodeIJRKNS_21piecewise_construct_tENS_5tupleIJOS7_EEENSL_IJEEEEEENS_10unique_ptrINS_11__tree_nodeISA_PvEENS_22__tree_node_destructorINS5_ISS_EEEEEEDpOT_+0xf1>
    2849:	e9 1a 00 00 00       	jmpq   2868 <_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEENS_19__map_value_compareIS7_SA_NS_4lessIS7_EELb1EEENS5_ISA_EEE16__construct_nodeIJRKNS_21piecewise_construct_tENS_5tupleIJOS7_EEENSL_IJEEEEEENS_10unique_ptrINS_11__tree_nodeISA_PvEENS_22__tree_node_destructorINS5_ISS_EEEEEEDpOT_+0xe8>
    284e:	48 8b 7d 98          	mov    -0x68(%rbp),%rdi
    2852:	48 89 c1             	mov    %rax,%rcx
    2855:	89 d0                	mov    %edx,%eax
    2857:	48 89 4d b8          	mov    %rcx,-0x48(%rbp)
    285b:	89 45 b4             	mov    %eax,-0x4c(%rbp)
    285e:	e8 4d 01 00 00       	callq  29b0 <_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEEPvEENS_22__tree_node_destructorINS6_ISD_EEEEED2Ev>
    2863:	e9 16 00 00 00       	jmpq   287e <_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEENS_19__map_value_compareIS7_SA_NS_4lessIS7_EELb1EEENS5_ISA_EEE16__construct_nodeIJRKNS_21piecewise_construct_tENS_5tupleIJOS7_EEENSL_IJEEEEEENS_10unique_ptrINS_11__tree_nodeISA_PvEENS_22__tree_node_destructorINS5_ISS_EEEEEEDpOT_+0xfe>
    2868:	48 8b 7d 98          	mov    -0x68(%rbp),%rdi
    286c:	e8 3f 01 00 00       	callq  29b0 <_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEEPvEENS_22__tree_node_destructorINS6_ISD_EEEEED2Ev>
    2871:	48 8b 45 80          	mov    -0x80(%rbp),%rax
    2875:	48 81 c4 80 00 00 00 	add    $0x80,%rsp
    287c:	5d                   	pop    %rbp
    287d:	c3                   	retq   
    287e:	48 8b 7d b8          	mov    -0x48(%rbp),%rdi
    2882:	e8 69 eb ff ff       	callq  13f0 <_Unwind_Resume@plt>
    2887:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    288e:	00 00 

0000000000002890 <_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEENS_19__map_value_compareIS7_SA_NS_4lessIS7_EELb1EEENS5_ISA_EEE16__insert_node_atEPNS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEERSL_SL_>:
    2890:	55                   	push   %rbp
    2891:	48 89 e5             	mov    %rsp,%rbp
    2894:	48 83 ec 30          	sub    $0x30,%rsp
    2898:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    289c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    28a0:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    28a4:	48 89 4d e0          	mov    %rcx,-0x20(%rbp)
    28a8:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    28ac:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    28b0:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    28b4:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
    28bb:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    28bf:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
    28c6:	00 
    28c7:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
    28cb:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    28cf:	48 89 48 10          	mov    %rcx,0x10(%rax)
    28d3:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    28d7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    28db:	48 89 08             	mov    %rcx,(%rax)
    28de:	e8 cd 0e 00 00       	callq  37b0 <_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEENS_19__map_value_compareIS7_SA_NS_4lessIS7_EELb1EEENS5_ISA_EEE12__begin_nodeEv>
    28e3:	48 8b 00             	mov    (%rax),%rax
    28e6:	48 83 38 00          	cmpq   $0x0,(%rax)
    28ea:	0f 84 23 00 00 00    	je     2913 <_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEENS_19__map_value_compareIS7_SA_NS_4lessIS7_EELb1EEENS5_ISA_EEE16__insert_node_atEPNS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEERSL_SL_+0x83>
    28f0:	48 8b 7d d8          	mov    -0x28(%rbp),%rdi
    28f4:	e8 b7 0e 00 00       	callq  37b0 <_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEENS_19__map_value_compareIS7_SA_NS_4lessIS7_EELb1EEENS5_ISA_EEE12__begin_nodeEv>
    28f9:	48 8b 7d d8          	mov    -0x28(%rbp),%rdi
    28fd:	48 8b 00             	mov    (%rax),%rax
    2900:	48 8b 00             	mov    (%rax),%rax
    2903:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
    2907:	e8 a4 0e 00 00       	callq  37b0 <_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEENS_19__map_value_compareIS7_SA_NS_4lessIS7_EELb1EEENS5_ISA_EEE12__begin_nodeEv>
    290c:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
    2910:	48 89 08             	mov    %rcx,(%rax)
    2913:	48 8b 7d d8          	mov    -0x28(%rbp),%rdi
    2917:	e8 f4 01 00 00       	callq  2b10 <_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEENS_19__map_value_compareIS7_SA_NS_4lessIS7_EELb1EEENS5_ISA_EEE10__end_nodeEv>
    291c:	48 8b 38             	mov    (%rax),%rdi
    291f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2923:	48 8b 30             	mov    (%rax),%rsi
    2926:	e8 95 0e 00 00       	callq  37c0 <_ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_>
    292b:	48 8b 7d d8          	mov    -0x28(%rbp),%rdi
    292f:	e8 ac 11 00 00       	callq  3ae0 <_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEENS_19__map_value_compareIS7_SA_NS_4lessIS7_EELb1EEENS5_ISA_EEE4sizeEv>
    2934:	48 8b 08             	mov    (%rax),%rcx
    2937:	48 83 c1 01          	add    $0x1,%rcx
    293b:	48 89 08             	mov    %rcx,(%rax)
    293e:	48 83 c4 30          	add    $0x30,%rsp
    2942:	5d                   	pop    %rbp
    2943:	c3                   	retq   
    2944:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    294b:	00 00 00 
    294e:	66 90                	xchg   %ax,%ax

0000000000002950 <_ZNKSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEEPvEENS_22__tree_node_destructorINS6_ISD_EEEEE3getEv>:
    2950:	55                   	push   %rbp
    2951:	48 89 e5             	mov    %rsp,%rbp
    2954:	48 83 ec 10          	sub    $0x10,%rsp
    2958:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    295c:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    2960:	e8 eb 0d 00 00       	callq  3750 <_ZNKSt3__117__compressed_pairIPNS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEEPvEENS_22__tree_node_destructorINS6_ISD_EEEEE5firstEv>
    2965:	48 8b 00             	mov    (%rax),%rax
    2968:	48 83 c4 10          	add    $0x10,%rsp
    296c:	5d                   	pop    %rbp
    296d:	c3                   	retq   
    296e:	66 90                	xchg   %ax,%ax

0000000000002970 <_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEEPvEENS_22__tree_node_destructorINS6_ISD_EEEEE7releaseEv>:
    2970:	55                   	push   %rbp
    2971:	48 89 e5             	mov    %rsp,%rbp
    2974:	48 83 ec 20          	sub    $0x20,%rsp
    2978:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    297c:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    2980:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    2984:	e8 a7 13 00 00       	callq  3d30 <_ZNSt3__117__compressed_pairIPNS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEEPvEENS_22__tree_node_destructorINS6_ISD_EEEEE5firstEv>
    2989:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
    298d:	48 8b 00             	mov    (%rax),%rax
    2990:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    2994:	e8 97 13 00 00       	callq  3d30 <_ZNSt3__117__compressed_pairIPNS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEEPvEENS_22__tree_node_destructorINS6_ISD_EEEEE5firstEv>
    2999:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
    29a0:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    29a4:	48 83 c4 20          	add    $0x20,%rsp
    29a8:	5d                   	pop    %rbp
    29a9:	c3                   	retq   
    29aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000029b0 <_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEEPvEENS_22__tree_node_destructorINS6_ISD_EEEEED2Ev>:
    29b0:	55                   	push   %rbp
    29b1:	48 89 e5             	mov    %rsp,%rbp
    29b4:	48 83 ec 10          	sub    $0x10,%rsp
    29b8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    29bc:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    29c0:	31 c0                	xor    %eax,%eax
    29c2:	89 c6                	mov    %eax,%esi
    29c4:	e8 97 13 00 00       	callq  3d60 <_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEEPvEENS_22__tree_node_destructorINS6_ISD_EEEEE5resetEPSD_>
    29c9:	48 83 c4 10          	add    $0x10,%rsp
    29cd:	5d                   	pop    %rbp
    29ce:	c3                   	retq   
    29cf:	90                   	nop

00000000000029d0 <_ZNSt3__115__tree_iteratorINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEEPNS_11__tree_nodeISA_PvEElEC2ESE_>:
    29d0:	55                   	push   %rbp
    29d1:	48 89 e5             	mov    %rsp,%rbp
    29d4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    29d8:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    29dc:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    29e0:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
    29e4:	48 89 08             	mov    %rcx,(%rax)
    29e7:	5d                   	pop    %rbp
    29e8:	c3                   	retq   
    29e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000029f0 <_ZNSt3__14pairINS_15__tree_iteratorINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEEPNS_11__tree_nodeISB_PvEElEEbEC2ISG_RbLb0EEEOT_OT0_>:
    29f0:	55                   	push   %rbp
    29f1:	48 89 e5             	mov    %rsp,%rbp
    29f4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    29f8:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    29fc:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    2a00:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2a04:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
    2a08:	48 8b 09             	mov    (%rcx),%rcx
    2a0b:	48 89 08             	mov    %rcx,(%rax)
    2a0e:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    2a12:	8a 09                	mov    (%rcx),%cl
    2a14:	80 e1 01             	and    $0x1,%cl
    2a17:	88 48 08             	mov    %cl,0x8(%rax)
    2a1a:	5d                   	pop    %rbp
    2a1b:	c3                   	retq   
    2a1c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000002a20 <_ZNKSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEENS_19__map_value_compareIS7_SA_NS_4lessIS7_EELb1EEENS5_ISA_EEE6__rootEv>:
    2a20:	55                   	push   %rbp
    2a21:	48 89 e5             	mov    %rsp,%rbp
    2a24:	48 83 ec 10          	sub    $0x10,%rsp
    2a28:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    2a2c:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    2a30:	e8 0b 01 00 00       	callq  2b40 <_ZNKSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEENS_19__map_value_compareIS7_SA_NS_4lessIS7_EELb1EEENS5_ISA_EEE10__end_nodeEv>
    2a35:	48 8b 00             	mov    (%rax),%rax
    2a38:	48 83 c4 10          	add    $0x10,%rsp
    2a3c:	5d                   	pop    %rbp
    2a3d:	c3                   	retq   
    2a3e:	66 90                	xchg   %ax,%ax

0000000000002a40 <_ZNKSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEENS_19__map_value_compareIS7_SA_NS_4lessIS7_EELb1EEENS5_ISA_EEE10__root_ptrEv>:
    2a40:	55                   	push   %rbp
    2a41:	48 89 e5             	mov    %rsp,%rbp
    2a44:	48 83 ec 10          	sub    $0x10,%rsp
    2a48:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    2a4c:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    2a50:	e8 eb 00 00 00       	callq  2b40 <_ZNKSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEENS_19__map_value_compareIS7_SA_NS_4lessIS7_EELb1EEENS5_ISA_EEE10__end_nodeEv>
    2a55:	48 83 c4 10          	add    $0x10,%rsp
    2a59:	5d                   	pop    %rbp
    2a5a:	c3                   	retq   
    2a5b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002a60 <_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEENS_19__map_value_compareIS7_SA_NS_4lessIS7_EELb1EEENS5_ISA_EEE10value_compEv>:
    2a60:	55                   	push   %rbp
    2a61:	48 89 e5             	mov    %rsp,%rbp
    2a64:	48 83 ec 10          	sub    $0x10,%rsp
    2a68:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    2a6c:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    2a70:	48 83 c7 10          	add    $0x10,%rdi
    2a74:	e8 37 01 00 00       	callq  2bb0 <_ZNSt3__117__compressed_pairImNS_19__map_value_compareINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12__value_typeIS7_N9benchmark7CounterEEENS_4lessIS7_EELb1EEEE6secondEv>
    2a79:	48 83 c4 10          	add    $0x10,%rsp
    2a7d:	5d                   	pop    %rbp
    2a7e:	c3                   	retq   
    2a7f:	90                   	nop

0000000000002a80 <_ZNKSt3__119__map_value_compareINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12__value_typeIS6_N9benchmark7CounterEEENS_4lessIS6_EELb1EEclERKS6_RKSA_>:
    2a80:	55                   	push   %rbp
    2a81:	48 89 e5             	mov    %rsp,%rbp
    2a84:	48 83 ec 30          	sub    $0x30,%rsp
    2a88:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    2a8c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    2a90:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    2a94:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2a98:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    2a9c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    2aa0:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    2aa4:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
    2aa8:	e8 63 01 00 00       	callq  2c10 <_ZNKSt3__112__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEE11__get_valueEv>
    2aad:	48 8b 7d d8          	mov    -0x28(%rbp),%rdi
    2ab1:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    2ab5:	48 89 c2             	mov    %rax,%rdx
    2ab8:	e8 23 01 00 00       	callq  2be0 <_ZNKSt3__14lessINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclERKS6_S9_>
    2abd:	24 01                	and    $0x1,%al
    2abf:	0f b6 c0             	movzbl %al,%eax
    2ac2:	48 83 c4 30          	add    $0x30,%rsp
    2ac6:	5d                   	pop    %rbp
    2ac7:	c3                   	retq   
    2ac8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    2acf:	00 

0000000000002ad0 <_ZNKSt3__119__map_value_compareINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12__value_typeIS6_N9benchmark7CounterEEENS_4lessIS6_EELb1EEclERKSA_RKS6_>:
    2ad0:	55                   	push   %rbp
    2ad1:	48 89 e5             	mov    %rsp,%rbp
    2ad4:	48 83 ec 20          	sub    $0x20,%rsp
    2ad8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    2adc:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    2ae0:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    2ae4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2ae8:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    2aec:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
    2af0:	e8 1b 01 00 00       	callq  2c10 <_ZNKSt3__112__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEE11__get_valueEv>
    2af5:	48 8b 7d e0          	mov    -0x20(%rbp),%rdi
    2af9:	48 89 c6             	mov    %rax,%rsi
    2afc:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    2b00:	e8 db 00 00 00       	callq  2be0 <_ZNKSt3__14lessINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclERKS6_S9_>
    2b05:	24 01                	and    $0x1,%al
    2b07:	0f b6 c0             	movzbl %al,%eax
    2b0a:	48 83 c4 20          	add    $0x20,%rsp
    2b0e:	5d                   	pop    %rbp
    2b0f:	c3                   	retq   

0000000000002b10 <_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEENS_19__map_value_compareIS7_SA_NS_4lessIS7_EELb1EEENS5_ISA_EEE10__end_nodeEv>:
    2b10:	55                   	push   %rbp
    2b11:	48 89 e5             	mov    %rsp,%rbp
    2b14:	48 83 ec 10          	sub    $0x10,%rsp
    2b18:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    2b1c:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    2b20:	48 83 c7 08          	add    $0x8,%rdi
    2b24:	e8 67 05 00 00       	callq  3090 <_ZNSt3__117__compressed_pairINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEENS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS7_IcEEEEN9benchmark7CounterEEES3_EEEEE5firstEv>
    2b29:	48 89 c7             	mov    %rax,%rdi
    2b2c:	e8 3f 00 00 00       	callq  2b70 <_ZNSt3__114pointer_traitsIPNS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEEE10pointer_toERS6_>
    2b31:	48 83 c4 10          	add    $0x10,%rsp
    2b35:	5d                   	pop    %rbp
    2b36:	c3                   	retq   
    2b37:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    2b3e:	00 00 

0000000000002b40 <_ZNKSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEENS_19__map_value_compareIS7_SA_NS_4lessIS7_EELb1EEENS5_ISA_EEE10__end_nodeEv>:
    2b40:	55                   	push   %rbp
    2b41:	48 89 e5             	mov    %rsp,%rbp
    2b44:	48 83 ec 10          	sub    $0x10,%rsp
    2b48:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    2b4c:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    2b50:	48 83 c7 08          	add    $0x8,%rdi
    2b54:	e8 27 00 00 00       	callq  2b80 <_ZNKSt3__117__compressed_pairINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEENS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS7_IcEEEEN9benchmark7CounterEEES3_EEEEE5firstEv>
    2b59:	48 89 c7             	mov    %rax,%rdi
    2b5c:	e8 0f 00 00 00       	callq  2b70 <_ZNSt3__114pointer_traitsIPNS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEEE10pointer_toERS6_>
    2b61:	48 83 c4 10          	add    $0x10,%rsp
    2b65:	5d                   	pop    %rbp
    2b66:	c3                   	retq   
    2b67:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    2b6e:	00 00 

0000000000002b70 <_ZNSt3__114pointer_traitsIPNS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEEE10pointer_toERS6_>:
    2b70:	55                   	push   %rbp
    2b71:	48 89 e5             	mov    %rsp,%rbp
    2b74:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    2b78:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2b7c:	5d                   	pop    %rbp
    2b7d:	c3                   	retq   
    2b7e:	66 90                	xchg   %ax,%ax

0000000000002b80 <_ZNKSt3__117__compressed_pairINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEENS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS7_IcEEEEN9benchmark7CounterEEES3_EEEEE5firstEv>:
    2b80:	55                   	push   %rbp
    2b81:	48 89 e5             	mov    %rsp,%rbp
    2b84:	48 83 ec 10          	sub    $0x10,%rsp
    2b88:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    2b8c:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    2b90:	e8 0b 00 00 00       	callq  2ba0 <_ZNKSt3__122__compressed_pair_elemINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEELi0ELb0EE5__getEv>
    2b95:	48 83 c4 10          	add    $0x10,%rsp
    2b99:	5d                   	pop    %rbp
    2b9a:	c3                   	retq   
    2b9b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002ba0 <_ZNKSt3__122__compressed_pair_elemINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEELi0ELb0EE5__getEv>:
    2ba0:	55                   	push   %rbp
    2ba1:	48 89 e5             	mov    %rsp,%rbp
    2ba4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    2ba8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2bac:	5d                   	pop    %rbp
    2bad:	c3                   	retq   
    2bae:	66 90                	xchg   %ax,%ax

0000000000002bb0 <_ZNSt3__117__compressed_pairImNS_19__map_value_compareINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12__value_typeIS7_N9benchmark7CounterEEENS_4lessIS7_EELb1EEEE6secondEv>:
    2bb0:	55                   	push   %rbp
    2bb1:	48 89 e5             	mov    %rsp,%rbp
    2bb4:	48 83 ec 10          	sub    $0x10,%rsp
    2bb8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    2bbc:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    2bc0:	e8 0b 00 00 00       	callq  2bd0 <_ZNSt3__122__compressed_pair_elemINS_19__map_value_compareINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12__value_typeIS7_N9benchmark7CounterEEENS_4lessIS7_EELb1EEELi1ELb1EE5__getEv>
    2bc5:	48 83 c4 10          	add    $0x10,%rsp
    2bc9:	5d                   	pop    %rbp
    2bca:	c3                   	retq   
    2bcb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002bd0 <_ZNSt3__122__compressed_pair_elemINS_19__map_value_compareINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12__value_typeIS7_N9benchmark7CounterEEENS_4lessIS7_EELb1EEELi1ELb1EE5__getEv>:
    2bd0:	55                   	push   %rbp
    2bd1:	48 89 e5             	mov    %rsp,%rbp
    2bd4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    2bd8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2bdc:	5d                   	pop    %rbp
    2bdd:	c3                   	retq   
    2bde:	66 90                	xchg   %ax,%ax

0000000000002be0 <_ZNKSt3__14lessINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclERKS6_S9_>:
    2be0:	55                   	push   %rbp
    2be1:	48 89 e5             	mov    %rsp,%rbp
    2be4:	48 83 ec 20          	sub    $0x20,%rsp
    2be8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    2bec:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    2bf0:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    2bf4:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
    2bf8:	48 8b 75 e8          	mov    -0x18(%rbp),%rsi
    2bfc:	e8 2f 00 00 00       	callq  2c30 <_ZNSt3__1ltIcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EESB_>
    2c01:	24 01                	and    $0x1,%al
    2c03:	0f b6 c0             	movzbl %al,%eax
    2c06:	48 83 c4 20          	add    $0x20,%rsp
    2c0a:	5d                   	pop    %rbp
    2c0b:	c3                   	retq   
    2c0c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000002c10 <_ZNKSt3__112__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEE11__get_valueEv>:
    2c10:	55                   	push   %rbp
    2c11:	48 89 e5             	mov    %rsp,%rbp
    2c14:	48 83 ec 10          	sub    $0x10,%rsp
    2c18:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    2c1c:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    2c20:	e8 3b 04 00 00       	callq  3060 <_ZNSt3__17launderIKNS_4pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEEEEPT_SE_>
    2c25:	48 83 c4 10          	add    $0x10,%rsp
    2c29:	5d                   	pop    %rbp
    2c2a:	c3                   	retq   
    2c2b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002c30 <_ZNSt3__1ltIcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EESB_>:
    2c30:	55                   	push   %rbp
    2c31:	48 89 e5             	mov    %rsp,%rbp
    2c34:	48 83 ec 10          	sub    $0x10,%rsp
    2c38:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    2c3c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    2c40:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    2c44:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
    2c48:	e8 13 00 00 00       	callq  2c60 <_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareERKS5_>
    2c4d:	83 f8 00             	cmp    $0x0,%eax
    2c50:	0f 9c c0             	setl   %al
    2c53:	24 01                	and    $0x1,%al
    2c55:	0f b6 c0             	movzbl %al,%eax
    2c58:	48 83 c4 10          	add    $0x10,%rsp
    2c5c:	5d                   	pop    %rbp
    2c5d:	c3                   	retq   
    2c5e:	66 90                	xchg   %ax,%ax

0000000000002c60 <_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareERKS5_>:
    2c60:	55                   	push   %rbp
    2c61:	48 89 e5             	mov    %rsp,%rbp
    2c64:	48 83 ec 30          	sub    $0x30,%rsp
    2c68:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    2c6c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    2c70:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2c74:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
    2c78:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
    2c7c:	e8 0f 01 00 00       	callq  2d90 <_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEEv>
    2c81:	48 8b 7d d0          	mov    -0x30(%rbp),%rdi
    2c85:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    2c89:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    2c8d:	48 8d 75 e0          	lea    -0x20(%rbp),%rsi
    2c91:	e8 1a 00 00 00       	callq  2cb0 <_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareINS_17basic_string_viewIcS2_EEEENS_9_MetaBaseIXsr33__can_be_converted_to_string_viewIcS2_T_EE5valueEE13_EnableIfImplIiEERKSA_>
    2c96:	89 45 dc             	mov    %eax,-0x24(%rbp)
    2c99:	e9 00 00 00 00       	jmpq   2c9e <_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareERKS5_+0x3e>
    2c9e:	8b 45 dc             	mov    -0x24(%rbp),%eax
    2ca1:	48 83 c4 30          	add    $0x30,%rsp
    2ca5:	5d                   	pop    %rbp
    2ca6:	c3                   	retq   
    2ca7:	48 89 c7             	mov    %rax,%rdi
    2caa:	e8 31 01 00 00       	callq  2de0 <__clang_call_terminate>
    2caf:	90                   	nop

0000000000002cb0 <_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareINS_17basic_string_viewIcS2_EEEENS_9_MetaBaseIXsr33__can_be_converted_to_string_viewIcS2_T_EE5valueEE13_EnableIfImplIiEERKSA_>:
    2cb0:	55                   	push   %rbp
    2cb1:	48 89 e5             	mov    %rsp,%rbp
    2cb4:	48 83 ec 60          	sub    $0x60,%rsp
    2cb8:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
    2cbc:	48 89 75 e8          	mov    %rsi,-0x18(%rbp)
    2cc0:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
    2cc4:	48 89 7d a8          	mov    %rdi,-0x58(%rbp)
    2cc8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2ccc:	48 8b 08             	mov    (%rax),%rcx
    2ccf:	48 89 4d d8          	mov    %rcx,-0x28(%rbp)
    2cd3:	48 8b 40 08          	mov    0x8(%rax),%rax
    2cd7:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    2cdb:	e8 10 01 00 00       	callq  2df0 <_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv>
    2ce0:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
    2ce4:	48 8d 7d d8          	lea    -0x28(%rbp),%rdi
    2ce8:	e8 93 f5 ff ff       	callq  2280 <_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4sizeEv>
    2ced:	48 8b 7d a8          	mov    -0x58(%rbp),%rdi
    2cf1:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    2cf5:	e8 96 01 00 00       	callq  2e90 <_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv>
    2cfa:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
    2cfe:	48 8d 7d d8          	lea    -0x28(%rbp),%rdi
    2d02:	e8 59 f5 ff ff       	callq  2260 <_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4dataEv>
    2d07:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
    2d0b:	48 8d 7d d0          	lea    -0x30(%rbp),%rdi
    2d0f:	48 8d 75 c8          	lea    -0x38(%rbp),%rsi
    2d13:	e8 88 f5 ff ff       	callq  22a0 <_ZNSt3__13minImEERKT_S3_S3_>
    2d18:	48 8b 7d b0          	mov    -0x50(%rbp),%rdi
    2d1c:	48 8b 75 b8          	mov    -0x48(%rbp),%rsi
    2d20:	48 8b 10             	mov    (%rax),%rdx
    2d23:	e8 18 01 00 00       	callq  2e40 <_ZNSt3__111char_traitsIcE7compareEPKcS3_m>
    2d28:	89 45 c4             	mov    %eax,-0x3c(%rbp)
    2d2b:	83 7d c4 00          	cmpl   $0x0,-0x3c(%rbp)
    2d2f:	0f 84 0b 00 00 00    	je     2d40 <_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareINS_17basic_string_viewIcS2_EEEENS_9_MetaBaseIXsr33__can_be_converted_to_string_viewIcS2_T_EE5valueEE13_EnableIfImplIiEERKSA_+0x90>
    2d35:	8b 45 c4             	mov    -0x3c(%rbp),%eax
    2d38:	89 45 fc             	mov    %eax,-0x4(%rbp)
    2d3b:	e9 3b 00 00 00       	jmpq   2d7b <_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareINS_17basic_string_viewIcS2_EEEENS_9_MetaBaseIXsr33__can_be_converted_to_string_viewIcS2_T_EE5valueEE13_EnableIfImplIiEERKSA_+0xcb>
    2d40:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    2d44:	48 3b 45 c8          	cmp    -0x38(%rbp),%rax
    2d48:	0f 83 0c 00 00 00    	jae    2d5a <_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareINS_17basic_string_viewIcS2_EEEENS_9_MetaBaseIXsr33__can_be_converted_to_string_viewIcS2_T_EE5valueEE13_EnableIfImplIiEERKSA_+0xaa>
    2d4e:	c7 45 fc ff ff ff ff 	movl   $0xffffffff,-0x4(%rbp)
    2d55:	e9 21 00 00 00       	jmpq   2d7b <_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareINS_17basic_string_viewIcS2_EEEENS_9_MetaBaseIXsr33__can_be_converted_to_string_viewIcS2_T_EE5valueEE13_EnableIfImplIiEERKSA_+0xcb>
    2d5a:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    2d5e:	48 3b 45 c8          	cmp    -0x38(%rbp),%rax
    2d62:	0f 86 0c 00 00 00    	jbe    2d74 <_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareINS_17basic_string_viewIcS2_EEEENS_9_MetaBaseIXsr33__can_be_converted_to_string_viewIcS2_T_EE5valueEE13_EnableIfImplIiEERKSA_+0xc4>
    2d68:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%rbp)
    2d6f:	e9 07 00 00 00       	jmpq   2d7b <_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareINS_17basic_string_viewIcS2_EEEENS_9_MetaBaseIXsr33__can_be_converted_to_string_viewIcS2_T_EE5valueEE13_EnableIfImplIiEERKSA_+0xcb>
    2d74:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
    2d7b:	8b 45 fc             	mov    -0x4(%rbp),%eax
    2d7e:	48 83 c4 60          	add    $0x60,%rsp
    2d82:	5d                   	pop    %rbp
    2d83:	c3                   	retq   
    2d84:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    2d8b:	00 00 00 
    2d8e:	66 90                	xchg   %ax,%ax

0000000000002d90 <_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEEv>:
    2d90:	55                   	push   %rbp
    2d91:	48 89 e5             	mov    %rsp,%rbp
    2d94:	48 83 ec 30          	sub    $0x30,%rsp
    2d98:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    2d9c:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
    2da0:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    2da4:	e8 e7 00 00 00       	callq  2e90 <_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv>
    2da9:	48 8b 7d d8          	mov    -0x28(%rbp),%rdi
    2dad:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    2db1:	e8 3a 00 00 00       	callq  2df0 <_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv>
    2db6:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    2dba:	48 89 c2             	mov    %rax,%rdx
    2dbd:	48 8d 7d f0          	lea    -0x10(%rbp),%rdi
    2dc1:	e8 6a 02 00 00       	callq  3030 <_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2EPKcm>
    2dc6:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    2dca:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    2dce:	48 83 c4 30          	add    $0x30,%rsp
    2dd2:	5d                   	pop    %rbp
    2dd3:	c3                   	retq   
    2dd4:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    2ddb:	00 00 00 
    2dde:	66 90                	xchg   %ax,%ax

0000000000002de0 <__clang_call_terminate>:
    2de0:	50                   	push   %rax
    2de1:	e8 3a e5 ff ff       	callq  1320 <__cxa_begin_catch@plt>
    2de6:	e8 c5 e6 ff ff       	callq  14b0 <_ZSt9terminatev@plt>
    2deb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002df0 <_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv>:
    2df0:	55                   	push   %rbp
    2df1:	48 89 e5             	mov    %rsp,%rbp
    2df4:	48 83 ec 20          	sub    $0x20,%rsp
    2df8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    2dfc:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    2e00:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
    2e04:	e8 b7 00 00 00       	callq  2ec0 <_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv>
    2e09:	a8 01                	test   $0x1,%al
    2e0b:	0f 85 05 00 00 00    	jne    2e16 <_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv+0x26>
    2e11:	e9 12 00 00 00       	jmpq   2e28 <_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv+0x38>
    2e16:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
    2e1a:	e8 e1 00 00 00       	callq  2f00 <_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeEv>
    2e1f:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    2e23:	e9 0d 00 00 00       	jmpq   2e35 <_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv+0x45>
    2e28:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
    2e2c:	e8 ef 00 00 00       	callq  2f20 <_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeEv>
    2e31:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    2e35:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2e39:	48 83 c4 20          	add    $0x20,%rsp
    2e3d:	5d                   	pop    %rbp
    2e3e:	c3                   	retq   
    2e3f:	90                   	nop

0000000000002e40 <_ZNSt3__111char_traitsIcE7compareEPKcS3_m>:
    2e40:	55                   	push   %rbp
    2e41:	48 89 e5             	mov    %rsp,%rbp
    2e44:	48 83 ec 20          	sub    $0x20,%rsp
    2e48:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
    2e4c:	48 89 75 e8          	mov    %rsi,-0x18(%rbp)
    2e50:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
    2e54:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
    2e59:	0f 85 0c 00 00 00    	jne    2e6b <_ZNSt3__111char_traitsIcE7compareEPKcS3_m+0x2b>
    2e5f:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
    2e66:	e9 14 00 00 00       	jmpq   2e7f <_ZNSt3__111char_traitsIcE7compareEPKcS3_m+0x3f>
    2e6b:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
    2e6f:	48 8b 75 e8          	mov    -0x18(%rbp),%rsi
    2e73:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    2e77:	e8 f4 e5 ff ff       	callq  1470 <memcmp@plt>
    2e7c:	89 45 fc             	mov    %eax,-0x4(%rbp)
    2e7f:	8b 45 fc             	mov    -0x4(%rbp),%eax
    2e82:	48 83 c4 20          	add    $0x20,%rsp
    2e86:	5d                   	pop    %rbp
    2e87:	c3                   	retq   
    2e88:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    2e8f:	00 

0000000000002e90 <_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv>:
    2e90:	55                   	push   %rbp
    2e91:	48 89 e5             	mov    %rsp,%rbp
    2e94:	48 83 ec 10          	sub    $0x10,%rsp
    2e98:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    2e9c:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    2ea0:	e8 db 00 00 00       	callq  2f80 <_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv>
    2ea5:	48 89 c7             	mov    %rax,%rdi
    2ea8:	e8 c3 00 00 00       	callq  2f70 <_ZNSt3__112__to_addressIKcEEPT_S3_>
    2ead:	48 83 c4 10          	add    $0x10,%rsp
    2eb1:	5d                   	pop    %rbp
    2eb2:	c3                   	retq   
    2eb3:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    2eba:	00 00 00 
    2ebd:	0f 1f 00             	nopl   (%rax)

0000000000002ec0 <_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv>:
    2ec0:	55                   	push   %rbp
    2ec1:	48 89 e5             	mov    %rsp,%rbp
    2ec4:	48 83 ec 10          	sub    $0x10,%rsp
    2ec8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    2ecc:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    2ed0:	e8 6b 00 00 00       	callq  2f40 <_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv>
    2ed5:	0f b6 40 17          	movzbl 0x17(%rax),%eax
    2ed9:	48 25 80 00 00 00    	and    $0x80,%rax
    2edf:	48 83 f8 00          	cmp    $0x0,%rax
    2ee3:	0f 95 c0             	setne  %al
    2ee6:	24 01                	and    $0x1,%al
    2ee8:	0f b6 c0             	movzbl %al,%eax
    2eeb:	48 83 c4 10          	add    $0x10,%rsp
    2eef:	5d                   	pop    %rbp
    2ef0:	c3                   	retq   
    2ef1:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    2ef8:	00 00 00 
    2efb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002f00 <_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeEv>:
    2f00:	55                   	push   %rbp
    2f01:	48 89 e5             	mov    %rsp,%rbp
    2f04:	48 83 ec 10          	sub    $0x10,%rsp
    2f08:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    2f0c:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    2f10:	e8 2b 00 00 00       	callq  2f40 <_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv>
    2f15:	48 8b 40 08          	mov    0x8(%rax),%rax
    2f19:	48 83 c4 10          	add    $0x10,%rsp
    2f1d:	5d                   	pop    %rbp
    2f1e:	c3                   	retq   
    2f1f:	90                   	nop

0000000000002f20 <_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeEv>:
    2f20:	55                   	push   %rbp
    2f21:	48 89 e5             	mov    %rsp,%rbp
    2f24:	48 83 ec 10          	sub    $0x10,%rsp
    2f28:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    2f2c:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    2f30:	e8 0b 00 00 00       	callq  2f40 <_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv>
    2f35:	0f b6 40 17          	movzbl 0x17(%rax),%eax
    2f39:	48 83 c4 10          	add    $0x10,%rsp
    2f3d:	5d                   	pop    %rbp
    2f3e:	c3                   	retq   
    2f3f:	90                   	nop

0000000000002f40 <_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv>:
    2f40:	55                   	push   %rbp
    2f41:	48 89 e5             	mov    %rsp,%rbp
    2f44:	48 83 ec 10          	sub    $0x10,%rsp
    2f48:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    2f4c:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    2f50:	e8 0b 00 00 00       	callq  2f60 <_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv>
    2f55:	48 83 c4 10          	add    $0x10,%rsp
    2f59:	5d                   	pop    %rbp
    2f5a:	c3                   	retq   
    2f5b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002f60 <_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv>:
    2f60:	55                   	push   %rbp
    2f61:	48 89 e5             	mov    %rsp,%rbp
    2f64:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    2f68:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2f6c:	5d                   	pop    %rbp
    2f6d:	c3                   	retq   
    2f6e:	66 90                	xchg   %ax,%ax

0000000000002f70 <_ZNSt3__112__to_addressIKcEEPT_S3_>:
    2f70:	55                   	push   %rbp
    2f71:	48 89 e5             	mov    %rsp,%rbp
    2f74:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    2f78:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2f7c:	5d                   	pop    %rbp
    2f7d:	c3                   	retq   
    2f7e:	66 90                	xchg   %ax,%ax

0000000000002f80 <_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv>:
    2f80:	55                   	push   %rbp
    2f81:	48 89 e5             	mov    %rsp,%rbp
    2f84:	48 83 ec 20          	sub    $0x20,%rsp
    2f88:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    2f8c:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    2f90:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
    2f94:	e8 27 ff ff ff       	callq  2ec0 <_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv>
    2f99:	a8 01                	test   $0x1,%al
    2f9b:	0f 85 05 00 00 00    	jne    2fa6 <_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv+0x26>
    2fa1:	e9 12 00 00 00       	jmpq   2fb8 <_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv+0x38>
    2fa6:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
    2faa:	e8 21 00 00 00       	callq  2fd0 <_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv>
    2faf:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    2fb3:	e9 0d 00 00 00       	jmpq   2fc5 <_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv+0x45>
    2fb8:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
    2fbc:	e8 2f 00 00 00       	callq  2ff0 <_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv>
    2fc1:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    2fc5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2fc9:	48 83 c4 20          	add    $0x20,%rsp
    2fcd:	5d                   	pop    %rbp
    2fce:	c3                   	retq   
    2fcf:	90                   	nop

0000000000002fd0 <_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv>:
    2fd0:	55                   	push   %rbp
    2fd1:	48 89 e5             	mov    %rsp,%rbp
    2fd4:	48 83 ec 10          	sub    $0x10,%rsp
    2fd8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    2fdc:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    2fe0:	e8 5b ff ff ff       	callq  2f40 <_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv>
    2fe5:	48 8b 00             	mov    (%rax),%rax
    2fe8:	48 83 c4 10          	add    $0x10,%rsp
    2fec:	5d                   	pop    %rbp
    2fed:	c3                   	retq   
    2fee:	66 90                	xchg   %ax,%ax

0000000000002ff0 <_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv>:
    2ff0:	55                   	push   %rbp
    2ff1:	48 89 e5             	mov    %rsp,%rbp
    2ff4:	48 83 ec 10          	sub    $0x10,%rsp
    2ff8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    2ffc:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    3000:	e8 3b ff ff ff       	callq  2f40 <_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv>
    3005:	48 89 c7             	mov    %rax,%rdi
    3008:	e8 13 00 00 00       	callq  3020 <_ZNSt3__114pointer_traitsIPKcE10pointer_toERS1_>
    300d:	48 83 c4 10          	add    $0x10,%rsp
    3011:	5d                   	pop    %rbp
    3012:	c3                   	retq   
    3013:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    301a:	00 00 00 
    301d:	0f 1f 00             	nopl   (%rax)

0000000000003020 <_ZNSt3__114pointer_traitsIPKcE10pointer_toERS1_>:
    3020:	55                   	push   %rbp
    3021:	48 89 e5             	mov    %rsp,%rbp
    3024:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    3028:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    302c:	5d                   	pop    %rbp
    302d:	c3                   	retq   
    302e:	66 90                	xchg   %ax,%ax

0000000000003030 <_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2EPKcm>:
    3030:	55                   	push   %rbp
    3031:	48 89 e5             	mov    %rsp,%rbp
    3034:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    3038:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    303c:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    3040:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3044:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
    3048:	48 89 08             	mov    %rcx,(%rax)
    304b:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    304f:	48 89 48 08          	mov    %rcx,0x8(%rax)
    3053:	5d                   	pop    %rbp
    3054:	c3                   	retq   
    3055:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    305c:	00 00 00 
    305f:	90                   	nop

0000000000003060 <_ZNSt3__17launderIKNS_4pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEEEEPT_SE_>:
    3060:	55                   	push   %rbp
    3061:	48 89 e5             	mov    %rsp,%rbp
    3064:	48 83 ec 10          	sub    $0x10,%rsp
    3068:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    306c:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    3070:	e8 0b 00 00 00       	callq  3080 <_ZNSt3__19__launderIKNS_4pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEEEEPT_SE_>
    3075:	48 83 c4 10          	add    $0x10,%rsp
    3079:	5d                   	pop    %rbp
    307a:	c3                   	retq   
    307b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000003080 <_ZNSt3__19__launderIKNS_4pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEEEEPT_SE_>:
    3080:	55                   	push   %rbp
    3081:	48 89 e5             	mov    %rsp,%rbp
    3084:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    3088:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    308c:	5d                   	pop    %rbp
    308d:	c3                   	retq   
    308e:	66 90                	xchg   %ax,%ax

0000000000003090 <_ZNSt3__117__compressed_pairINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEENS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS7_IcEEEEN9benchmark7CounterEEES3_EEEEE5firstEv>:
    3090:	55                   	push   %rbp
    3091:	48 89 e5             	mov    %rsp,%rbp
    3094:	48 83 ec 10          	sub    $0x10,%rsp
    3098:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    309c:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    30a0:	e8 0b 00 00 00       	callq  30b0 <_ZNSt3__122__compressed_pair_elemINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEELi0ELb0EE5__getEv>
    30a5:	48 83 c4 10          	add    $0x10,%rsp
    30a9:	5d                   	pop    %rbp
    30aa:	c3                   	retq   
    30ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000030b0 <_ZNSt3__122__compressed_pair_elemINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEELi0ELb0EE5__getEv>:
    30b0:	55                   	push   %rbp
    30b1:	48 89 e5             	mov    %rsp,%rbp
    30b4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    30b8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    30bc:	5d                   	pop    %rbp
    30bd:	c3                   	retq   
    30be:	66 90                	xchg   %ax,%ax

00000000000030c0 <_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEENS_19__map_value_compareIS7_SA_NS_4lessIS7_EELb1EEENS5_ISA_EEE12__node_allocEv>:
    30c0:	55                   	push   %rbp
    30c1:	48 89 e5             	mov    %rsp,%rbp
    30c4:	48 83 ec 10          	sub    $0x10,%rsp
    30c8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    30cc:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    30d0:	48 83 c7 08          	add    $0x8,%rdi
    30d4:	e8 47 01 00 00       	callq  3220 <_ZNSt3__117__compressed_pairINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEENS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS7_IcEEEEN9benchmark7CounterEEES3_EEEEE6secondEv>
    30d9:	48 83 c4 10          	add    $0x10,%rsp
    30dd:	5d                   	pop    %rbp
    30de:	c3                   	retq   
    30df:	90                   	nop

00000000000030e0 <_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEN9benchmark7CounterEEEPvEEEEE8allocateERSE_m>:
    30e0:	55                   	push   %rbp
    30e1:	48 89 e5             	mov    %rsp,%rbp
    30e4:	48 83 ec 10          	sub    $0x10,%rsp
    30e8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    30ec:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    30f0:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    30f4:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
    30f8:	e8 53 01 00 00       	callq  3250 <_ZNSt3__19allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEN9benchmark7CounterEEEPvEEE8allocateEm>
    30fd:	48 83 c4 10          	add    $0x10,%rsp
    3101:	5d                   	pop    %rbp
    3102:	c3                   	retq   
    3103:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    310a:	00 00 00 
    310d:	0f 1f 00             	nopl   (%rax)

0000000000003110 <_ZNSt3__122__tree_node_destructorINS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEN9benchmark7CounterEEEPvEEEEEC2ERSE_b>:
    3110:	55                   	push   %rbp
    3111:	48 89 e5             	mov    %rsp,%rbp
    3114:	88 d0                	mov    %dl,%al
    3116:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    311a:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    311e:	24 01                	and    $0x1,%al
    3120:	88 45 ef             	mov    %al,-0x11(%rbp)
    3123:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3127:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
    312b:	48 89 08             	mov    %rcx,(%rax)
    312e:	8a 4d ef             	mov    -0x11(%rbp),%cl
    3131:	80 e1 01             	and    $0x1,%cl
    3134:	88 48 08             	mov    %cl,0x8(%rax)
    3137:	5d                   	pop    %rbp
    3138:	c3                   	retq   
    3139:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000003140 <_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEEPvEENS_22__tree_node_destructorINS6_ISD_EEEEEC2ILb1EvEEPSD_NS_16__dependent_typeINS_27__unique_ptr_deleter_sfinaeISG_EEXT_EE20__good_rval_ref_typeE>:
    3140:	55                   	push   %rbp
    3141:	48 89 e5             	mov    %rsp,%rbp
    3144:	48 83 ec 20          	sub    $0x20,%rsp
    3148:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    314c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    3150:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    3154:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    3158:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    315c:	48 8d 75 f0          	lea    -0x10(%rbp),%rsi
    3160:	e8 2b 03 00 00       	callq  3490 <_ZNSt3__117__compressed_pairIPNS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEEPvEENS_22__tree_node_destructorINS6_ISD_EEEEEC2IRSE_SH_EEOT_OT0_>
    3165:	e9 00 00 00 00       	jmpq   316a <_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEEPvEENS_22__tree_node_destructorINS6_ISD_EEEEEC2ILb1EvEEPSD_NS_16__dependent_typeINS_27__unique_ptr_deleter_sfinaeISG_EEXT_EE20__good_rval_ref_typeE+0x2a>
    316a:	48 83 c4 20          	add    $0x20,%rsp
    316e:	5d                   	pop    %rbp
    316f:	c3                   	retq   
    3170:	48 89 c7             	mov    %rax,%rdi
    3173:	e8 68 fc ff ff       	callq  2de0 <__clang_call_terminate>
    3178:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    317f:	00 

0000000000003180 <_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEN9benchmark7CounterEEEPvEEEEE9constructINS_4pairIKS8_SA_EEJRKNS_21piecewise_construct_tENS_5tupleIJOS8_EEENSN_IJEEEEEEvRSE_PT_DpOT0_>:
    3180:	55                   	push   %rbp
    3181:	48 89 e5             	mov    %rsp,%rbp
    3184:	48 83 ec 40          	sub    $0x40,%rsp
    3188:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    318c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    3190:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    3194:	48 89 4d e0          	mov    %rcx,-0x20(%rbp)
    3198:	4c 89 45 d8          	mov    %r8,-0x28(%rbp)
    319c:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    31a0:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
    31a4:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    31a8:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    31ac:	4c 8b 45 d8          	mov    -0x28(%rbp),%r8
    31b0:	e8 6b 03 00 00       	callq  3520 <_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEN9benchmark7CounterEEEPvEEEEE11__constructINS_4pairIKS8_SA_EEJRKNS_21piecewise_construct_tENS_5tupleIJOS8_EEENSN_IJEEEEEEvNS_17integral_constantIbLb1EEERSE_PT_DpOT0_>
    31b5:	48 83 c4 40          	add    $0x40,%rsp
    31b9:	5d                   	pop    %rbp
    31ba:	c3                   	retq   
    31bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000031c0 <_ZNSt3__122__tree_key_value_typesINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEEE9__get_ptrERSA_>:
    31c0:	55                   	push   %rbp
    31c1:	48 89 e5             	mov    %rsp,%rbp
    31c4:	48 83 ec 10          	sub    $0x10,%rsp
    31c8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    31cc:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    31d0:	e8 0b f4 ff ff       	callq  25e0 <_ZNSt3__112__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEE11__get_valueEv>
    31d5:	48 83 c4 10          	add    $0x10,%rsp
    31d9:	5d                   	pop    %rbp
    31da:	c3                   	retq   
    31db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000031e0 <_ZNKSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEEPvEENS_22__tree_node_destructorINS6_ISD_EEEEEptEv>:
    31e0:	55                   	push   %rbp
    31e1:	48 89 e5             	mov    %rsp,%rbp
    31e4:	48 83 ec 10          	sub    $0x10,%rsp
    31e8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    31ec:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    31f0:	e8 5b 05 00 00       	callq  3750 <_ZNKSt3__117__compressed_pairIPNS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEEPvEENS_22__tree_node_destructorINS6_ISD_EEEEE5firstEv>
    31f5:	48 8b 00             	mov    (%rax),%rax
    31f8:	48 83 c4 10          	add    $0x10,%rsp
    31fc:	5d                   	pop    %rbp
    31fd:	c3                   	retq   
    31fe:	66 90                	xchg   %ax,%ax

0000000000003200 <_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEEPvEENS_22__tree_node_destructorINS6_ISD_EEEEE11get_deleterEv>:
    3200:	55                   	push   %rbp
    3201:	48 89 e5             	mov    %rsp,%rbp
    3204:	48 83 ec 10          	sub    $0x10,%rsp
    3208:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    320c:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    3210:	e8 6b 05 00 00       	callq  3780 <_ZNSt3__117__compressed_pairIPNS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEEPvEENS_22__tree_node_destructorINS6_ISD_EEEEE6secondEv>
    3215:	48 83 c4 10          	add    $0x10,%rsp
    3219:	5d                   	pop    %rbp
    321a:	c3                   	retq   
    321b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000003220 <_ZNSt3__117__compressed_pairINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEENS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS7_IcEEEEN9benchmark7CounterEEES3_EEEEE6secondEv>:
    3220:	55                   	push   %rbp
    3221:	48 89 e5             	mov    %rsp,%rbp
    3224:	48 83 ec 10          	sub    $0x10,%rsp
    3228:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    322c:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    3230:	e8 0b 00 00 00       	callq  3240 <_ZNSt3__122__compressed_pair_elemINS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEN9benchmark7CounterEEEPvEEEELi1ELb1EE5__getEv>
    3235:	48 83 c4 10          	add    $0x10,%rsp
    3239:	5d                   	pop    %rbp
    323a:	c3                   	retq   
    323b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000003240 <_ZNSt3__122__compressed_pair_elemINS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEN9benchmark7CounterEEEPvEEEELi1ELb1EE5__getEv>:
    3240:	55                   	push   %rbp
    3241:	48 89 e5             	mov    %rsp,%rbp
    3244:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    3248:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    324c:	5d                   	pop    %rbp
    324d:	c3                   	retq   
    324e:	66 90                	xchg   %ax,%ax

0000000000003250 <_ZNSt3__19allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEN9benchmark7CounterEEEPvEEE8allocateEm>:
    3250:	55                   	push   %rbp
    3251:	48 89 e5             	mov    %rsp,%rbp
    3254:	48 83 ec 20          	sub    $0x20,%rsp
    3258:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    325c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    3260:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    3264:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    3268:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    326c:	e8 3f 00 00 00       	callq  32b0 <_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEN9benchmark7CounterEEEPvEEEEE8max_sizeERKSE_>
    3271:	48 89 c1             	mov    %rax,%rcx
    3274:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    3278:	48 39 c8             	cmp    %rcx,%rax
    327b:	0f 86 0c 00 00 00    	jbe    328d <_ZNSt3__19allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEN9benchmark7CounterEEEPvEEE8allocateEm+0x3d>
    3281:	48 8d 3d 25 10 00 00 	lea    0x1025(%rip),%rdi        # 42ad <_IO_stdin_used+0x65>
    3288:	e8 43 00 00 00       	callq  32d0 <_ZNSt3__120__throw_length_errorEPKc>
    328d:	48 6b 7d f0 48       	imul   $0x48,-0x10(%rbp),%rdi
    3292:	be 08 00 00 00       	mov    $0x8,%esi
    3297:	e8 a4 00 00 00       	callq  3340 <_ZNSt3__117__libcpp_allocateEmm>
    329c:	48 83 c4 20          	add    $0x20,%rsp
    32a0:	5d                   	pop    %rbp
    32a1:	c3                   	retq   
    32a2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    32a9:	00 00 00 
    32ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000032b0 <_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEN9benchmark7CounterEEEPvEEEEE8max_sizeERKSE_>:
    32b0:	55                   	push   %rbp
    32b1:	48 89 e5             	mov    %rsp,%rbp
    32b4:	48 83 ec 20          	sub    $0x20,%rsp
    32b8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    32bc:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    32c0:	e8 db 00 00 00       	callq  33a0 <_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEN9benchmark7CounterEEEPvEEEEE10__max_sizeENS_17integral_constantIbLb1EEERKSE_>
    32c5:	48 83 c4 20          	add    $0x20,%rsp
    32c9:	5d                   	pop    %rbp
    32ca:	c3                   	retq   
    32cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000032d0 <_ZNSt3__120__throw_length_errorEPKc>:
    32d0:	55                   	push   %rbp
    32d1:	48 89 e5             	mov    %rsp,%rbp
    32d4:	48 83 ec 20          	sub    $0x20,%rsp
    32d8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    32dc:	bf 10 00 00 00       	mov    $0x10,%edi
    32e1:	e8 ea e0 ff ff       	callq  13d0 <__cxa_allocate_exception@plt>
    32e6:	48 89 c7             	mov    %rax,%rdi
    32e9:	48 89 f8             	mov    %rdi,%rax
    32ec:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    32f0:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
    32f4:	e8 e7 00 00 00       	callq  33e0 <_ZNSt12length_errorC2EPKc>
    32f9:	e9 00 00 00 00       	jmpq   32fe <_ZNSt3__120__throw_length_errorEPKc+0x2e>
    32fe:	48 8b 7d e0          	mov    -0x20(%rbp),%rdi
    3302:	48 8b 35 c7 2c 20 00 	mov    0x202cc7(%rip),%rsi        # 205fd0 <_ZTISt12length_error>
    3309:	48 8b 15 e8 2c 20 00 	mov    0x202ce8(%rip),%rdx        # 205ff8 <_ZNSt12length_errorD1Ev>
    3310:	e8 2b e1 ff ff       	callq  1440 <__cxa_throw@plt>
    3315:	48 8b 7d e0          	mov    -0x20(%rbp),%rdi
    3319:	48 89 c1             	mov    %rax,%rcx
    331c:	89 d0                	mov    %edx,%eax
    331e:	48 89 4d f0          	mov    %rcx,-0x10(%rbp)
    3322:	89 45 ec             	mov    %eax,-0x14(%rbp)
    3325:	e8 c6 df ff ff       	callq  12f0 <__cxa_free_exception@plt>
    332a:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
    332e:	e8 bd e0 ff ff       	callq  13f0 <_Unwind_Resume@plt>
    3333:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    333a:	00 00 00 
    333d:	0f 1f 00             	nopl   (%rax)

0000000000003340 <_ZNSt3__117__libcpp_allocateEmm>:
    3340:	55                   	push   %rbp
    3341:	48 89 e5             	mov    %rsp,%rbp
    3344:	48 83 ec 20          	sub    $0x20,%rsp
    3348:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
    334c:	48 89 75 e8          	mov    %rsi,-0x18(%rbp)
    3350:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
    3354:	e8 c7 00 00 00       	callq  3420 <_ZNSt3__124__is_overaligned_for_newEm>
    3359:	a8 01                	test   $0x1,%al
    335b:	0f 85 05 00 00 00    	jne    3366 <_ZNSt3__117__libcpp_allocateEmm+0x26>
    3361:	e9 1e 00 00 00       	jmpq   3384 <_ZNSt3__117__libcpp_allocateEmm+0x44>
    3366:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    336a:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    336e:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
    3372:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    3376:	e8 c5 00 00 00       	callq  3440 <_ZNSt3__121__libcpp_operator_newIJmSt11align_val_tEEEPvDpT_>
    337b:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    337f:	e9 0d 00 00 00       	jmpq   3391 <_ZNSt3__117__libcpp_allocateEmm+0x51>
    3384:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
    3388:	e8 e3 00 00 00       	callq  3470 <_ZNSt3__121__libcpp_operator_newIJmEEEPvDpT_>
    338d:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    3391:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3395:	48 83 c4 20          	add    $0x20,%rsp
    3399:	5d                   	pop    %rbp
    339a:	c3                   	retq   
    339b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000033a0 <_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEN9benchmark7CounterEEEPvEEEEE10__max_sizeENS_17integral_constantIbLb1EEERKSE_>:
    33a0:	55                   	push   %rbp
    33a1:	48 89 e5             	mov    %rsp,%rbp
    33a4:	48 83 ec 10          	sub    $0x10,%rsp
    33a8:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
    33ac:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
    33b0:	e8 0b 00 00 00       	callq  33c0 <_ZNKSt3__19allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEN9benchmark7CounterEEEPvEEE8max_sizeEv>
    33b5:	48 83 c4 10          	add    $0x10,%rsp
    33b9:	5d                   	pop    %rbp
    33ba:	c3                   	retq   
    33bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000033c0 <_ZNKSt3__19allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEN9benchmark7CounterEEEPvEEE8max_sizeEv>:
    33c0:	55                   	push   %rbp
    33c1:	48 89 e5             	mov    %rsp,%rbp
    33c4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    33c8:	48 b8 8e e3 38 8e e3 	movabs $0x38e38e38e38e38e,%rax
    33cf:	38 8e 03 
    33d2:	5d                   	pop    %rbp
    33d3:	c3                   	retq   
    33d4:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    33db:	00 00 00 
    33de:	66 90                	xchg   %ax,%ax

00000000000033e0 <_ZNSt12length_errorC2EPKc>:
    33e0:	55                   	push   %rbp
    33e1:	48 89 e5             	mov    %rsp,%rbp
    33e4:	48 83 ec 20          	sub    $0x20,%rsp
    33e8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    33ec:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    33f0:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    33f4:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    33f8:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
    33fc:	e8 0f df ff ff       	callq  1310 <_ZNSt11logic_errorC2EPKc@plt>
    3401:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    3405:	48 8b 0d e4 2b 20 00 	mov    0x202be4(%rip),%rcx        # 205ff0 <_ZTVSt12length_error>
    340c:	48 83 c1 10          	add    $0x10,%rcx
    3410:	48 89 08             	mov    %rcx,(%rax)
    3413:	48 83 c4 20          	add    $0x20,%rsp
    3417:	5d                   	pop    %rbp
    3418:	c3                   	retq   
    3419:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000003420 <_ZNSt3__124__is_overaligned_for_newEm>:
    3420:	55                   	push   %rbp
    3421:	48 89 e5             	mov    %rsp,%rbp
    3424:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    3428:	48 83 7d f8 10       	cmpq   $0x10,-0x8(%rbp)
    342d:	0f 97 c0             	seta   %al
    3430:	24 01                	and    $0x1,%al
    3432:	0f b6 c0             	movzbl %al,%eax
    3435:	5d                   	pop    %rbp
    3436:	c3                   	retq   
    3437:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    343e:	00 00 

0000000000003440 <_ZNSt3__121__libcpp_operator_newIJmSt11align_val_tEEEPvDpT_>:
    3440:	55                   	push   %rbp
    3441:	48 89 e5             	mov    %rsp,%rbp
    3444:	48 83 ec 10          	sub    $0x10,%rsp
    3448:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    344c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    3450:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    3454:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
    3458:	e8 f3 df ff ff       	callq  1450 <_ZnwmSt11align_val_t@plt>
    345d:	48 83 c4 10          	add    $0x10,%rsp
    3461:	5d                   	pop    %rbp
    3462:	c3                   	retq   
    3463:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    346a:	00 00 00 
    346d:	0f 1f 00             	nopl   (%rax)

0000000000003470 <_ZNSt3__121__libcpp_operator_newIJmEEEPvDpT_>:
    3470:	55                   	push   %rbp
    3471:	48 89 e5             	mov    %rsp,%rbp
    3474:	48 83 ec 10          	sub    $0x10,%rsp
    3478:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    347c:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    3480:	e8 bb de ff ff       	callq  1340 <_Znwm@plt>
    3485:	48 83 c4 10          	add    $0x10,%rsp
    3489:	5d                   	pop    %rbp
    348a:	c3                   	retq   
    348b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000003490 <_ZNSt3__117__compressed_pairIPNS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEEPvEENS_22__tree_node_destructorINS6_ISD_EEEEEC2IRSE_SH_EEOT_OT0_>:
    3490:	55                   	push   %rbp
    3491:	48 89 e5             	mov    %rsp,%rbp
    3494:	48 83 ec 20          	sub    $0x20,%rsp
    3498:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    349c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    34a0:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    34a4:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    34a8:	48 89 7d e0          	mov    %rdi,-0x20(%rbp)
    34ac:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
    34b0:	e8 1b 00 00 00       	callq  34d0 <_ZNSt3__122__compressed_pair_elemIPNS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEEPvEELi0ELb0EEC2IRSE_vEEOT_>
    34b5:	48 8b 7d e0          	mov    -0x20(%rbp),%rdi
    34b9:	48 83 c7 08          	add    $0x8,%rdi
    34bd:	48 8b 75 e8          	mov    -0x18(%rbp),%rsi
    34c1:	e8 2a 00 00 00       	callq  34f0 <_ZNSt3__122__compressed_pair_elemINS_22__tree_node_destructorINS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS2_IcEEEEN9benchmark7CounterEEEPvEEEEEELi1ELb0EEC2ISG_vEEOT_>
    34c6:	48 83 c4 20          	add    $0x20,%rsp
    34ca:	5d                   	pop    %rbp
    34cb:	c3                   	retq   
    34cc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000034d0 <_ZNSt3__122__compressed_pair_elemIPNS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEEPvEELi0ELb0EEC2IRSE_vEEOT_>:
    34d0:	55                   	push   %rbp
    34d1:	48 89 e5             	mov    %rsp,%rbp
    34d4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    34d8:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    34dc:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    34e0:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
    34e4:	48 8b 09             	mov    (%rcx),%rcx
    34e7:	48 89 08             	mov    %rcx,(%rax)
    34ea:	5d                   	pop    %rbp
    34eb:	c3                   	retq   
    34ec:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000034f0 <_ZNSt3__122__compressed_pair_elemINS_22__tree_node_destructorINS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS2_IcEEEEN9benchmark7CounterEEEPvEEEEEELi1ELb0EEC2ISG_vEEOT_>:
    34f0:	55                   	push   %rbp
    34f1:	48 89 e5             	mov    %rsp,%rbp
    34f4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    34f8:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    34fc:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3500:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
    3504:	48 8b 11             	mov    (%rcx),%rdx
    3507:	48 89 10             	mov    %rdx,(%rax)
    350a:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    350e:	48 89 48 08          	mov    %rcx,0x8(%rax)
    3512:	5d                   	pop    %rbp
    3513:	c3                   	retq   
    3514:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    351b:	00 00 00 
    351e:	66 90                	xchg   %ax,%ax

0000000000003520 <_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEN9benchmark7CounterEEEPvEEEEE11__constructINS_4pairIKS8_SA_EEJRKNS_21piecewise_construct_tENS_5tupleIJOS8_EEENSN_IJEEEEEEvNS_17integral_constantIbLb1EEERSE_PT_DpOT0_>:
    3520:	55                   	push   %rbp
    3521:	48 89 e5             	mov    %rsp,%rbp
    3524:	48 83 ec 30          	sub    $0x30,%rsp
    3528:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
    352c:	48 89 75 e8          	mov    %rsi,-0x18(%rbp)
    3530:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
    3534:	48 89 4d d8          	mov    %rcx,-0x28(%rbp)
    3538:	4c 89 45 d0          	mov    %r8,-0x30(%rbp)
    353c:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
    3540:	48 8b 75 e8          	mov    -0x18(%rbp),%rsi
    3544:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    3548:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
    354c:	4c 8b 45 d0          	mov    -0x30(%rbp),%r8
    3550:	e8 0b 00 00 00       	callq  3560 <_ZNSt3__19allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEN9benchmark7CounterEEEPvEEE9constructINS_4pairIKS7_S9_EEJRKNS_21piecewise_construct_tENS_5tupleIJOS7_EEENSL_IJEEEEEEvPT_DpOT0_>
    3555:	48 83 c4 30          	add    $0x30,%rsp
    3559:	5d                   	pop    %rbp
    355a:	c3                   	retq   
    355b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000003560 <_ZNSt3__19allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEN9benchmark7CounterEEEPvEEE9constructINS_4pairIKS7_S9_EEJRKNS_21piecewise_construct_tENS_5tupleIJOS7_EEENSL_IJEEEEEEvPT_DpOT0_>:
    3560:	55                   	push   %rbp
    3561:	48 89 e5             	mov    %rsp,%rbp
    3564:	48 83 ec 40          	sub    $0x40,%rsp
    3568:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    356c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    3570:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    3574:	48 89 4d e0          	mov    %rcx,-0x20(%rbp)
    3578:	4c 89 45 d8          	mov    %r8,-0x28(%rbp)
    357c:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
    3580:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    3584:	48 8b 00             	mov    (%rax),%rax
    3587:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    358b:	48 8b 75 c8          	mov    -0x38(%rbp),%rsi
    358f:	e8 0c 00 00 00       	callq  35a0 <_ZNSt3__14pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEC2IJOS6_EJEEENS_21piecewise_construct_tENS_5tupleIJDpT_EEENSE_IJDpT0_EEE>
    3594:	48 83 c4 40          	add    $0x40,%rsp
    3598:	5d                   	pop    %rbp
    3599:	c3                   	retq   
    359a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000035a0 <_ZNSt3__14pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEC2IJOS6_EJEEENS_21piecewise_construct_tENS_5tupleIJDpT_EEENSE_IJDpT0_EEE>:
    35a0:	55                   	push   %rbp
    35a1:	48 89 e5             	mov    %rsp,%rbp
    35a4:	48 83 ec 40          	sub    $0x40,%rsp
    35a8:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    35ac:	48 89 7d e0          	mov    %rdi,-0x20(%rbp)
    35b0:	48 8b 7d e0          	mov    -0x20(%rbp),%rdi
    35b4:	48 8d 75 f0          	lea    -0x10(%rbp),%rsi
    35b8:	48 8d 55 e8          	lea    -0x18(%rbp),%rdx
    35bc:	e8 0f 00 00 00       	callq  35d0 <_ZNSt3__14pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEC2IJOS6_EJEJLm0EEJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNSE_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENSN_IJXspT2_EEEE>
    35c1:	48 83 c4 40          	add    $0x40,%rsp
    35c5:	5d                   	pop    %rbp
    35c6:	c3                   	retq   
    35c7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    35ce:	00 00 

00000000000035d0 <_ZNSt3__14pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEC2IJOS6_EJEJLm0EEJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNSE_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENSN_IJXspT2_EEEE>:
    35d0:	55                   	push   %rbp
    35d1:	48 89 e5             	mov    %rsp,%rbp
    35d4:	48 83 ec 60          	sub    $0x60,%rsp
    35d8:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
    35dc:	48 89 75 c0          	mov    %rsi,-0x40(%rbp)
    35e0:	48 89 55 b8          	mov    %rdx,-0x48(%rbp)
    35e4:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    35e8:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
    35ec:	48 8b 7d c0          	mov    -0x40(%rbp),%rdi
    35f0:	e8 5b 00 00 00       	callq  3650 <_ZNSt3__13getILm0EJONS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEERNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERSC_>
    35f5:	48 8b 7d a0          	mov    -0x60(%rbp),%rdi
    35f9:	48 89 c6             	mov    %rax,%rsi
    35fc:	e8 6f 00 00 00       	callq  3670 <_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2EOS5_>
    3601:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
    3605:	48 83 c0 18          	add    $0x18,%rax
    3609:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    360d:	0f 57 c0             	xorps  %xmm0,%xmm0
    3610:	f2 0f 11 45 f0       	movsd  %xmm0,-0x10(%rbp)
    3615:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
    361c:	c7 45 e8 e8 03 00 00 	movl   $0x3e8,-0x18(%rbp)
    3623:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3627:	f2 0f 10 45 f0       	movsd  -0x10(%rbp),%xmm0
    362c:	f2 0f 11 00          	movsd  %xmm0,(%rax)
    3630:	8b 4d ec             	mov    -0x14(%rbp),%ecx
    3633:	89 48 08             	mov    %ecx,0x8(%rax)
    3636:	8b 4d e8             	mov    -0x18(%rbp),%ecx
    3639:	89 48 0c             	mov    %ecx,0xc(%rax)
    363c:	48 83 c4 60          	add    $0x60,%rsp
    3640:	5d                   	pop    %rbp
    3641:	c3                   	retq   
    3642:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    3649:	00 00 00 
    364c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000003650 <_ZNSt3__13getILm0EJONS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEERNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERSC_>:
    3650:	55                   	push   %rbp
    3651:	48 89 e5             	mov    %rsp,%rbp
    3654:	48 83 ec 10          	sub    $0x10,%rsp
    3658:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    365c:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    3660:	e8 4b 00 00 00       	callq  36b0 <_ZNSt3__112__tuple_leafILm0EONS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EE3getEv>
    3665:	48 83 c4 10          	add    $0x10,%rsp
    3669:	5d                   	pop    %rbp
    366a:	c3                   	retq   
    366b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000003670 <_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2EOS5_>:
    3670:	55                   	push   %rbp
    3671:	48 89 e5             	mov    %rsp,%rbp
    3674:	48 83 ec 10          	sub    $0x10,%rsp
    3678:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    367c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    3680:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3684:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
    3688:	48 8b 11             	mov    (%rcx),%rdx
    368b:	48 89 10             	mov    %rdx,(%rax)
    368e:	48 8b 51 08          	mov    0x8(%rcx),%rdx
    3692:	48 89 50 08          	mov    %rdx,0x8(%rax)
    3696:	48 8b 49 10          	mov    0x10(%rcx),%rcx
    369a:	48 89 48 10          	mov    %rcx,0x10(%rax)
    369e:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
    36a2:	e8 29 00 00 00       	callq  36d0 <_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__zeroEv>
    36a7:	48 83 c4 10          	add    $0x10,%rsp
    36ab:	5d                   	pop    %rbp
    36ac:	c3                   	retq   
    36ad:	0f 1f 00             	nopl   (%rax)

00000000000036b0 <_ZNSt3__112__tuple_leafILm0EONS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EE3getEv>:
    36b0:	55                   	push   %rbp
    36b1:	48 89 e5             	mov    %rsp,%rbp
    36b4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    36b8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    36bc:	48 8b 00             	mov    (%rax),%rax
    36bf:	5d                   	pop    %rbp
    36c0:	c3                   	retq   
    36c1:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    36c8:	00 00 00 
    36cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000036d0 <_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__zeroEv>:
    36d0:	55                   	push   %rbp
    36d1:	48 89 e5             	mov    %rsp,%rbp
    36d4:	48 83 ec 20          	sub    $0x20,%rsp
    36d8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    36dc:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    36e0:	e8 3b 00 00 00       	callq  3720 <_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv>
    36e5:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    36e9:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
    36f0:	83 7d ec 03          	cmpl   $0x3,-0x14(%rbp)
    36f4:	0f 83 1d 00 00 00    	jae    3717 <_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__zeroEv+0x47>
    36fa:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    36fe:	8b 4d ec             	mov    -0x14(%rbp),%ecx
    3701:	48 c7 04 c8 00 00 00 	movq   $0x0,(%rax,%rcx,8)
    3708:	00 
    3709:	8b 45 ec             	mov    -0x14(%rbp),%eax
    370c:	83 c0 01             	add    $0x1,%eax
    370f:	89 45 ec             	mov    %eax,-0x14(%rbp)
    3712:	e9 d9 ff ff ff       	jmpq   36f0 <_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__zeroEv+0x20>
    3717:	48 83 c4 20          	add    $0x20,%rsp
    371b:	5d                   	pop    %rbp
    371c:	c3                   	retq   
    371d:	0f 1f 00             	nopl   (%rax)

0000000000003720 <_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv>:
    3720:	55                   	push   %rbp
    3721:	48 89 e5             	mov    %rsp,%rbp
    3724:	48 83 ec 10          	sub    $0x10,%rsp
    3728:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    372c:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    3730:	e8 0b 00 00 00       	callq  3740 <_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv>
    3735:	48 83 c4 10          	add    $0x10,%rsp
    3739:	5d                   	pop    %rbp
    373a:	c3                   	retq   
    373b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000003740 <_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv>:
    3740:	55                   	push   %rbp
    3741:	48 89 e5             	mov    %rsp,%rbp
    3744:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    3748:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    374c:	5d                   	pop    %rbp
    374d:	c3                   	retq   
    374e:	66 90                	xchg   %ax,%ax

0000000000003750 <_ZNKSt3__117__compressed_pairIPNS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEEPvEENS_22__tree_node_destructorINS6_ISD_EEEEE5firstEv>:
    3750:	55                   	push   %rbp
    3751:	48 89 e5             	mov    %rsp,%rbp
    3754:	48 83 ec 10          	sub    $0x10,%rsp
    3758:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    375c:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    3760:	e8 0b 00 00 00       	callq  3770 <_ZNKSt3__122__compressed_pair_elemIPNS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEEPvEELi0ELb0EE5__getEv>
    3765:	48 83 c4 10          	add    $0x10,%rsp
    3769:	5d                   	pop    %rbp
    376a:	c3                   	retq   
    376b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000003770 <_ZNKSt3__122__compressed_pair_elemIPNS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEEPvEELi0ELb0EE5__getEv>:
    3770:	55                   	push   %rbp
    3771:	48 89 e5             	mov    %rsp,%rbp
    3774:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    3778:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    377c:	5d                   	pop    %rbp
    377d:	c3                   	retq   
    377e:	66 90                	xchg   %ax,%ax

0000000000003780 <_ZNSt3__117__compressed_pairIPNS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEEPvEENS_22__tree_node_destructorINS6_ISD_EEEEE6secondEv>:
    3780:	55                   	push   %rbp
    3781:	48 89 e5             	mov    %rsp,%rbp
    3784:	48 83 ec 10          	sub    $0x10,%rsp
    3788:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    378c:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    3790:	48 83 c7 08          	add    $0x8,%rdi
    3794:	e8 07 00 00 00       	callq  37a0 <_ZNSt3__122__compressed_pair_elemINS_22__tree_node_destructorINS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS2_IcEEEEN9benchmark7CounterEEEPvEEEEEELi1ELb0EE5__getEv>
    3799:	48 83 c4 10          	add    $0x10,%rsp
    379d:	5d                   	pop    %rbp
    379e:	c3                   	retq   
    379f:	90                   	nop

00000000000037a0 <_ZNSt3__122__compressed_pair_elemINS_22__tree_node_destructorINS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS2_IcEEEEN9benchmark7CounterEEEPvEEEEEELi1ELb0EE5__getEv>:
    37a0:	55                   	push   %rbp
    37a1:	48 89 e5             	mov    %rsp,%rbp
    37a4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    37a8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    37ac:	5d                   	pop    %rbp
    37ad:	c3                   	retq   
    37ae:	66 90                	xchg   %ax,%ax

00000000000037b0 <_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEENS_19__map_value_compareIS7_SA_NS_4lessIS7_EELb1EEENS5_ISA_EEE12__begin_nodeEv>:
    37b0:	55                   	push   %rbp
    37b1:	48 89 e5             	mov    %rsp,%rbp
    37b4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    37b8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    37bc:	5d                   	pop    %rbp
    37bd:	c3                   	retq   
    37be:	66 90                	xchg   %ax,%ax

00000000000037c0 <_ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_>:
    37c0:	55                   	push   %rbp
    37c1:	48 89 e5             	mov    %rsp,%rbp
    37c4:	48 81 ec a0 00 00 00 	sub    $0xa0,%rsp
    37cb:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    37cf:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    37d3:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    37d7:	48 3b 45 f8          	cmp    -0x8(%rbp),%rax
    37db:	0f 94 c1             	sete   %cl
    37de:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    37e2:	80 e1 01             	and    $0x1,%cl
    37e5:	88 48 18             	mov    %cl,0x18(%rax)
    37e8:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
    37ec:	31 c0                	xor    %eax,%eax
    37ee:	48 3b 4d f8          	cmp    -0x8(%rbp),%rcx
    37f2:	88 45 df             	mov    %al,-0x21(%rbp)
    37f5:	0f 84 1e 00 00 00    	je     3819 <_ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_+0x59>
    37fb:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
    37ff:	e8 fc 02 00 00       	callq  3b00 <_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeEv>
    3804:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
    3808:	e9 00 00 00 00       	jmpq   380d <_ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_+0x4d>
    380d:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    3811:	8a 40 18             	mov    0x18(%rax),%al
    3814:	34 ff                	xor    $0xff,%al
    3816:	88 45 df             	mov    %al,-0x21(%rbp)
    3819:	8a 45 df             	mov    -0x21(%rbp),%al
    381c:	a8 01                	test   $0x1,%al
    381e:	0f 85 05 00 00 00    	jne    3829 <_ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_+0x69>
    3824:	e9 9f 02 00 00       	jmpq   3ac8 <_ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_+0x308>
    3829:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
    382d:	e8 ce 02 00 00       	callq  3b00 <_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeEv>
    3832:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    3836:	e9 00 00 00 00       	jmpq   383b <_ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_+0x7b>
    383b:	48 8b 7d c8          	mov    -0x38(%rbp),%rdi
    383f:	e8 dc 02 00 00       	callq  3b20 <_ZNSt3__120__tree_is_left_childIPNS_16__tree_node_baseIPvEEEEbT_>
    3844:	a8 01                	test   $0x1,%al
    3846:	0f 85 05 00 00 00    	jne    3851 <_ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_+0x91>
    384c:	e9 32 01 00 00       	jmpq   3983 <_ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_+0x1c3>
    3851:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
    3855:	e8 a6 02 00 00       	callq  3b00 <_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeEv>
    385a:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
    385e:	e9 00 00 00 00       	jmpq   3863 <_ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_+0xa3>
    3863:	48 8b 7d c0          	mov    -0x40(%rbp),%rdi
    3867:	e8 94 02 00 00       	callq  3b00 <_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeEv>
    386c:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
    3870:	e9 00 00 00 00       	jmpq   3875 <_ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_+0xb5>
    3875:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    3879:	48 8b 40 08          	mov    0x8(%rax),%rax
    387d:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    3881:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
    3886:	0f 84 6c 00 00 00    	je     38f8 <_ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_+0x138>
    388c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    3890:	f6 40 18 01          	testb  $0x1,0x18(%rax)
    3894:	0f 85 5e 00 00 00    	jne    38f8 <_ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_+0x138>
    389a:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
    389e:	e8 5d 02 00 00       	callq  3b00 <_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeEv>
    38a3:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
    38a7:	e9 00 00 00 00       	jmpq   38ac <_ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_+0xec>
    38ac:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    38b0:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    38b4:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    38b8:	c6 40 18 01          	movb   $0x1,0x18(%rax)
    38bc:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
    38c0:	e8 3b 02 00 00       	callq  3b00 <_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeEv>
    38c5:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
    38c9:	e9 00 00 00 00       	jmpq   38ce <_ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_+0x10e>
    38ce:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    38d2:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    38d6:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    38da:	48 3b 45 f8          	cmp    -0x8(%rbp),%rax
    38de:	0f 94 c1             	sete   %cl
    38e1:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    38e5:	80 e1 01             	and    $0x1,%cl
    38e8:	88 48 18             	mov    %cl,0x18(%rax)
    38eb:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    38ef:	c6 40 18 01          	movb   $0x1,0x18(%rax)
    38f3:	e9 86 00 00 00       	jmpq   397e <_ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_+0x1be>
    38f8:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
    38fc:	e8 1f 02 00 00       	callq  3b20 <_ZNSt3__120__tree_is_left_childIPNS_16__tree_node_baseIPvEEEEbT_>
    3901:	a8 01                	test   $0x1,%al
    3903:	0f 85 23 00 00 00    	jne    392c <_ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_+0x16c>
    3909:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
    390d:	e8 ee 01 00 00       	callq  3b00 <_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeEv>
    3912:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
    3916:	e9 00 00 00 00       	jmpq   391b <_ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_+0x15b>
    391b:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
    391f:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    3923:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
    3927:	e8 24 02 00 00       	callq  3b50 <_ZNSt3__118__tree_left_rotateIPNS_16__tree_node_baseIPvEEEEvT_>
    392c:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
    3930:	e8 cb 01 00 00       	callq  3b00 <_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeEv>
    3935:	48 89 45 98          	mov    %rax,-0x68(%rbp)
    3939:	e9 00 00 00 00       	jmpq   393e <_ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_+0x17e>
    393e:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    3942:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    3946:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    394a:	c6 40 18 01          	movb   $0x1,0x18(%rax)
    394e:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
    3952:	e8 a9 01 00 00       	callq  3b00 <_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeEv>
    3957:	48 89 45 90          	mov    %rax,-0x70(%rbp)
    395b:	e9 00 00 00 00       	jmpq   3960 <_ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_+0x1a0>
    3960:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    3964:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    3968:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    396c:	c6 40 18 00          	movb   $0x0,0x18(%rax)
    3970:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
    3974:	e8 a7 02 00 00       	callq  3c20 <_ZNSt3__119__tree_right_rotateIPNS_16__tree_node_baseIPvEEEEvT_>
    3979:	e9 4a 01 00 00       	jmpq   3ac8 <_ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_+0x308>
    397e:	e9 40 01 00 00       	jmpq   3ac3 <_ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_+0x303>
    3983:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
    3987:	e8 74 01 00 00       	callq  3b00 <_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeEv>
    398c:	48 89 45 88          	mov    %rax,-0x78(%rbp)
    3990:	e9 00 00 00 00       	jmpq   3995 <_ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_+0x1d5>
    3995:	48 8b 45 88          	mov    -0x78(%rbp),%rax
    3999:	48 8b 40 10          	mov    0x10(%rax),%rax
    399d:	48 8b 00             	mov    (%rax),%rax
    39a0:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    39a4:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
    39a9:	0f 84 72 00 00 00    	je     3a21 <_ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_+0x261>
    39af:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    39b3:	f6 40 18 01          	testb  $0x1,0x18(%rax)
    39b7:	0f 85 64 00 00 00    	jne    3a21 <_ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_+0x261>
    39bd:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
    39c1:	e8 3a 01 00 00       	callq  3b00 <_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeEv>
    39c6:	48 89 45 80          	mov    %rax,-0x80(%rbp)
    39ca:	e9 00 00 00 00       	jmpq   39cf <_ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_+0x20f>
    39cf:	48 8b 45 80          	mov    -0x80(%rbp),%rax
    39d3:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    39d7:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    39db:	c6 40 18 01          	movb   $0x1,0x18(%rax)
    39df:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
    39e3:	e8 18 01 00 00       	callq  3b00 <_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeEv>
    39e8:	48 89 85 78 ff ff ff 	mov    %rax,-0x88(%rbp)
    39ef:	e9 00 00 00 00       	jmpq   39f4 <_ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_+0x234>
    39f4:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
    39fb:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    39ff:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    3a03:	48 3b 45 f8          	cmp    -0x8(%rbp),%rax
    3a07:	0f 94 c1             	sete   %cl
    3a0a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    3a0e:	80 e1 01             	and    $0x1,%cl
    3a11:	88 48 18             	mov    %cl,0x18(%rax)
    3a14:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    3a18:	c6 40 18 01          	movb   $0x1,0x18(%rax)
    3a1c:	e9 9d 00 00 00       	jmpq   3abe <_ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_+0x2fe>
    3a21:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
    3a25:	e8 f6 00 00 00       	callq  3b20 <_ZNSt3__120__tree_is_left_childIPNS_16__tree_node_baseIPvEEEEbT_>
    3a2a:	a8 01                	test   $0x1,%al
    3a2c:	0f 85 05 00 00 00    	jne    3a37 <_ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_+0x277>
    3a32:	e9 29 00 00 00       	jmpq   3a60 <_ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_+0x2a0>
    3a37:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
    3a3b:	e8 c0 00 00 00       	callq  3b00 <_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeEv>
    3a40:	48 89 85 70 ff ff ff 	mov    %rax,-0x90(%rbp)
    3a47:	e9 00 00 00 00       	jmpq   3a4c <_ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_+0x28c>
    3a4c:	48 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%rax
    3a53:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    3a57:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
    3a5b:	e8 c0 01 00 00       	callq  3c20 <_ZNSt3__119__tree_right_rotateIPNS_16__tree_node_baseIPvEEEEvT_>
    3a60:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
    3a64:	e8 97 00 00 00       	callq  3b00 <_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeEv>
    3a69:	48 89 85 68 ff ff ff 	mov    %rax,-0x98(%rbp)
    3a70:	e9 00 00 00 00       	jmpq   3a75 <_ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_+0x2b5>
    3a75:	48 8b 85 68 ff ff ff 	mov    -0x98(%rbp),%rax
    3a7c:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    3a80:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    3a84:	c6 40 18 01          	movb   $0x1,0x18(%rax)
    3a88:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
    3a8c:	e8 6f 00 00 00       	callq  3b00 <_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeEv>
    3a91:	48 89 85 60 ff ff ff 	mov    %rax,-0xa0(%rbp)
    3a98:	e9 00 00 00 00       	jmpq   3a9d <_ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_+0x2dd>
    3a9d:	48 8b 85 60 ff ff ff 	mov    -0xa0(%rbp),%rax
    3aa4:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    3aa8:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    3aac:	c6 40 18 00          	movb   $0x0,0x18(%rax)
    3ab0:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
    3ab4:	e8 97 00 00 00       	callq  3b50 <_ZNSt3__118__tree_left_rotateIPNS_16__tree_node_baseIPvEEEEvT_>
    3ab9:	e9 0a 00 00 00       	jmpq   3ac8 <_ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_+0x308>
    3abe:	e9 00 00 00 00       	jmpq   3ac3 <_ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_+0x303>
    3ac3:	e9 20 fd ff ff       	jmpq   37e8 <_ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_+0x28>
    3ac8:	48 81 c4 a0 00 00 00 	add    $0xa0,%rsp
    3acf:	5d                   	pop    %rbp
    3ad0:	c3                   	retq   
    3ad1:	48 89 c7             	mov    %rax,%rdi
    3ad4:	e8 07 f3 ff ff       	callq  2de0 <__clang_call_terminate>
    3ad9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000003ae0 <_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEENS_19__map_value_compareIS7_SA_NS_4lessIS7_EELb1EEENS5_ISA_EEE4sizeEv>:
    3ae0:	55                   	push   %rbp
    3ae1:	48 89 e5             	mov    %rsp,%rbp
    3ae4:	48 83 ec 10          	sub    $0x10,%rsp
    3ae8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    3aec:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    3af0:	48 83 c7 10          	add    $0x10,%rdi
    3af4:	e8 07 02 00 00       	callq  3d00 <_ZNSt3__117__compressed_pairImNS_19__map_value_compareINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12__value_typeIS7_N9benchmark7CounterEEENS_4lessIS7_EELb1EEEE5firstEv>
    3af9:	48 83 c4 10          	add    $0x10,%rsp
    3afd:	5d                   	pop    %rbp
    3afe:	c3                   	retq   
    3aff:	90                   	nop

0000000000003b00 <_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeEv>:
    3b00:	55                   	push   %rbp
    3b01:	48 89 e5             	mov    %rsp,%rbp
    3b04:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    3b08:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3b0c:	48 8b 40 10          	mov    0x10(%rax),%rax
    3b10:	5d                   	pop    %rbp
    3b11:	c3                   	retq   
    3b12:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    3b19:	00 00 00 
    3b1c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000003b20 <_ZNSt3__120__tree_is_left_childIPNS_16__tree_node_baseIPvEEEEbT_>:
    3b20:	55                   	push   %rbp
    3b21:	48 89 e5             	mov    %rsp,%rbp
    3b24:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    3b28:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3b2c:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    3b30:	48 8b 49 10          	mov    0x10(%rcx),%rcx
    3b34:	48 3b 01             	cmp    (%rcx),%rax
    3b37:	0f 94 c0             	sete   %al
    3b3a:	24 01                	and    $0x1,%al
    3b3c:	0f b6 c0             	movzbl %al,%eax
    3b3f:	5d                   	pop    %rbp
    3b40:	c3                   	retq   
    3b41:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    3b48:	00 00 00 
    3b4b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000003b50 <_ZNSt3__118__tree_left_rotateIPNS_16__tree_node_baseIPvEEEEvT_>:
    3b50:	55                   	push   %rbp
    3b51:	48 89 e5             	mov    %rsp,%rbp
    3b54:	48 83 ec 20          	sub    $0x20,%rsp
    3b58:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    3b5c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3b60:	48 8b 40 08          	mov    0x8(%rax),%rax
    3b64:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    3b68:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    3b6c:	48 8b 08             	mov    (%rax),%rcx
    3b6f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3b73:	48 89 48 08          	mov    %rcx,0x8(%rax)
    3b77:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3b7b:	48 83 78 08 00       	cmpq   $0x0,0x8(%rax)
    3b80:	0f 84 17 00 00 00    	je     3b9d <_ZNSt3__118__tree_left_rotateIPNS_16__tree_node_baseIPvEEEEvT_+0x4d>
    3b86:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
    3b8a:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    3b8e:	e8 4d 01 00 00       	callq  3ce0 <_ZNSt3__116__tree_node_baseIPvE12__set_parentEPS2_>
    3b93:	e9 00 00 00 00       	jmpq   3b98 <_ZNSt3__118__tree_left_rotateIPNS_16__tree_node_baseIPvEEEEvT_+0x48>
    3b98:	e9 00 00 00 00       	jmpq   3b9d <_ZNSt3__118__tree_left_rotateIPNS_16__tree_node_baseIPvEEEEvT_+0x4d>
    3b9d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3ba1:	48 8b 48 10          	mov    0x10(%rax),%rcx
    3ba5:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    3ba9:	48 89 48 10          	mov    %rcx,0x10(%rax)
    3bad:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    3bb1:	e8 6a ff ff ff       	callq  3b20 <_ZNSt3__120__tree_is_left_childIPNS_16__tree_node_baseIPvEEEEbT_>
    3bb6:	a8 01                	test   $0x1,%al
    3bb8:	0f 85 05 00 00 00    	jne    3bc3 <_ZNSt3__118__tree_left_rotateIPNS_16__tree_node_baseIPvEEEEvT_+0x73>
    3bbe:	e9 14 00 00 00       	jmpq   3bd7 <_ZNSt3__118__tree_left_rotateIPNS_16__tree_node_baseIPvEEEEvT_+0x87>
    3bc3:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
    3bc7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3bcb:	48 8b 40 10          	mov    0x10(%rax),%rax
    3bcf:	48 89 08             	mov    %rcx,(%rax)
    3bd2:	e9 19 00 00 00       	jmpq   3bf0 <_ZNSt3__118__tree_left_rotateIPNS_16__tree_node_baseIPvEEEEvT_+0xa0>
    3bd7:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    3bdb:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    3bdf:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    3be3:	e8 18 ff ff ff       	callq  3b00 <_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeEv>
    3be8:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    3bec:	48 89 48 08          	mov    %rcx,0x8(%rax)
    3bf0:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    3bf4:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    3bf8:	48 89 08             	mov    %rcx,(%rax)
    3bfb:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    3bff:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
    3c03:	e8 d8 00 00 00       	callq  3ce0 <_ZNSt3__116__tree_node_baseIPvE12__set_parentEPS2_>
    3c08:	e9 00 00 00 00       	jmpq   3c0d <_ZNSt3__118__tree_left_rotateIPNS_16__tree_node_baseIPvEEEEvT_+0xbd>
    3c0d:	48 83 c4 20          	add    $0x20,%rsp
    3c11:	5d                   	pop    %rbp
    3c12:	c3                   	retq   
    3c13:	48 89 c7             	mov    %rax,%rdi
    3c16:	e8 c5 f1 ff ff       	callq  2de0 <__clang_call_terminate>
    3c1b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000003c20 <_ZNSt3__119__tree_right_rotateIPNS_16__tree_node_baseIPvEEEEvT_>:
    3c20:	55                   	push   %rbp
    3c21:	48 89 e5             	mov    %rsp,%rbp
    3c24:	48 83 ec 20          	sub    $0x20,%rsp
    3c28:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    3c2c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3c30:	48 8b 00             	mov    (%rax),%rax
    3c33:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    3c37:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    3c3b:	48 8b 48 08          	mov    0x8(%rax),%rcx
    3c3f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3c43:	48 89 08             	mov    %rcx,(%rax)
    3c46:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3c4a:	48 83 38 00          	cmpq   $0x0,(%rax)
    3c4e:	0f 84 10 00 00 00    	je     3c64 <_ZNSt3__119__tree_right_rotateIPNS_16__tree_node_baseIPvEEEEvT_+0x44>
    3c54:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3c58:	48 8b 38             	mov    (%rax),%rdi
    3c5b:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
    3c5f:	e8 7c 00 00 00       	callq  3ce0 <_ZNSt3__116__tree_node_baseIPvE12__set_parentEPS2_>
    3c64:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3c68:	48 8b 48 10          	mov    0x10(%rax),%rcx
    3c6c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    3c70:	48 89 48 10          	mov    %rcx,0x10(%rax)
    3c74:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    3c78:	e8 a3 fe ff ff       	callq  3b20 <_ZNSt3__120__tree_is_left_childIPNS_16__tree_node_baseIPvEEEEbT_>
    3c7d:	a8 01                	test   $0x1,%al
    3c7f:	0f 85 05 00 00 00    	jne    3c8a <_ZNSt3__119__tree_right_rotateIPNS_16__tree_node_baseIPvEEEEvT_+0x6a>
    3c85:	e9 14 00 00 00       	jmpq   3c9e <_ZNSt3__119__tree_right_rotateIPNS_16__tree_node_baseIPvEEEEvT_+0x7e>
    3c8a:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
    3c8e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3c92:	48 8b 40 10          	mov    0x10(%rax),%rax
    3c96:	48 89 08             	mov    %rcx,(%rax)
    3c99:	e9 19 00 00 00       	jmpq   3cb7 <_ZNSt3__119__tree_right_rotateIPNS_16__tree_node_baseIPvEEEEvT_+0x97>
    3c9e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    3ca2:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    3ca6:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    3caa:	e8 51 fe ff ff       	callq  3b00 <_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeEv>
    3caf:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    3cb3:	48 89 48 08          	mov    %rcx,0x8(%rax)
    3cb7:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    3cbb:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    3cbf:	48 89 48 08          	mov    %rcx,0x8(%rax)
    3cc3:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    3cc7:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
    3ccb:	e8 10 00 00 00       	callq  3ce0 <_ZNSt3__116__tree_node_baseIPvE12__set_parentEPS2_>
    3cd0:	48 83 c4 20          	add    $0x20,%rsp
    3cd4:	5d                   	pop    %rbp
    3cd5:	c3                   	retq   
    3cd6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    3cdd:	00 00 00 

0000000000003ce0 <_ZNSt3__116__tree_node_baseIPvE12__set_parentEPS2_>:
    3ce0:	55                   	push   %rbp
    3ce1:	48 89 e5             	mov    %rsp,%rbp
    3ce4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    3ce8:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    3cec:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3cf0:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
    3cf4:	48 89 48 10          	mov    %rcx,0x10(%rax)
    3cf8:	5d                   	pop    %rbp
    3cf9:	c3                   	retq   
    3cfa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000003d00 <_ZNSt3__117__compressed_pairImNS_19__map_value_compareINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12__value_typeIS7_N9benchmark7CounterEEENS_4lessIS7_EELb1EEEE5firstEv>:
    3d00:	55                   	push   %rbp
    3d01:	48 89 e5             	mov    %rsp,%rbp
    3d04:	48 83 ec 10          	sub    $0x10,%rsp
    3d08:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    3d0c:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    3d10:	e8 0b 00 00 00       	callq  3d20 <_ZNSt3__122__compressed_pair_elemImLi0ELb0EE5__getEv>
    3d15:	48 83 c4 10          	add    $0x10,%rsp
    3d19:	5d                   	pop    %rbp
    3d1a:	c3                   	retq   
    3d1b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000003d20 <_ZNSt3__122__compressed_pair_elemImLi0ELb0EE5__getEv>:
    3d20:	55                   	push   %rbp
    3d21:	48 89 e5             	mov    %rsp,%rbp
    3d24:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    3d28:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3d2c:	5d                   	pop    %rbp
    3d2d:	c3                   	retq   
    3d2e:	66 90                	xchg   %ax,%ax

0000000000003d30 <_ZNSt3__117__compressed_pairIPNS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEEPvEENS_22__tree_node_destructorINS6_ISD_EEEEE5firstEv>:
    3d30:	55                   	push   %rbp
    3d31:	48 89 e5             	mov    %rsp,%rbp
    3d34:	48 83 ec 10          	sub    $0x10,%rsp
    3d38:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    3d3c:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    3d40:	e8 0b 00 00 00       	callq  3d50 <_ZNSt3__122__compressed_pair_elemIPNS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEEPvEELi0ELb0EE5__getEv>
    3d45:	48 83 c4 10          	add    $0x10,%rsp
    3d49:	5d                   	pop    %rbp
    3d4a:	c3                   	retq   
    3d4b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000003d50 <_ZNSt3__122__compressed_pair_elemIPNS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEEPvEELi0ELb0EE5__getEv>:
    3d50:	55                   	push   %rbp
    3d51:	48 89 e5             	mov    %rsp,%rbp
    3d54:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    3d58:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3d5c:	5d                   	pop    %rbp
    3d5d:	c3                   	retq   
    3d5e:	66 90                	xchg   %ax,%ax

0000000000003d60 <_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEEPvEENS_22__tree_node_destructorINS6_ISD_EEEEE5resetEPSD_>:
    3d60:	55                   	push   %rbp
    3d61:	48 89 e5             	mov    %rsp,%rbp
    3d64:	48 83 ec 30          	sub    $0x30,%rsp
    3d68:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    3d6c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    3d70:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    3d74:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    3d78:	e8 b3 ff ff ff       	callq  3d30 <_ZNSt3__117__compressed_pairIPNS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEEPvEENS_22__tree_node_destructorINS6_ISD_EEEEE5firstEv>
    3d7d:	48 8b 7d d8          	mov    -0x28(%rbp),%rdi
    3d81:	48 8b 00             	mov    (%rax),%rax
    3d84:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    3d88:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    3d8c:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    3d90:	e8 9b ff ff ff       	callq  3d30 <_ZNSt3__117__compressed_pairIPNS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEEPvEENS_22__tree_node_destructorINS6_ISD_EEEEE5firstEv>
    3d95:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    3d99:	48 89 08             	mov    %rcx,(%rax)
    3d9c:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
    3da1:	0f 84 15 00 00 00    	je     3dbc <_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEEPvEENS_22__tree_node_destructorINS6_ISD_EEEEE5resetEPSD_+0x5c>
    3da7:	48 8b 7d d8          	mov    -0x28(%rbp),%rdi
    3dab:	e8 d0 f9 ff ff       	callq  3780 <_ZNSt3__117__compressed_pairIPNS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEEPvEENS_22__tree_node_destructorINS6_ISD_EEEEE6secondEv>
    3db0:	48 89 c7             	mov    %rax,%rdi
    3db3:	48 8b 75 e8          	mov    -0x18(%rbp),%rsi
    3db7:	e8 14 00 00 00       	callq  3dd0 <_ZNSt3__122__tree_node_destructorINS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEN9benchmark7CounterEEEPvEEEEEclEPSD_>
    3dbc:	48 83 c4 30          	add    $0x30,%rsp
    3dc0:	5d                   	pop    %rbp
    3dc1:	c3                   	retq   
    3dc2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    3dc9:	00 00 00 
    3dcc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000003dd0 <_ZNSt3__122__tree_node_destructorINS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEN9benchmark7CounterEEEPvEEEEEclEPSD_>:
    3dd0:	55                   	push   %rbp
    3dd1:	48 89 e5             	mov    %rsp,%rbp
    3dd4:	48 83 ec 30          	sub    $0x30,%rsp
    3dd8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    3ddc:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    3de0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3de4:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    3de8:	f6 40 08 01          	testb  $0x1,0x8(%rax)
    3dec:	0f 84 38 00 00 00    	je     3e2a <_ZNSt3__122__tree_node_destructorINS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEN9benchmark7CounterEEEPvEEEEEclEPSD_+0x5a>
    3df2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    3df6:	48 8b 00             	mov    (%rax),%rax
    3df9:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    3dfd:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
    3e01:	48 83 c7 20          	add    $0x20,%rdi
    3e05:	e8 b6 f3 ff ff       	callq  31c0 <_ZNSt3__122__tree_key_value_typesINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEEE9__get_ptrERSA_>
    3e0a:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    3e0e:	e9 00 00 00 00       	jmpq   3e13 <_ZNSt3__122__tree_node_destructorINS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEN9benchmark7CounterEEEPvEEEEEclEPSD_+0x43>
    3e13:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    3e17:	48 8b 7d d8          	mov    -0x28(%rbp),%rdi
    3e1b:	e8 40 00 00 00       	callq  3e60 <_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEN9benchmark7CounterEEEPvEEEEE7destroyINS_4pairIKS8_SA_EEEEvRSE_PT_>
    3e20:	e9 00 00 00 00       	jmpq   3e25 <_ZNSt3__122__tree_node_destructorINS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEN9benchmark7CounterEEEPvEEEEEclEPSD_+0x55>
    3e25:	e9 00 00 00 00       	jmpq   3e2a <_ZNSt3__122__tree_node_destructorINS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEN9benchmark7CounterEEEPvEEEEEclEPSD_+0x5a>
    3e2a:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
    3e2f:	0f 84 15 00 00 00    	je     3e4a <_ZNSt3__122__tree_node_destructorINS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEN9benchmark7CounterEEEPvEEEEEclEPSD_+0x7a>
    3e35:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    3e39:	48 8b 38             	mov    (%rax),%rdi
    3e3c:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
    3e40:	ba 01 00 00 00       	mov    $0x1,%edx
    3e45:	e8 46 00 00 00       	callq  3e90 <_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEN9benchmark7CounterEEEPvEEEEE10deallocateERSE_PSD_m>
    3e4a:	48 83 c4 30          	add    $0x30,%rsp
    3e4e:	5d                   	pop    %rbp
    3e4f:	c3                   	retq   
    3e50:	48 89 c7             	mov    %rax,%rdi
    3e53:	e8 88 ef ff ff       	callq  2de0 <__clang_call_terminate>
    3e58:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    3e5f:	00 

0000000000003e60 <_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEN9benchmark7CounterEEEPvEEEEE7destroyINS_4pairIKS8_SA_EEEEvRSE_PT_>:
    3e60:	55                   	push   %rbp
    3e61:	48 89 e5             	mov    %rsp,%rbp
    3e64:	48 83 ec 20          	sub    $0x20,%rsp
    3e68:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    3e6c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    3e70:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    3e74:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
    3e78:	e8 43 00 00 00       	callq  3ec0 <_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEN9benchmark7CounterEEEPvEEEEE9__destroyINS_4pairIKS8_SA_EEEEvNS_17integral_constantIbLb0EEERSE_PT_>
    3e7d:	48 83 c4 20          	add    $0x20,%rsp
    3e81:	5d                   	pop    %rbp
    3e82:	c3                   	retq   
    3e83:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    3e8a:	00 00 00 
    3e8d:	0f 1f 00             	nopl   (%rax)

0000000000003e90 <_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEN9benchmark7CounterEEEPvEEEEE10deallocateERSE_PSD_m>:
    3e90:	55                   	push   %rbp
    3e91:	48 89 e5             	mov    %rsp,%rbp
    3e94:	48 83 ec 20          	sub    $0x20,%rsp
    3e98:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    3e9c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    3ea0:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    3ea4:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    3ea8:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
    3eac:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    3eb0:	e8 6b 00 00 00       	callq  3f20 <_ZNSt3__19allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEN9benchmark7CounterEEEPvEEE10deallocateEPSC_m>
    3eb5:	48 83 c4 20          	add    $0x20,%rsp
    3eb9:	5d                   	pop    %rbp
    3eba:	c3                   	retq   
    3ebb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000003ec0 <_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEN9benchmark7CounterEEEPvEEEEE9__destroyINS_4pairIKS8_SA_EEEEvNS_17integral_constantIbLb0EEERSE_PT_>:
    3ec0:	55                   	push   %rbp
    3ec1:	48 89 e5             	mov    %rsp,%rbp
    3ec4:	48 83 ec 20          	sub    $0x20,%rsp
    3ec8:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
    3ecc:	48 89 75 e8          	mov    %rsi,-0x18(%rbp)
    3ed0:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
    3ed4:	e8 07 00 00 00       	callq  3ee0 <_ZNSt3__110destroy_atINS_4pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEEEEvPT_>
    3ed9:	48 83 c4 20          	add    $0x20,%rsp
    3edd:	5d                   	pop    %rbp
    3ede:	c3                   	retq   
    3edf:	90                   	nop

0000000000003ee0 <_ZNSt3__110destroy_atINS_4pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEEEEvPT_>:
    3ee0:	55                   	push   %rbp
    3ee1:	48 89 e5             	mov    %rsp,%rbp
    3ee4:	48 83 ec 10          	sub    $0x10,%rsp
    3ee8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    3eec:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    3ef0:	e8 0b 00 00 00       	callq  3f00 <_ZNSt3__14pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEED2Ev>
    3ef5:	48 83 c4 10          	add    $0x10,%rsp
    3ef9:	5d                   	pop    %rbp
    3efa:	c3                   	retq   
    3efb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000003f00 <_ZNSt3__14pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEED2Ev>:
    3f00:	55                   	push   %rbp
    3f01:	48 89 e5             	mov    %rsp,%rbp
    3f04:	48 83 ec 10          	sub    $0x10,%rsp
    3f08:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    3f0c:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    3f10:	e8 7b d5 ff ff       	callq  1490 <_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev@plt>
    3f15:	48 83 c4 10          	add    $0x10,%rsp
    3f19:	5d                   	pop    %rbp
    3f1a:	c3                   	retq   
    3f1b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000003f20 <_ZNSt3__19allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEN9benchmark7CounterEEEPvEEE10deallocateEPSC_m>:
    3f20:	55                   	push   %rbp
    3f21:	48 89 e5             	mov    %rsp,%rbp
    3f24:	48 83 ec 20          	sub    $0x20,%rsp
    3f28:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    3f2c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    3f30:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    3f34:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
    3f38:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    3f3c:	48 c1 e0 03          	shl    $0x3,%rax
    3f40:	48 8d 34 c0          	lea    (%rax,%rax,8),%rsi
    3f44:	ba 08 00 00 00       	mov    $0x8,%edx
    3f49:	e8 22 00 00 00       	callq  3f70 <_ZNSt3__119__libcpp_deallocateEPvmm>
    3f4e:	e9 00 00 00 00       	jmpq   3f53 <_ZNSt3__19allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEN9benchmark7CounterEEEPvEEE10deallocateEPSC_m+0x33>
    3f53:	48 83 c4 20          	add    $0x20,%rsp
    3f57:	5d                   	pop    %rbp
    3f58:	c3                   	retq   
    3f59:	48 89 c7             	mov    %rax,%rdi
    3f5c:	e8 7f ee ff ff       	callq  2de0 <__clang_call_terminate>
    3f61:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    3f68:	00 00 00 
    3f6b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000003f70 <_ZNSt3__119__libcpp_deallocateEPvmm>:
    3f70:	55                   	push   %rbp
    3f71:	48 89 e5             	mov    %rsp,%rbp
    3f74:	48 83 ec 20          	sub    $0x20,%rsp
    3f78:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    3f7c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    3f80:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    3f84:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
    3f88:	e8 93 f4 ff ff       	callq  3420 <_ZNSt3__124__is_overaligned_for_newEm>
    3f8d:	a8 01                	test   $0x1,%al
    3f8f:	0f 85 05 00 00 00    	jne    3f9a <_ZNSt3__119__libcpp_deallocateEPvmm+0x2a>
    3f95:	e9 1e 00 00 00       	jmpq   3fb8 <_ZNSt3__119__libcpp_deallocateEPvmm+0x48>
    3f9a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    3f9e:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    3fa2:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    3fa6:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
    3faa:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    3fae:	e8 1d 00 00 00       	callq  3fd0 <_ZNSt3__127__do_deallocate_handle_sizeIJSt11align_val_tEEEvPvmDpT_>
    3fb3:	e9 0d 00 00 00       	jmpq   3fc5 <_ZNSt3__119__libcpp_deallocateEPvmm+0x55>
    3fb8:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    3fbc:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
    3fc0:	e8 3b 00 00 00       	callq  4000 <_ZNSt3__127__do_deallocate_handle_sizeIJEEEvPvmDpT_>
    3fc5:	48 83 c4 20          	add    $0x20,%rsp
    3fc9:	5d                   	pop    %rbp
    3fca:	c3                   	retq   
    3fcb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000003fd0 <_ZNSt3__127__do_deallocate_handle_sizeIJSt11align_val_tEEEvPvmDpT_>:
    3fd0:	55                   	push   %rbp
    3fd1:	48 89 e5             	mov    %rsp,%rbp
    3fd4:	48 83 ec 20          	sub    $0x20,%rsp
    3fd8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    3fdc:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    3fe0:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    3fe4:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    3fe8:	48 8b 75 e8          	mov    -0x18(%rbp),%rsi
    3fec:	e8 2f 00 00 00       	callq  4020 <_ZNSt3__124__libcpp_operator_deleteIJPvSt11align_val_tEEEvDpT_>
    3ff1:	48 83 c4 20          	add    $0x20,%rsp
    3ff5:	5d                   	pop    %rbp
    3ff6:	c3                   	retq   
    3ff7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    3ffe:	00 00 

0000000000004000 <_ZNSt3__127__do_deallocate_handle_sizeIJEEEvPvmDpT_>:
    4000:	55                   	push   %rbp
    4001:	48 89 e5             	mov    %rsp,%rbp
    4004:	48 83 ec 10          	sub    $0x10,%rsp
    4008:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    400c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    4010:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    4014:	e8 37 00 00 00       	callq  4050 <_ZNSt3__124__libcpp_operator_deleteIJPvEEEvDpT_>
    4019:	48 83 c4 10          	add    $0x10,%rsp
    401d:	5d                   	pop    %rbp
    401e:	c3                   	retq   
    401f:	90                   	nop

0000000000004020 <_ZNSt3__124__libcpp_operator_deleteIJPvSt11align_val_tEEEvDpT_>:
    4020:	55                   	push   %rbp
    4021:	48 89 e5             	mov    %rsp,%rbp
    4024:	48 83 ec 10          	sub    $0x10,%rsp
    4028:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    402c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    4030:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    4034:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
    4038:	e8 a3 d3 ff ff       	callq  13e0 <_ZdlPvSt11align_val_t@plt>
    403d:	48 83 c4 10          	add    $0x10,%rsp
    4041:	5d                   	pop    %rbp
    4042:	c3                   	retq   
    4043:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    404a:	00 00 00 
    404d:	0f 1f 00             	nopl   (%rax)

0000000000004050 <_ZNSt3__124__libcpp_operator_deleteIJPvEEEvDpT_>:
    4050:	55                   	push   %rbp
    4051:	48 89 e5             	mov    %rsp,%rbp
    4054:	48 83 ec 10          	sub    $0x10,%rsp
    4058:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    405c:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    4060:	e8 2b d3 ff ff       	callq  1390 <_ZdlPv@plt>
    4065:	48 83 c4 10          	add    $0x10,%rsp
    4069:	5d                   	pop    %rbp
    406a:	c3                   	retq   
    406b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000004070 <_ZNSt3__15tupleIJONS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEC2IJS6_ELb0ELb0EEEDpOT_>:
    4070:	55                   	push   %rbp
    4071:	48 89 e5             	mov    %rsp,%rbp
    4074:	48 83 ec 30          	sub    $0x30,%rsp
    4078:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    407c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    4080:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    4084:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
    4088:	e8 13 00 00 00       	callq  40a0 <_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0EEEEJONS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEC2IJLm0EEJS9_EJEJEJS8_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSD_IJDpT2_EEEDpOT3_>
    408d:	48 83 c4 30          	add    $0x30,%rsp
    4091:	5d                   	pop    %rbp
    4092:	c3                   	retq   
    4093:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    409a:	00 00 00 
    409d:	0f 1f 00             	nopl   (%rax)

00000000000040a0 <_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0EEEEJONS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEC2IJLm0EEJS9_EJEJEJS8_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSD_IJDpT2_EEEDpOT3_>:
    40a0:	55                   	push   %rbp
    40a1:	48 89 e5             	mov    %rsp,%rbp
    40a4:	48 83 ec 30          	sub    $0x30,%rsp
    40a8:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    40ac:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    40b0:	48 8b 7d d8          	mov    -0x28(%rbp),%rdi
    40b4:	48 8b 75 d0          	mov    -0x30(%rbp),%rsi
    40b8:	e8 13 00 00 00       	callq  40d0 <_ZNSt3__112__tuple_leafILm0EONS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EEC2IS6_vEEOT_>
    40bd:	48 83 c4 30          	add    $0x30,%rsp
    40c1:	5d                   	pop    %rbp
    40c2:	c3                   	retq   
    40c3:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    40ca:	00 00 00 
    40cd:	0f 1f 00             	nopl   (%rax)

00000000000040d0 <_ZNSt3__112__tuple_leafILm0EONS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EEC2IS6_vEEOT_>:
    40d0:	55                   	push   %rbp
    40d1:	48 89 e5             	mov    %rsp,%rbp
    40d4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    40d8:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    40dc:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    40e0:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
    40e4:	48 89 08             	mov    %rcx,(%rax)
    40e7:	5d                   	pop    %rbp
    40e8:	c3                   	retq   
    40e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000040f0 <_ZNSt3__114pointer_traitsIPNS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEEE10pointer_toERSA_>:
    40f0:	55                   	push   %rbp
    40f1:	48 89 e5             	mov    %rsp,%rbp
    40f4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    40f8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    40fc:	5d                   	pop    %rbp
    40fd:	c3                   	retq   
    40fe:	66 90                	xchg   %ax,%ax

0000000000004100 <_ZNKSt3__115__tree_iteratorINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEEPNS_11__tree_nodeISA_PvEElE8__get_npEv>:
    4100:	55                   	push   %rbp
    4101:	48 89 e5             	mov    %rsp,%rbp
    4104:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    4108:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    410c:	48 8b 00             	mov    (%rax),%rax
    410f:	5d                   	pop    %rbp
    4110:	c3                   	retq   
    4111:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    4118:	00 00 00 
    411b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000004120 <_ZNSt3__17launderINS_4pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEEEEPT_SD_>:
    4120:	55                   	push   %rbp
    4121:	48 89 e5             	mov    %rsp,%rbp
    4124:	48 83 ec 10          	sub    $0x10,%rsp
    4128:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    412c:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    4130:	e8 0b 00 00 00       	callq  4140 <_ZNSt3__19__launderINS_4pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEEEEPT_SD_>
    4135:	48 83 c4 10          	add    $0x10,%rsp
    4139:	5d                   	pop    %rbp
    413a:	c3                   	retq   
    413b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000004140 <_ZNSt3__19__launderINS_4pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN9benchmark7CounterEEEEEPT_SD_>:
    4140:	55                   	push   %rbp
    4141:	48 89 e5             	mov    %rsp,%rbp
    4144:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    4148:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    414c:	5d                   	pop    %rbp
    414d:	c3                   	retq   
    414e:	66 90                	xchg   %ax,%ax

0000000000004150 <_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2INS_18__default_init_tagESA_EEOT_OT0_>:
    4150:	55                   	push   %rbp
    4151:	48 89 e5             	mov    %rsp,%rbp
    4154:	48 83 ec 30          	sub    $0x30,%rsp
    4158:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    415c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    4160:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    4164:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    4168:	48 89 7d d0          	mov    %rdi,-0x30(%rbp)
    416c:	e8 0f 00 00 00       	callq  4180 <_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2ENS_18__default_init_tagE>
    4171:	48 8b 7d d0          	mov    -0x30(%rbp),%rdi
    4175:	e8 16 00 00 00       	callq  4190 <_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2ENS_18__default_init_tagE>
    417a:	48 83 c4 30          	add    $0x30,%rsp
    417e:	5d                   	pop    %rbp
    417f:	c3                   	retq   

0000000000004180 <_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2ENS_18__default_init_tagE>:
    4180:	55                   	push   %rbp
    4181:	48 89 e5             	mov    %rsp,%rbp
    4184:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
    4188:	5d                   	pop    %rbp
    4189:	c3                   	retq   
    418a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000004190 <_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2ENS_18__default_init_tagE>:
    4190:	55                   	push   %rbp
    4191:	48 89 e5             	mov    %rsp,%rbp
    4194:	48 83 ec 10          	sub    $0x10,%rsp
    4198:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
    419c:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
    41a0:	e8 0b 00 00 00       	callq  41b0 <_ZNSt3__19allocatorIcEC2Ev>
    41a5:	48 83 c4 10          	add    $0x10,%rsp
    41a9:	5d                   	pop    %rbp
    41aa:	c3                   	retq   
    41ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000041b0 <_ZNSt3__19allocatorIcEC2Ev>:
    41b0:	55                   	push   %rbp
    41b1:	48 89 e5             	mov    %rsp,%rbp
    41b4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    41b8:	5d                   	pop    %rbp
    41b9:	c3                   	retq   
    41ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000041c0 <__libc_csu_init>:
    41c0:	f3 0f 1e fa          	endbr64 
    41c4:	41 57                	push   %r15
    41c6:	49 89 d7             	mov    %rdx,%r15
    41c9:	41 56                	push   %r14
    41cb:	49 89 f6             	mov    %rsi,%r14
    41ce:	41 55                	push   %r13
    41d0:	41 89 fd             	mov    %edi,%r13d
    41d3:	41 54                	push   %r12
    41d5:	4c 8d 25 04 1b 20 00 	lea    0x201b04(%rip),%r12        # 205ce0 <__frame_dummy_init_array_entry>
    41dc:	55                   	push   %rbp
    41dd:	48 8d 2d 0c 1b 20 00 	lea    0x201b0c(%rip),%rbp        # 205cf0 <__init_array_end>
    41e4:	53                   	push   %rbx
    41e5:	4c 29 e5             	sub    %r12,%rbp
    41e8:	48 83 ec 08          	sub    $0x8,%rsp
    41ec:	e8 cf d0 ff ff       	callq  12c0 <_init>
    41f1:	48 c1 fd 03          	sar    $0x3,%rbp
    41f5:	74 1f                	je     4216 <__libc_csu_init+0x56>
    41f7:	31 db                	xor    %ebx,%ebx
    41f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    4200:	4c 89 fa             	mov    %r15,%rdx
    4203:	4c 89 f6             	mov    %r14,%rsi
    4206:	44 89 ef             	mov    %r13d,%edi
    4209:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
    420d:	48 83 c3 01          	add    $0x1,%rbx
    4211:	48 39 dd             	cmp    %rbx,%rbp
    4214:	75 ea                	jne    4200 <__libc_csu_init+0x40>
    4216:	48 83 c4 08          	add    $0x8,%rsp
    421a:	5b                   	pop    %rbx
    421b:	5d                   	pop    %rbp
    421c:	41 5c                	pop    %r12
    421e:	41 5d                	pop    %r13
    4220:	41 5e                	pop    %r14
    4222:	41 5f                	pop    %r15
    4224:	c3                   	retq   
    4225:	90                   	nop
    4226:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    422d:	00 00 00 

0000000000004230 <__libc_csu_fini>:
    4230:	f3 0f 1e fa          	endbr64 
    4234:	c3                   	retq   

Disassembly of section .fini:

0000000000004238 <_fini>:
    4238:	f3 0f 1e fa          	endbr64 
    423c:	48 83 ec 08          	sub    $0x8,%rsp
    4240:	48 83 c4 08          	add    $0x8,%rsp
    4244:	c3                   	retq   
