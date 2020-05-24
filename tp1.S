
tpC:     file format elf32-tradbigmips


Disassembly of section .init:

00000968 <_init>:
 968:	3c1c0002 	lui	gp,0x2
 96c:	279c97d8 	addiu	gp,gp,-26664
 970:	0399e021 	addu	gp,gp,t9
 974:	27bdffe0 	addiu	sp,sp,-32
 978:	afbc0010 	sw	gp,16(sp)
 97c:	afbf001c 	sw	ra,28(sp)
 980:	8f828088 	lw	v0,-32632(gp)
 984:	10400004 	beqz	v0,998 <_init+0x30>
 988:	00000000 	nop
 98c:	8f998088 	lw	t9,-32632(gp)
 990:	0320f809 	jalr	t9
 994:	00000000 	nop
 998:	8fbf001c 	lw	ra,28(sp)
 99c:	03e00008 	jr	ra
 9a0:	27bd0020 	addiu	sp,sp,32

Disassembly of section .text:

000009b0 <__start>:
     9b0:	03e00025 	move	zero,ra
     9b4:	04110001 	bal	9bc <__start+0xc>
     9b8:	00000000 	nop
     9bc:	3c1c0002 	lui	gp,0x2
     9c0:	279c9784 	addiu	gp,gp,-26748
     9c4:	039fe021 	addu	gp,gp,ra
     9c8:	0000f825 	move	ra,zero
     9cc:	8f848018 	lw	a0,-32744(gp)
     9d0:	8fa50000 	lw	a1,0(sp)
     9d4:	27a60004 	addiu	a2,sp,4
     9d8:	2401fff8 	li	at,-8
     9dc:	03a1e824 	and	sp,sp,at
     9e0:	27bdffe0 	addiu	sp,sp,-32
     9e4:	8f87801c 	lw	a3,-32740(gp)
     9e8:	8f888020 	lw	t0,-32736(gp)
     9ec:	afa80010 	sw	t0,16(sp)
     9f0:	afa20014 	sw	v0,20(sp)
     9f4:	afbd0018 	sw	sp,24(sp)
     9f8:	8f998080 	lw	t9,-32640(gp)
     9fc:	0320f809 	jalr	t9
     a00:	00000000 	nop

00000a04 <hlt>:
     a04:	1000ffff 	b	a04 <hlt>
     a08:	00000000 	nop
     a0c:	00000000 	nop

00000a10 <deregister_tm_clones>:
     a10:	3c1c0002 	lui	gp,0x2
     a14:	279c9730 	addiu	gp,gp,-26832
     a18:	0399e021 	addu	gp,gp,t9
     a1c:	8f848028 	lw	a0,-32728(gp)
     a20:	8f828024 	lw	v0,-32732(gp)
     a24:	24842144 	addiu	a0,a0,8516
     a28:	24420003 	addiu	v0,v0,3
     a2c:	00441023 	subu	v0,v0,a0
     a30:	2c420007 	sltiu	v0,v0,7
     a34:	14400005 	bnez	v0,a4c <deregister_tm_clones+0x3c>
     a38:	8f9980c0 	lw	t9,-32576(gp)
     a3c:	13200003 	beqz	t9,a4c <deregister_tm_clones+0x3c>
     a40:	00000000 	nop
     a44:	03200008 	jr	t9
     a48:	00000000 	nop
     a4c:	03e00008 	jr	ra
     a50:	00000000 	nop

00000a54 <register_tm_clones>:
     a54:	3c1c0002 	lui	gp,0x2
     a58:	279c96ec 	addiu	gp,gp,-26900
     a5c:	0399e021 	addu	gp,gp,t9
     a60:	8f848028 	lw	a0,-32728(gp)
     a64:	8f858024 	lw	a1,-32732(gp)
     a68:	24842144 	addiu	a0,a0,8516
     a6c:	00a42823 	subu	a1,a1,a0
     a70:	00052883 	sra	a1,a1,0x2
     a74:	000517c2 	srl	v0,a1,0x1f
     a78:	00452821 	addu	a1,v0,a1
     a7c:	00052843 	sra	a1,a1,0x1
     a80:	10a00005 	beqz	a1,a98 <register_tm_clones+0x44>
     a84:	8f998058 	lw	t9,-32680(gp)
     a88:	13200003 	beqz	t9,a98 <register_tm_clones+0x44>
     a8c:	00000000 	nop
     a90:	03200008 	jr	t9
     a94:	00000000 	nop
     a98:	03e00008 	jr	ra
     a9c:	00000000 	nop

00000aa0 <__do_global_dtors_aux>:
     aa0:	3c1c0002 	lui	gp,0x2
     aa4:	279c96a0 	addiu	gp,gp,-26976
     aa8:	0399e021 	addu	gp,gp,t9
     aac:	27bdffe0 	addiu	sp,sp,-32
     ab0:	afb00018 	sw	s0,24(sp)
     ab4:	8f908028 	lw	s0,-32728(gp)
     ab8:	afbc0010 	sw	gp,16(sp)
     abc:	afbf001c 	sw	ra,28(sp)
     ac0:	92022210 	lbu	v0,8720(s0)
     ac4:	1440000d 	bnez	v0,afc <__do_global_dtors_aux+0x5c>
     ac8:	8f8280c4 	lw	v0,-32572(gp)
     acc:	10400005 	beqz	v0,ae4 <__do_global_dtors_aux+0x44>
     ad0:	8f82802c 	lw	v0,-32724(gp)
     ad4:	8f9980c4 	lw	t9,-32572(gp)
     ad8:	0320f809 	jalr	t9
     adc:	8c440000 	lw	a0,0(v0)
     ae0:	8fbc0010 	lw	gp,16(sp)
     ae4:	8f998030 	lw	t9,-32720(gp)
     ae8:	27390a10 	addiu	t9,t9,2576
     aec:	0411ffc8 	bal	a10 <deregister_tm_clones>
     af0:	00000000 	nop
     af4:	24020001 	li	v0,1
     af8:	a2022210 	sb	v0,8720(s0)
     afc:	8fbf001c 	lw	ra,28(sp)
     b00:	8fb00018 	lw	s0,24(sp)
     b04:	03e00008 	jr	ra
     b08:	27bd0020 	addiu	sp,sp,32

00000b0c <frame_dummy>:
     b0c:	3c1c0002 	lui	gp,0x2
     b10:	279c9634 	addiu	gp,gp,-27084
     b14:	0399e021 	addu	gp,gp,t9
     b18:	8f828028 	lw	v0,-32728(gp)
     b1c:	27bdffe0 	addiu	sp,sp,-32
     b20:	244420dc 	addiu	a0,v0,8412
     b24:	afbc0010 	sw	gp,16(sp)
     b28:	afbf001c 	sw	ra,28(sp)
     b2c:	8c820000 	lw	v0,0(a0)
     b30:	14400006 	bnez	v0,b4c <frame_dummy+0x40>
     b34:	8f998060 	lw	t9,-32672(gp)
     b38:	8f998030 	lw	t9,-32720(gp)
     b3c:	8fbf001c 	lw	ra,28(sp)
     b40:	27390a54 	addiu	t9,t9,2644
     b44:	1000ffc3 	b	a54 <register_tm_clones>
     b48:	27bd0020 	addiu	sp,sp,32
     b4c:	1320fffa 	beqz	t9,b38 <frame_dummy+0x2c>
     b50:	00000000 	nop
     b54:	0320f809 	jalr	t9
     b58:	00000000 	nop
     b5c:	1000fff6 	b	b38 <frame_dummy+0x2c>
     b60:	8fbc0010 	lw	gp,16(sp)
	...

00000b70 <main>:
//		free(left);
//		free(right);
//	}
//}

int main(int argc, char *argv[]) {
     b70:	3c1c0002 	lui	gp,0x2
     b74:	279c95d0 	addiu	gp,gp,-27184
     b78:	0399e021 	addu	gp,gp,t9
     b7c:	27bdff38 	addiu	sp,sp,-200
     b80:	afbf00c4 	sw	ra,196(sp)
     b84:	afbe00c0 	sw	s8,192(sp)
     b88:	afb000bc 	sw	s0,188(sp)
     b8c:	03a0f025 	move	s8,sp
     b90:	afbc0018 	sw	gp,24(sp)
     b94:	afc400c8 	sw	a0,200(s8)
     b98:	afc500cc 	sw	a1,204(s8)
	int option = 0;
     b9c:	afc00040 	sw	zero,64(s8)
	const char *short_opt = "i:o:hV";
     ba0:	8f828030 	lw	v0,-32720(gp)
     ba4:	24421e10 	addiu	v0,v0,7696
     ba8:	afc20044 	sw	v0,68(s8)
	struct option long_opt[] = {
     bac:	8f828028 	lw	v0,-32728(gp)
     bb0:	27c30060 	addiu	v1,s8,96
     bb4:	244220f0 	addiu	v0,v0,8432
     bb8:	24040050 	li	a0,80
     bbc:	00803025 	move	a2,a0
     bc0:	00402825 	move	a1,v0
     bc4:	00602025 	move	a0,v1
     bc8:	8f8280a8 	lw	v0,-32600(gp)
     bcc:	0040c825 	move	t9,v0
     bd0:	0320f809 	jalr	t9
     bd4:	00000000 	nop
     bd8:	8fdc0018 	lw	gp,24(s8)
		{"help",    no_argument,       NULL, 'h'},
		{"input",   required_argument, NULL, 'i'},
		{"output",  required_argument, NULL, 'o'},
		{NULL, 0,                      NULL, 0}
	};
	FILE *inputFileOriginal = NULL;
     bdc:	afc00020 	sw	zero,32(s8)
	FILE *inputFile = tmpfile();
     be0:	8f828098 	lw	v0,-32616(gp)
     be4:	0040c825 	move	t9,v0
     be8:	0320f809 	jalr	t9
     bec:	00000000 	nop
     bf0:	8fdc0018 	lw	gp,24(s8)
     bf4:	afc20048 	sw	v0,72(s8)
	FILE *outputFile = NULL;
     bf8:	afc00024 	sw	zero,36(s8)

	while ((option = getopt_long(argc, argv, short_opt, long_opt, NULL)) != -1) {
     bfc:	10000105 	b	1014 <main+0x4a4>
     c00:	00000000 	nop
		switch (option) {
     c04:	8fc20040 	lw	v0,64(s8)
     c08:	24030068 	li	v1,104
     c0c:	10430029 	beq	v0,v1,cb4 <main+0x144>
     c10:	00000000 	nop
     c14:	28430069 	slti	v1,v0,105
     c18:	10600006 	beqz	v1,c34 <main+0xc4>
     c1c:	00000000 	nop
     c20:	24030056 	li	v1,86
     c24:	1043000b 	beq	v0,v1,c54 <main+0xe4>
     c28:	00000000 	nop
     c2c:	100000e9 	b	fd4 <main+0x464>
     c30:	00000000 	nop
     c34:	24030069 	li	v1,105
     c38:	1043007e 	beq	v0,v1,e34 <main+0x2c4>
     c3c:	00000000 	nop
     c40:	2403006f 	li	v1,111
     c44:	104300af 	beq	v0,v1,f04 <main+0x394>
     c48:	00000000 	nop
     c4c:	100000e1 	b	fd4 <main+0x464>
     c50:	00000000 	nop
			case 'V':
				printf("TP #1 de la materia Organizacion de Computadoras \n");
     c54:	8f828030 	lw	v0,-32720(gp)
     c58:	24441e18 	addiu	a0,v0,7704
     c5c:	8f828090 	lw	v0,-32624(gp)
     c60:	0040c825 	move	t9,v0
     c64:	0320f809 	jalr	t9
     c68:	00000000 	nop
     c6c:	8fdc0018 	lw	gp,24(s8)
				printf("Alumnos: \n");
     c70:	8f828030 	lw	v0,-32720(gp)
     c74:	24441e4c 	addiu	a0,v0,7756
     c78:	8f828090 	lw	v0,-32624(gp)
     c7c:	0040c825 	move	t9,v0
     c80:	0320f809 	jalr	t9
     c84:	00000000 	nop
     c88:	8fdc0018 	lw	gp,24(s8)
				printf("	Bobadilla Catalan, German\n	Leloutre, Daniela \n	Lozano, Ramiro \n");
     c8c:	8f828030 	lw	v0,-32720(gp)
     c90:	24441e58 	addiu	a0,v0,7768
     c94:	8f828090 	lw	v0,-32624(gp)
     c98:	0040c825 	move	t9,v0
     c9c:	0320f809 	jalr	t9
     ca0:	00000000 	nop
     ca4:	8fdc0018 	lw	gp,24(s8)
				return SALIDA_EXITOSA;
     ca8:	00001025 	move	v0,zero
     cac:	1000026b 	b	165c <main+0xaec>
     cb0:	00000000 	nop
			case 'h':
				printf("Usage: \n");
     cb4:	8f828030 	lw	v0,-32720(gp)
     cb8:	24441e98 	addiu	a0,v0,7832
     cbc:	8f828090 	lw	v0,-32624(gp)
     cc0:	0040c825 	move	t9,v0
     cc4:	0320f809 	jalr	t9
     cc8:	00000000 	nop
     ccc:	8fdc0018 	lw	gp,24(s8)
				printf("	%s -h \n", argv[0]);
     cd0:	8fc200cc 	lw	v0,204(s8)
     cd4:	8c420000 	lw	v0,0(v0)
     cd8:	00402825 	move	a1,v0
     cdc:	8f828030 	lw	v0,-32720(gp)
     ce0:	24441ea0 	addiu	a0,v0,7840
     ce4:	8f8280bc 	lw	v0,-32580(gp)
     ce8:	0040c825 	move	t9,v0
     cec:	0320f809 	jalr	t9
     cf0:	00000000 	nop
     cf4:	8fdc0018 	lw	gp,24(s8)
				printf("	%s -V \n", argv[0]);
     cf8:	8fc200cc 	lw	v0,204(s8)
     cfc:	8c420000 	lw	v0,0(v0)
     d00:	00402825 	move	a1,v0
     d04:	8f828030 	lw	v0,-32720(gp)
     d08:	24441eac 	addiu	a0,v0,7852
     d0c:	8f8280bc 	lw	v0,-32580(gp)
     d10:	0040c825 	move	t9,v0
     d14:	0320f809 	jalr	t9
     d18:	00000000 	nop
     d1c:	8fdc0018 	lw	gp,24(s8)
				printf("	%s -i in_file -o out_file \n", argv[0]);
     d20:	8fc200cc 	lw	v0,204(s8)
     d24:	8c420000 	lw	v0,0(v0)
     d28:	00402825 	move	a1,v0
     d2c:	8f828030 	lw	v0,-32720(gp)
     d30:	24441eb8 	addiu	a0,v0,7864
     d34:	8f8280bc 	lw	v0,-32580(gp)
     d38:	0040c825 	move	t9,v0
     d3c:	0320f809 	jalr	t9
     d40:	00000000 	nop
     d44:	8fdc0018 	lw	gp,24(s8)
				printf("Options: \n");
     d48:	8f828030 	lw	v0,-32720(gp)
     d4c:	24441ed8 	addiu	a0,v0,7896
     d50:	8f828090 	lw	v0,-32624(gp)
     d54:	0040c825 	move	t9,v0
     d58:	0320f809 	jalr	t9
     d5c:	00000000 	nop
     d60:	8fdc0018 	lw	gp,24(s8)
				printf("	-V, --version  Print version and quit. \n");
     d64:	8f828030 	lw	v0,-32720(gp)
     d68:	24441ee4 	addiu	a0,v0,7908
     d6c:	8f828090 	lw	v0,-32624(gp)
     d70:	0040c825 	move	t9,v0
     d74:	0320f809 	jalr	t9
     d78:	00000000 	nop
     d7c:	8fdc0018 	lw	gp,24(s8)
				printf("	-h, --help     Print this information and quit. \n");
     d80:	8f828030 	lw	v0,-32720(gp)
     d84:	24441f10 	addiu	a0,v0,7952
     d88:	8f828090 	lw	v0,-32624(gp)
     d8c:	0040c825 	move	t9,v0
     d90:	0320f809 	jalr	t9
     d94:	00000000 	nop
     d98:	8fdc0018 	lw	gp,24(s8)
				printf("	-i, --input    Specify input stream/file, '-' for stdin. \n");
     d9c:	8f828030 	lw	v0,-32720(gp)
     da0:	24441f44 	addiu	a0,v0,8004
     da4:	8f828090 	lw	v0,-32624(gp)
     da8:	0040c825 	move	t9,v0
     dac:	0320f809 	jalr	t9
     db0:	00000000 	nop
     db4:	8fdc0018 	lw	gp,24(s8)
				printf("	-o, --output   Specify output stream/file, '-' for stdout. \n");
     db8:	8f828030 	lw	v0,-32720(gp)
     dbc:	24441f80 	addiu	a0,v0,8064
     dc0:	8f828090 	lw	v0,-32624(gp)
     dc4:	0040c825 	move	t9,v0
     dc8:	0320f809 	jalr	t9
     dcc:	00000000 	nop
     dd0:	8fdc0018 	lw	gp,24(s8)
				printf("Examples: \n");
     dd4:	8f828030 	lw	v0,-32720(gp)
     dd8:	24441fc0 	addiu	a0,v0,8128
     ddc:	8f828090 	lw	v0,-32624(gp)
     de0:	0040c825 	move	t9,v0
     de4:	0320f809 	jalr	t9
     de8:	00000000 	nop
     dec:	8fdc0018 	lw	gp,24(s8)
				printf("	tp1 < in.txt > out.txt \n");
     df0:	8f828030 	lw	v0,-32720(gp)
     df4:	24441fcc 	addiu	a0,v0,8140
     df8:	8f828090 	lw	v0,-32624(gp)
     dfc:	0040c825 	move	t9,v0
     e00:	0320f809 	jalr	t9
     e04:	00000000 	nop
     e08:	8fdc0018 	lw	gp,24(s8)
				printf("	cat in.txt | tp1 -i - > out.txt \n");
     e0c:	8f828030 	lw	v0,-32720(gp)
     e10:	24441fe8 	addiu	a0,v0,8168
     e14:	8f828090 	lw	v0,-32624(gp)
     e18:	0040c825 	move	t9,v0
     e1c:	0320f809 	jalr	t9
     e20:	00000000 	nop
     e24:	8fdc0018 	lw	gp,24(s8)
				return SALIDA_EXITOSA;
     e28:	00001025 	move	v0,zero
     e2c:	1000020b 	b	165c <main+0xaec>
     e30:	00000000 	nop
			case 'i':
				if(strcmp(optarg, "-") != 0){
     e34:	8f828050 	lw	v0,-32688(gp)
     e38:	8c430000 	lw	v1,0(v0)
     e3c:	8f828030 	lw	v0,-32720(gp)
     e40:	2445200c 	addiu	a1,v0,8204
     e44:	00602025 	move	a0,v1
     e48:	8f8280c8 	lw	v0,-32568(gp)
     e4c:	0040c825 	move	t9,v0
     e50:	0320f809 	jalr	t9
     e54:	00000000 	nop
     e58:	8fdc0018 	lw	gp,24(s8)
     e5c:	1040006d 	beqz	v0,1014 <main+0x4a4>
     e60:	00000000 	nop
					inputFileOriginal = fopen(optarg, "r");
     e64:	8f828050 	lw	v0,-32688(gp)
     e68:	8c430000 	lw	v1,0(v0)
     e6c:	8f828030 	lw	v0,-32720(gp)
     e70:	24452010 	addiu	a1,v0,8208
     e74:	00602025 	move	a0,v1
     e78:	8f8280b4 	lw	v0,-32588(gp)
     e7c:	0040c825 	move	t9,v0
     e80:	0320f809 	jalr	t9
     e84:	00000000 	nop
     e88:	8fdc0018 	lw	gp,24(s8)
     e8c:	afc20020 	sw	v0,32(s8)
					if(inputFileOriginal == NULL) {
     e90:	8fc20020 	lw	v0,32(s8)
     e94:	1440005f 	bnez	v0,1014 <main+0x4a4>
     e98:	00000000 	nop
						fprintf(stderr, "Error archivo entrada: %s\n", strerror(errno));
     e9c:	8f8280b0 	lw	v0,-32592(gp)
     ea0:	8c500000 	lw	s0,0(v0)
     ea4:	8f828070 	lw	v0,-32656(gp)
     ea8:	0040c825 	move	t9,v0
     eac:	0320f809 	jalr	t9
     eb0:	00000000 	nop
     eb4:	8fdc0018 	lw	gp,24(s8)
     eb8:	8c420000 	lw	v0,0(v0)
     ebc:	00402025 	move	a0,v0
     ec0:	8f82808c 	lw	v0,-32628(gp)
     ec4:	0040c825 	move	t9,v0
     ec8:	0320f809 	jalr	t9
     ecc:	00000000 	nop
     ed0:	8fdc0018 	lw	gp,24(s8)
     ed4:	00403025 	move	a2,v0
     ed8:	8f828030 	lw	v0,-32720(gp)
     edc:	24452014 	addiu	a1,v0,8212
     ee0:	02002025 	move	a0,s0
     ee4:	8f82807c 	lw	v0,-32644(gp)
     ee8:	0040c825 	move	t9,v0
     eec:	0320f809 	jalr	t9
     ef0:	00000000 	nop
     ef4:	8fdc0018 	lw	gp,24(s8)
						return ERROR;
     ef8:	2402ffff 	li	v0,-1
     efc:	100001d7 	b	165c <main+0xaec>
     f00:	00000000 	nop
					}
				}
				break;
			case 'o':
				if(strcmp(optarg, "-") != 0){
     f04:	8f828050 	lw	v0,-32688(gp)
     f08:	8c430000 	lw	v1,0(v0)
     f0c:	8f828030 	lw	v0,-32720(gp)
     f10:	2445200c 	addiu	a1,v0,8204
     f14:	00602025 	move	a0,v1
     f18:	8f8280c8 	lw	v0,-32568(gp)
     f1c:	0040c825 	move	t9,v0
     f20:	0320f809 	jalr	t9
     f24:	00000000 	nop
     f28:	8fdc0018 	lw	gp,24(s8)
     f2c:	10400039 	beqz	v0,1014 <main+0x4a4>
     f30:	00000000 	nop
					outputFile = fopen(optarg, "w+");
     f34:	8f828050 	lw	v0,-32688(gp)
     f38:	8c430000 	lw	v1,0(v0)
     f3c:	8f828030 	lw	v0,-32720(gp)
     f40:	24452030 	addiu	a1,v0,8240
     f44:	00602025 	move	a0,v1
     f48:	8f8280b4 	lw	v0,-32588(gp)
     f4c:	0040c825 	move	t9,v0
     f50:	0320f809 	jalr	t9
     f54:	00000000 	nop
     f58:	8fdc0018 	lw	gp,24(s8)
     f5c:	afc20024 	sw	v0,36(s8)
					if(outputFile == NULL) {
     f60:	8fc20024 	lw	v0,36(s8)
     f64:	1440002b 	bnez	v0,1014 <main+0x4a4>
     f68:	00000000 	nop
						fprintf(stderr, "Error archivo salida: %s\n", strerror(errno));
     f6c:	8f8280b0 	lw	v0,-32592(gp)
     f70:	8c500000 	lw	s0,0(v0)
     f74:	8f828070 	lw	v0,-32656(gp)
     f78:	0040c825 	move	t9,v0
     f7c:	0320f809 	jalr	t9
     f80:	00000000 	nop
     f84:	8fdc0018 	lw	gp,24(s8)
     f88:	8c420000 	lw	v0,0(v0)
     f8c:	00402025 	move	a0,v0
     f90:	8f82808c 	lw	v0,-32628(gp)
     f94:	0040c825 	move	t9,v0
     f98:	0320f809 	jalr	t9
     f9c:	00000000 	nop
     fa0:	8fdc0018 	lw	gp,24(s8)
     fa4:	00403025 	move	a2,v0
     fa8:	8f828030 	lw	v0,-32720(gp)
     fac:	24452034 	addiu	a1,v0,8244
     fb0:	02002025 	move	a0,s0
     fb4:	8f82807c 	lw	v0,-32644(gp)
     fb8:	0040c825 	move	t9,v0
     fbc:	0320f809 	jalr	t9
     fc0:	00000000 	nop
     fc4:	8fdc0018 	lw	gp,24(s8)
						return ERROR;
     fc8:	2402ffff 	li	v0,-1
     fcc:	100001a3 	b	165c <main+0xaec>
     fd0:	00000000 	nop
					}
				}
				break;
			default:
				fprintf(stderr, "Error: Argumento invalido \n");
     fd4:	8f8280b0 	lw	v0,-32592(gp)
     fd8:	8c420000 	lw	v0,0(v0)
     fdc:	00403825 	move	a3,v0
     fe0:	2406001b 	li	a2,27
     fe4:	24050001 	li	a1,1
     fe8:	8f828030 	lw	v0,-32720(gp)
     fec:	24442050 	addiu	a0,v0,8272
     ff0:	8f82809c 	lw	v0,-32612(gp)
     ff4:	0040c825 	move	t9,v0
     ff8:	0320f809 	jalr	t9
     ffc:	00000000 	nop
    1000:	8fdc0018 	lw	gp,24(s8)
				abort();
    1004:	8f828054 	lw	v0,-32684(gp)
    1008:	0040c825 	move	t9,v0
    100c:	0320f809 	jalr	t9
    1010:	00000000 	nop
	while ((option = getopt_long(argc, argv, short_opt, long_opt, NULL)) != -1) {
    1014:	27c20060 	addiu	v0,s8,96
    1018:	afa00010 	sw	zero,16(sp)
    101c:	00403825 	move	a3,v0
    1020:	8fc60044 	lw	a2,68(s8)
    1024:	8fc500cc 	lw	a1,204(s8)
    1028:	8fc400c8 	lw	a0,200(s8)
    102c:	8f828084 	lw	v0,-32636(gp)
    1030:	0040c825 	move	t9,v0
    1034:	0320f809 	jalr	t9
    1038:	00000000 	nop
    103c:	8fdc0018 	lw	gp,24(s8)
    1040:	afc20040 	sw	v0,64(s8)
    1044:	8fc30040 	lw	v1,64(s8)
    1048:	2402ffff 	li	v0,-1
    104c:	1462feed 	bne	v1,v0,c04 <main+0x94>
    1050:	00000000 	nop
		}
	}

	if (argc == 2) {
    1054:	8fc300c8 	lw	v1,200(s8)
    1058:	24020002 	li	v0,2
    105c:	14620010 	bne	v1,v0,10a0 <main+0x530>
    1060:	00000000 	nop
		fprintf(stderr, "Error: Argumento invalido \n");
    1064:	8f8280b0 	lw	v0,-32592(gp)
    1068:	8c420000 	lw	v0,0(v0)
    106c:	00403825 	move	a3,v0
    1070:	2406001b 	li	a2,27
    1074:	24050001 	li	a1,1
    1078:	8f828030 	lw	v0,-32720(gp)
    107c:	24442050 	addiu	a0,v0,8272
    1080:	8f82809c 	lw	v0,-32612(gp)
    1084:	0040c825 	move	t9,v0
    1088:	0320f809 	jalr	t9
    108c:	00000000 	nop
    1090:	8fdc0018 	lw	gp,24(s8)
		return ERROR;
    1094:	2402ffff 	li	v0,-1
    1098:	10000170 	b	165c <main+0xaec>
    109c:	00000000 	nop
	}

	if(inputFileOriginal == NULL) {
    10a0:	8fc20020 	lw	v0,32(s8)
    10a4:	14400004 	bnez	v0,10b8 <main+0x548>
    10a8:	00000000 	nop
		inputFileOriginal = stdin;
    10ac:	8f828078 	lw	v0,-32648(gp)
    10b0:	8c420000 	lw	v0,0(v0)
    10b4:	afc20020 	sw	v0,32(s8)
	}

	if(outputFile == NULL) {
    10b8:	8fc20024 	lw	v0,36(s8)
    10bc:	1440000d 	bnez	v0,10f4 <main+0x584>
    10c0:	00000000 	nop
		outputFile = stdout;
    10c4:	8f828068 	lw	v0,-32664(gp)
    10c8:	8c420000 	lw	v0,0(v0)
    10cc:	afc20024 	sw	v0,36(s8)
	}

	//Corregido bug de entrada estandar por tuberia
	int data;
	while ((data=fgetc(inputFileOriginal)) != EOF ) {
    10d0:	10000008 	b	10f4 <main+0x584>
    10d4:	00000000 	nop
		fputc(data,inputFile );
    10d8:	8fc50048 	lw	a1,72(s8)
    10dc:	8fc4004c 	lw	a0,76(s8)
    10e0:	8f828064 	lw	v0,-32668(gp)
    10e4:	0040c825 	move	t9,v0
    10e8:	0320f809 	jalr	t9
    10ec:	00000000 	nop
    10f0:	8fdc0018 	lw	gp,24(s8)
	while ((data=fgetc(inputFileOriginal)) != EOF ) {
    10f4:	8fc40020 	lw	a0,32(s8)
    10f8:	8f82806c 	lw	v0,-32660(gp)
    10fc:	0040c825 	move	t9,v0
    1100:	0320f809 	jalr	t9
    1104:	00000000 	nop
    1108:	8fdc0018 	lw	gp,24(s8)
    110c:	afc2004c 	sw	v0,76(s8)
    1110:	8fc3004c 	lw	v1,76(s8)
    1114:	2402ffff 	li	v0,-1
    1118:	1462ffef 	bne	v1,v0,10d8 <main+0x568>
    111c:	00000000 	nop
	}
	rewind(inputFile);
    1120:	8fc40048 	lw	a0,72(s8)
    1124:	8f8280a4 	lw	v0,-32604(gp)
    1128:	0040c825 	move	t9,v0
    112c:	0320f809 	jalr	t9
    1130:	00000000 	nop
    1134:	8fdc0018 	lw	gp,24(s8)
	int caracterAnterior, caracter, numero, lineaConError, caracterAntAnt;
	long inicio, backup;
	size_t cantDePalabras;

	//Leo linea por linea
	while (fgetc(inputFile)!=EOF){
    1138:	100000f5 	b	1510 <main+0x9a0>
    113c:	00000000 	nop
		//El primer fgetc solo es para ver si no llegue al final del archivo
		//fseek retrocede el puntero un lugar para volver a dejarlo en el primer lugar
		fseek(inputFile,-1,SEEK_CUR);
    1140:	24060001 	li	a2,1
    1144:	2405ffff 	li	a1,-1
    1148:	8fc40048 	lw	a0,72(s8)
    114c:	8f8280a0 	lw	v0,-32608(gp)
    1150:	0040c825 	move	t9,v0
    1154:	0320f809 	jalr	t9
    1158:	00000000 	nop
    115c:	8fdc0018 	lw	gp,24(s8)

		//Con ftell guardo el puntero al inicio de la linea porque voy a recorrer la linea dos veces
		//La 1ra vez la recorro para contar la cantidad de palabras y chequear que los caracteres son validos
		//La 2da vez va a ser para guardar los datos en el vector de enteros
		inicio=ftell(inputFile);
    1160:	8fc40048 	lw	a0,72(s8)
    1164:	8f828074 	lw	v0,-32652(gp)
    1168:	0040c825 	move	t9,v0
    116c:	0320f809 	jalr	t9
    1170:	00000000 	nop
    1174:	8fdc0018 	lw	gp,24(s8)
    1178:	afc20050 	sw	v0,80(s8)

		lineaConError=0;
    117c:	afc0002c 	sw	zero,44(s8)
 		cantDePalabras = 0;
    1180:	afc00034 	sw	zero,52(s8)
		caracterAnterior = ' ';
    1184:	24020020 	li	v0,32
    1188:	afc20028 	sw	v0,40(s8)
		caracterAntAnt = ' ';
    118c:	24020020 	li	v0,32
    1190:	afc20030 	sw	v0,48(s8)

 		while((caracter=fgetc(inputFile))!='\n' && caracter!=EOF){
    1194:	1000003a 	b	1280 <main+0x710>
    1198:	00000000 	nop
			//Los caracteres validos son los numeros del 0 al 9 (en ascci van del 48 al 57), los espacios y los signos + y - en cierto orden
			if (!(caracter>47 && caracter<58) && caracter!=' ' && !((caracter=='+' || caracter=='-') && caracterAnterior==' ') || (caracter==' ' && (caracterAnterior=='+' || caracterAnterior=='-') && caracterAntAnt==' '))
    119c:	8fc20054 	lw	v0,84(s8)
    11a0:	28420030 	slti	v0,v0,48
    11a4:	14400005 	bnez	v0,11bc <main+0x64c>
    11a8:	00000000 	nop
    11ac:	8fc20054 	lw	v0,84(s8)
    11b0:	2842003a 	slti	v0,v0,58
    11b4:	14400011 	bnez	v0,11fc <main+0x68c>
    11b8:	00000000 	nop
    11bc:	8fc30054 	lw	v1,84(s8)
    11c0:	24020020 	li	v0,32
    11c4:	1062000d 	beq	v1,v0,11fc <main+0x68c>
    11c8:	00000000 	nop
    11cc:	8fc30054 	lw	v1,84(s8)
    11d0:	2402002b 	li	v0,43
    11d4:	10620005 	beq	v1,v0,11ec <main+0x67c>
    11d8:	00000000 	nop
    11dc:	8fc30054 	lw	v1,84(s8)
    11e0:	2402002d 	li	v0,45
    11e4:	14620015 	bne	v1,v0,123c <main+0x6cc>
    11e8:	00000000 	nop
    11ec:	8fc30028 	lw	v1,40(s8)
    11f0:	24020020 	li	v0,32
    11f4:	14620011 	bne	v1,v0,123c <main+0x6cc>
    11f8:	00000000 	nop
    11fc:	8fc30054 	lw	v1,84(s8)
    1200:	24020020 	li	v0,32
    1204:	1462000f 	bne	v1,v0,1244 <main+0x6d4>
    1208:	00000000 	nop
    120c:	8fc30028 	lw	v1,40(s8)
    1210:	2402002b 	li	v0,43
    1214:	10620005 	beq	v1,v0,122c <main+0x6bc>
    1218:	00000000 	nop
    121c:	8fc30028 	lw	v1,40(s8)
    1220:	2402002d 	li	v0,45
    1224:	14620007 	bne	v1,v0,1244 <main+0x6d4>
    1228:	00000000 	nop
    122c:	8fc30030 	lw	v1,48(s8)
    1230:	24020020 	li	v0,32
    1234:	14620003 	bne	v1,v0,1244 <main+0x6d4>
    1238:	00000000 	nop
				lineaConError=1;
    123c:	24020001 	li	v0,1
    1240:	afc2002c 	sw	v0,44(s8)

			if ((caracterAnterior==' ') && (caracter!=' '))
    1244:	8fc30028 	lw	v1,40(s8)
    1248:	24020020 	li	v0,32
    124c:	14620008 	bne	v1,v0,1270 <main+0x700>
    1250:	00000000 	nop
    1254:	8fc30054 	lw	v1,84(s8)
    1258:	24020020 	li	v0,32
    125c:	10620004 	beq	v1,v0,1270 <main+0x700>
    1260:	00000000 	nop
				cantDePalabras++;
    1264:	8fc20034 	lw	v0,52(s8)
    1268:	24420001 	addiu	v0,v0,1
    126c:	afc20034 	sw	v0,52(s8)

			caracterAntAnt = caracterAnterior;
    1270:	8fc20028 	lw	v0,40(s8)
    1274:	afc20030 	sw	v0,48(s8)
			caracterAnterior = caracter;
    1278:	8fc20054 	lw	v0,84(s8)
    127c:	afc20028 	sw	v0,40(s8)
 		while((caracter=fgetc(inputFile))!='\n' && caracter!=EOF){
    1280:	8fc40048 	lw	a0,72(s8)
    1284:	8f82806c 	lw	v0,-32660(gp)
    1288:	0040c825 	move	t9,v0
    128c:	0320f809 	jalr	t9
    1290:	00000000 	nop
    1294:	8fdc0018 	lw	gp,24(s8)
    1298:	afc20054 	sw	v0,84(s8)
    129c:	8fc30054 	lw	v1,84(s8)
    12a0:	2402000a 	li	v0,10
    12a4:	10620005 	beq	v1,v0,12bc <main+0x74c>
    12a8:	00000000 	nop
    12ac:	8fc30054 	lw	v1,84(s8)
    12b0:	2402ffff 	li	v0,-1
    12b4:	1462ffb9 	bne	v1,v0,119c <main+0x62c>
    12b8:	00000000 	nop
		}

		//Un caso extra que no pude considerar en el while (cuando el ultimo caracter de la linea es un signo)
		if (caracterAnterior=='+' || caracterAnterior=='-')
    12bc:	8fc30028 	lw	v1,40(s8)
    12c0:	2402002b 	li	v0,43
    12c4:	10620005 	beq	v1,v0,12dc <main+0x76c>
    12c8:	00000000 	nop
    12cc:	8fc30028 	lw	v1,40(s8)
    12d0:	2402002d 	li	v0,45
    12d4:	14620003 	bne	v1,v0,12e4 <main+0x774>
    12d8:	00000000 	nop
			lineaConError=1;
    12dc:	24020001 	li	v0,1
    12e0:	afc2002c 	sw	v0,44(s8)

		if ((lineaConError==0) && (cantDePalabras>0)){
    12e4:	8fc2002c 	lw	v0,44(s8)
    12e8:	1440006c 	bnez	v0,149c <main+0x92c>
    12ec:	00000000 	nop
    12f0:	8fc20034 	lw	v0,52(s8)
    12f4:	10400069 	beqz	v0,149c <main+0x92c>
    12f8:	00000000 	nop
			backup=ftell(inputFile);
    12fc:	8fc40048 	lw	a0,72(s8)
    1300:	8f828074 	lw	v0,-32652(gp)
    1304:	0040c825 	move	t9,v0
    1308:	0320f809 	jalr	t9
    130c:	00000000 	nop
    1310:	8fdc0018 	lw	gp,24(s8)
    1314:	afc20058 	sw	v0,88(s8)
			fseek(inputFile,inicio,SEEK_SET);
    1318:	00003025 	move	a2,zero
    131c:	8fc50050 	lw	a1,80(s8)
    1320:	8fc40048 	lw	a0,72(s8)
    1324:	8f8280a0 	lw	v0,-32608(gp)
    1328:	0040c825 	move	t9,v0
    132c:	0320f809 	jalr	t9
    1330:	00000000 	nop
    1334:	8fdc0018 	lw	gp,24(s8)
			int* vector = (int*) malloc(cantDePalabras*sizeof(int));
    1338:	8fc20034 	lw	v0,52(s8)
    133c:	00021080 	sll	v0,v0,0x2
    1340:	00402025 	move	a0,v0
    1344:	8f828094 	lw	v0,-32620(gp)
    1348:	0040c825 	move	t9,v0
    134c:	0320f809 	jalr	t9
    1350:	00000000 	nop
    1354:	8fdc0018 	lw	gp,24(s8)
    1358:	afc2005c 	sw	v0,92(s8)
			for (int i=0;i<cantDePalabras;i++){
    135c:	afc00038 	sw	zero,56(s8)
    1360:	10000014 	b	13b4 <main+0x844>
    1364:	00000000 	nop
				fscanf(inputFile,"%d",&numero);
    1368:	27c200b0 	addiu	v0,s8,176
    136c:	00403025 	move	a2,v0
    1370:	8f828030 	lw	v0,-32720(gp)
    1374:	2445206c 	addiu	a1,v0,8300
    1378:	8fc40048 	lw	a0,72(s8)
    137c:	8f8280b8 	lw	v0,-32584(gp)
    1380:	0040c825 	move	t9,v0
    1384:	0320f809 	jalr	t9
    1388:	00000000 	nop
    138c:	8fdc0018 	lw	gp,24(s8)
				vector[i] = numero;
    1390:	8fc20038 	lw	v0,56(s8)
    1394:	00021080 	sll	v0,v0,0x2
    1398:	8fc3005c 	lw	v1,92(s8)
    139c:	00621021 	addu	v0,v1,v0
    13a0:	8fc300b0 	lw	v1,176(s8)
    13a4:	ac430000 	sw	v1,0(v0)
			for (int i=0;i<cantDePalabras;i++){
    13a8:	8fc20038 	lw	v0,56(s8)
    13ac:	24420001 	addiu	v0,v0,1
    13b0:	afc20038 	sw	v0,56(s8)
    13b4:	8fc30038 	lw	v1,56(s8)
    13b8:	8fc20034 	lw	v0,52(s8)
    13bc:	0062102b 	sltu	v0,v1,v0
    13c0:	1440ffe9 	bnez	v0,1368 <main+0x7f8>
    13c4:	00000000 	nop
 			}

			merge_sort(vector, cantDePalabras);
    13c8:	8fc50034 	lw	a1,52(s8)
    13cc:	8fc4005c 	lw	a0,92(s8)
    13d0:	8f828034 	lw	v0,-32716(gp)
    13d4:	0040c825 	move	t9,v0
    13d8:	041100a9 	bal	1680 <merge_sort>
    13dc:	00000000 	nop
    13e0:	8fdc0018 	lw	gp,24(s8)

			//Imprimir vector
			for (int i=0;i<cantDePalabras;i++)
    13e4:	afc0003c 	sw	zero,60(s8)
    13e8:	10000012 	b	1434 <main+0x8c4>
    13ec:	00000000 	nop
				fprintf(outputFile, "%d ", vector[i]);
    13f0:	8fc2003c 	lw	v0,60(s8)
    13f4:	00021080 	sll	v0,v0,0x2
    13f8:	8fc3005c 	lw	v1,92(s8)
    13fc:	00621021 	addu	v0,v1,v0
    1400:	8c420000 	lw	v0,0(v0)
    1404:	00403025 	move	a2,v0
    1408:	8f828030 	lw	v0,-32720(gp)
    140c:	24452070 	addiu	a1,v0,8304
    1410:	8fc40024 	lw	a0,36(s8)
    1414:	8f82807c 	lw	v0,-32644(gp)
    1418:	0040c825 	move	t9,v0
    141c:	0320f809 	jalr	t9
    1420:	00000000 	nop
    1424:	8fdc0018 	lw	gp,24(s8)
			for (int i=0;i<cantDePalabras;i++)
    1428:	8fc2003c 	lw	v0,60(s8)
    142c:	24420001 	addiu	v0,v0,1
    1430:	afc2003c 	sw	v0,60(s8)
    1434:	8fc3003c 	lw	v1,60(s8)
    1438:	8fc20034 	lw	v0,52(s8)
    143c:	0062102b 	sltu	v0,v1,v0
    1440:	1440ffeb 	bnez	v0,13f0 <main+0x880>
    1444:	00000000 	nop
			fprintf(outputFile, "\n");
    1448:	8fc50024 	lw	a1,36(s8)
    144c:	2404000a 	li	a0,10
    1450:	8f828064 	lw	v0,-32668(gp)
    1454:	0040c825 	move	t9,v0
    1458:	0320f809 	jalr	t9
    145c:	00000000 	nop
    1460:	8fdc0018 	lw	gp,24(s8)
			free(vector);
    1464:	8fc4005c 	lw	a0,92(s8)
    1468:	8f8280ac 	lw	v0,-32596(gp)
    146c:	0040c825 	move	t9,v0
    1470:	0320f809 	jalr	t9
    1474:	00000000 	nop
    1478:	8fdc0018 	lw	gp,24(s8)
			fseek(inputFile,backup,SEEK_SET);
    147c:	00003025 	move	a2,zero
    1480:	8fc50058 	lw	a1,88(s8)
    1484:	8fc40048 	lw	a0,72(s8)
    1488:	8f8280a0 	lw	v0,-32608(gp)
    148c:	0040c825 	move	t9,v0
    1490:	0320f809 	jalr	t9
    1494:	00000000 	nop
    1498:	8fdc0018 	lw	gp,24(s8)
		}

		if (lineaConError==1){
    149c:	8fc3002c 	lw	v1,44(s8)
    14a0:	24020001 	li	v0,1
    14a4:	14620010 	bne	v1,v0,14e8 <main+0x978>
    14a8:	00000000 	nop
			fprintf(stderr, "Error: Linea con caracter invalido \n");
    14ac:	8f8280b0 	lw	v0,-32592(gp)
    14b0:	8c420000 	lw	v0,0(v0)
    14b4:	00403825 	move	a3,v0
    14b8:	24060024 	li	a2,36
    14bc:	24050001 	li	a1,1
    14c0:	8f828030 	lw	v0,-32720(gp)
    14c4:	24442074 	addiu	a0,v0,8308
    14c8:	8f82809c 	lw	v0,-32612(gp)
    14cc:	0040c825 	move	t9,v0
    14d0:	0320f809 	jalr	t9
    14d4:	00000000 	nop
    14d8:	8fdc0018 	lw	gp,24(s8)
			return ERROR;
    14dc:	2402ffff 	li	v0,-1
    14e0:	1000005e 	b	165c <main+0xaec>
    14e4:	00000000 	nop
		}
		if (cantDePalabras==0){
    14e8:	8fc20034 	lw	v0,52(s8)
    14ec:	14400008 	bnez	v0,1510 <main+0x9a0>
    14f0:	00000000 	nop
			fprintf(outputFile, "\n");
    14f4:	8fc50024 	lw	a1,36(s8)
    14f8:	2404000a 	li	a0,10
    14fc:	8f828064 	lw	v0,-32668(gp)
    1500:	0040c825 	move	t9,v0
    1504:	0320f809 	jalr	t9
    1508:	00000000 	nop
    150c:	8fdc0018 	lw	gp,24(s8)
	while (fgetc(inputFile)!=EOF){
    1510:	8fc40048 	lw	a0,72(s8)
    1514:	8f82806c 	lw	v0,-32660(gp)
    1518:	0040c825 	move	t9,v0
    151c:	0320f809 	jalr	t9
    1520:	00000000 	nop
    1524:	8fdc0018 	lw	gp,24(s8)
    1528:	00401825 	move	v1,v0
    152c:	2402ffff 	li	v0,-1
    1530:	1462ff03 	bne	v1,v0,1140 <main+0x5d0>
    1534:	00000000 	nop





	if(fclose(inputFile)==EOF){
    1538:	8fc40048 	lw	a0,72(s8)
    153c:	8f82805c 	lw	v0,-32676(gp)
    1540:	0040c825 	move	t9,v0
    1544:	0320f809 	jalr	t9
    1548:	00000000 	nop
    154c:	8fdc0018 	lw	gp,24(s8)
    1550:	00401825 	move	v1,v0
    1554:	2402ffff 	li	v0,-1
    1558:	1462001b 	bne	v1,v0,15c8 <main+0xa58>
    155c:	00000000 	nop
		fprintf(stderr, "Error fclose: %s\n", strerror( errno ));
    1560:	8f8280b0 	lw	v0,-32592(gp)
    1564:	8c500000 	lw	s0,0(v0)
    1568:	8f828070 	lw	v0,-32656(gp)
    156c:	0040c825 	move	t9,v0
    1570:	0320f809 	jalr	t9
    1574:	00000000 	nop
    1578:	8fdc0018 	lw	gp,24(s8)
    157c:	8c420000 	lw	v0,0(v0)
    1580:	00402025 	move	a0,v0
    1584:	8f82808c 	lw	v0,-32628(gp)
    1588:	0040c825 	move	t9,v0
    158c:	0320f809 	jalr	t9
    1590:	00000000 	nop
    1594:	8fdc0018 	lw	gp,24(s8)
    1598:	00403025 	move	a2,v0
    159c:	8f828030 	lw	v0,-32720(gp)
    15a0:	2445209c 	addiu	a1,v0,8348
    15a4:	02002025 	move	a0,s0
    15a8:	8f82807c 	lw	v0,-32644(gp)
    15ac:	0040c825 	move	t9,v0
    15b0:	0320f809 	jalr	t9
    15b4:	00000000 	nop
    15b8:	8fdc0018 	lw	gp,24(s8)
		return ERROR;
    15bc:	2402ffff 	li	v0,-1
    15c0:	10000026 	b	165c <main+0xaec>
    15c4:	00000000 	nop
	}

	if(fclose(outputFile)==EOF){
    15c8:	8fc40024 	lw	a0,36(s8)
    15cc:	8f82805c 	lw	v0,-32676(gp)
    15d0:	0040c825 	move	t9,v0
    15d4:	0320f809 	jalr	t9
    15d8:	00000000 	nop
    15dc:	8fdc0018 	lw	gp,24(s8)
    15e0:	00401825 	move	v1,v0
    15e4:	2402ffff 	li	v0,-1
    15e8:	1462001b 	bne	v1,v0,1658 <main+0xae8>
    15ec:	00000000 	nop
		fprintf(stderr, "Error fclose: %s\n", strerror( errno ));
    15f0:	8f8280b0 	lw	v0,-32592(gp)
    15f4:	8c500000 	lw	s0,0(v0)
    15f8:	8f828070 	lw	v0,-32656(gp)
    15fc:	0040c825 	move	t9,v0
    1600:	0320f809 	jalr	t9
    1604:	00000000 	nop
    1608:	8fdc0018 	lw	gp,24(s8)
    160c:	8c420000 	lw	v0,0(v0)
    1610:	00402025 	move	a0,v0
    1614:	8f82808c 	lw	v0,-32628(gp)
    1618:	0040c825 	move	t9,v0
    161c:	0320f809 	jalr	t9
    1620:	00000000 	nop
    1624:	8fdc0018 	lw	gp,24(s8)
    1628:	00403025 	move	a2,v0
    162c:	8f828030 	lw	v0,-32720(gp)
    1630:	2445209c 	addiu	a1,v0,8348
    1634:	02002025 	move	a0,s0
    1638:	8f82807c 	lw	v0,-32644(gp)
    163c:	0040c825 	move	t9,v0
    1640:	0320f809 	jalr	t9
    1644:	00000000 	nop
    1648:	8fdc0018 	lw	gp,24(s8)
		return ERROR;
    164c:	2402ffff 	li	v0,-1
    1650:	10000002 	b	165c <main+0xaec>
    1654:	00000000 	nop
	}
	
	return SALIDA_EXITOSA;
    1658:	00001025 	move	v0,zero
}
    165c:	03c0e825 	move	sp,s8
    1660:	8fbf00c4 	lw	ra,196(sp)
    1664:	8fbe00c0 	lw	s8,192(sp)
    1668:	8fb000bc 	lw	s0,188(sp)
    166c:	27bd00c8 	addiu	sp,sp,200
    1670:	03e00008 	jr	ra
    1674:	00000000 	nop
	...

00001680 <merge_sort>:
#include <stdlib.h>
#include "merge_sort.h"
#include "mymalloc.h"

void merge_sort (int* vector, size_t cantDePalabras) {
    1680:	3c1c0002 	lui	gp,0x2
    1684:	279c8ac0 	addiu	gp,gp,-30016
    1688:	0399e021 	addu	gp,gp,t9
    168c:	27bdffb8 	addiu	sp,sp,-72
    1690:	afbf0044 	sw	ra,68(sp)
    1694:	afbe0040 	sw	s8,64(sp)
    1698:	03a0f025 	move	s8,sp
    169c:	afbc0010 	sw	gp,16(sp)
    16a0:	afc40048 	sw	a0,72(s8)
    16a4:	afc5004c 	sw	a1,76(s8)
	size_t middle;
	if (cantDePalabras > 1) {
    16a8:	8fc2004c 	lw	v0,76(s8)
    16ac:	2c420002 	sltiu	v0,v0,2
    16b0:	144000d1 	bnez	v0,19f8 <merge_sort+0x378>
    16b4:	00000000 	nop
		middle = cantDePalabras/2;
    16b8:	8fc2004c 	lw	v0,76(s8)
    16bc:	00021042 	srl	v0,v0,0x1
    16c0:	afc2002c 	sw	v0,44(s8)
		int* left  = (int*) malloc(middle*sizeof(int));
    16c4:	8fc2002c 	lw	v0,44(s8)
    16c8:	00021080 	sll	v0,v0,0x2
    16cc:	00402025 	move	a0,v0
    16d0:	8f828094 	lw	v0,-32620(gp)
    16d4:	0040c825 	move	t9,v0
    16d8:	0320f809 	jalr	t9
    16dc:	00000000 	nop
    16e0:	8fdc0010 	lw	gp,16(s8)
    16e4:	afc20030 	sw	v0,48(s8)
		int* right = (int*) malloc((cantDePalabras-middle)*sizeof(int));
    16e8:	8fc3004c 	lw	v1,76(s8)
    16ec:	8fc2002c 	lw	v0,44(s8)
    16f0:	00621023 	subu	v0,v1,v0
    16f4:	00021080 	sll	v0,v0,0x2
    16f8:	00402025 	move	a0,v0
    16fc:	8f828094 	lw	v0,-32620(gp)
    1700:	0040c825 	move	t9,v0
    1704:	0320f809 	jalr	t9
    1708:	00000000 	nop
    170c:	8fdc0010 	lw	gp,16(s8)
    1710:	afc20034 	sw	v0,52(s8)

		for (int i=0; i<middle; i++) {
    1714:	afc00018 	sw	zero,24(s8)
    1718:	1000000e 	b	1754 <merge_sort+0xd4>
    171c:	00000000 	nop
			left[i] = vector[i];
    1720:	8fc20018 	lw	v0,24(s8)
    1724:	00021080 	sll	v0,v0,0x2
    1728:	8fc30030 	lw	v1,48(s8)
    172c:	00621021 	addu	v0,v1,v0
    1730:	8fc30018 	lw	v1,24(s8)
    1734:	00031880 	sll	v1,v1,0x2
    1738:	8fc40048 	lw	a0,72(s8)
    173c:	00831821 	addu	v1,a0,v1
    1740:	8c630000 	lw	v1,0(v1)
    1744:	ac430000 	sw	v1,0(v0)
		for (int i=0; i<middle; i++) {
    1748:	8fc20018 	lw	v0,24(s8)
    174c:	24420001 	addiu	v0,v0,1
    1750:	afc20018 	sw	v0,24(s8)
    1754:	8fc30018 	lw	v1,24(s8)
    1758:	8fc2002c 	lw	v0,44(s8)
    175c:	0062102b 	sltu	v0,v1,v0
    1760:	1440ffef 	bnez	v0,1720 <merge_sort+0xa0>
    1764:	00000000 	nop
		}

		for (int j=middle; j<cantDePalabras; j++) {
    1768:	8fc2002c 	lw	v0,44(s8)
    176c:	afc2001c 	sw	v0,28(s8)
    1770:	10000010 	b	17b4 <merge_sort+0x134>
    1774:	00000000 	nop
			right[j-middle]=vector[j];
    1778:	8fc3001c 	lw	v1,28(s8)
    177c:	8fc2002c 	lw	v0,44(s8)
    1780:	00621023 	subu	v0,v1,v0
    1784:	00021080 	sll	v0,v0,0x2
    1788:	8fc30034 	lw	v1,52(s8)
    178c:	00621021 	addu	v0,v1,v0
    1790:	8fc3001c 	lw	v1,28(s8)
    1794:	00031880 	sll	v1,v1,0x2
    1798:	8fc40048 	lw	a0,72(s8)
    179c:	00831821 	addu	v1,a0,v1
    17a0:	8c630000 	lw	v1,0(v1)
    17a4:	ac430000 	sw	v1,0(v0)
		for (int j=middle; j<cantDePalabras; j++) {
    17a8:	8fc2001c 	lw	v0,28(s8)
    17ac:	24420001 	addiu	v0,v0,1
    17b0:	afc2001c 	sw	v0,28(s8)
    17b4:	8fc3001c 	lw	v1,28(s8)
    17b8:	8fc2004c 	lw	v0,76(s8)
    17bc:	0062102b 	sltu	v0,v1,v0
    17c0:	1440ffed 	bnez	v0,1778 <merge_sort+0xf8>
    17c4:	00000000 	nop
		}

		merge_sort(left,middle);
    17c8:	8fc5002c 	lw	a1,44(s8)
    17cc:	8fc40030 	lw	a0,48(s8)
    17d0:	8f828034 	lw	v0,-32716(gp)
    17d4:	0040c825 	move	t9,v0
    17d8:	0411ffa9 	bal	1680 <merge_sort>
    17dc:	00000000 	nop
    17e0:	8fdc0010 	lw	gp,16(s8)
		merge_sort(right,(cantDePalabras - middle));
    17e4:	8fc3004c 	lw	v1,76(s8)
    17e8:	8fc2002c 	lw	v0,44(s8)
    17ec:	00621023 	subu	v0,v1,v0
    17f0:	00402825 	move	a1,v0
    17f4:	8fc40034 	lw	a0,52(s8)
    17f8:	8f828034 	lw	v0,-32716(gp)
    17fc:	0040c825 	move	t9,v0
    1800:	0411ff9f 	bal	1680 <merge_sort>
    1804:	00000000 	nop
    1808:	8fdc0010 	lw	gp,16(s8)
		//merge(vector, left, right, middle, (cantDePalabras-middle));
		int i = 0; int j = 0; int k = 0;
    180c:	afc00020 	sw	zero,32(s8)
    1810:	afc00024 	sw	zero,36(s8)
    1814:	afc00028 	sw	zero,40(s8)
		size_t rightLen = cantDePalabras-middle;
    1818:	8fc3004c 	lw	v1,76(s8)
    181c:	8fc2002c 	lw	v0,44(s8)
    1820:	00621023 	subu	v0,v1,v0
    1824:	afc20038 	sw	v0,56(s8)
		size_t leftLen = middle;
    1828:	8fc2002c 	lw	v0,44(s8)
    182c:	afc2003c 	sw	v0,60(s8)
		while (leftLen > i && rightLen > j) {
    1830:	1000002d 	b	18e8 <merge_sort+0x268>
    1834:	00000000 	nop
			if (left[i] <= right[j]) {
    1838:	8fc20020 	lw	v0,32(s8)
    183c:	00021080 	sll	v0,v0,0x2
    1840:	8fc30030 	lw	v1,48(s8)
    1844:	00621021 	addu	v0,v1,v0
    1848:	8c430000 	lw	v1,0(v0)
    184c:	8fc20024 	lw	v0,36(s8)
    1850:	00021080 	sll	v0,v0,0x2
    1854:	8fc40034 	lw	a0,52(s8)
    1858:	00821021 	addu	v0,a0,v0
    185c:	8c420000 	lw	v0,0(v0)
    1860:	0043102a 	slt	v0,v0,v1
    1864:	14400010 	bnez	v0,18a8 <merge_sort+0x228>
    1868:	00000000 	nop
				vector[k] = left[i];
    186c:	8fc20028 	lw	v0,40(s8)
    1870:	00021080 	sll	v0,v0,0x2
    1874:	8fc30048 	lw	v1,72(s8)
    1878:	00621021 	addu	v0,v1,v0
    187c:	8fc30020 	lw	v1,32(s8)
    1880:	00031880 	sll	v1,v1,0x2
    1884:	8fc40030 	lw	a0,48(s8)
    1888:	00831821 	addu	v1,a0,v1
    188c:	8c630000 	lw	v1,0(v1)
    1890:	ac430000 	sw	v1,0(v0)
				i++;
    1894:	8fc20020 	lw	v0,32(s8)
    1898:	24420001 	addiu	v0,v0,1
    189c:	afc20020 	sw	v0,32(s8)
    18a0:	1000000e 	b	18dc <merge_sort+0x25c>
    18a4:	00000000 	nop
			} else {
				vector[k] = right[j];
    18a8:	8fc20028 	lw	v0,40(s8)
    18ac:	00021080 	sll	v0,v0,0x2
    18b0:	8fc30048 	lw	v1,72(s8)
    18b4:	00621021 	addu	v0,v1,v0
    18b8:	8fc30024 	lw	v1,36(s8)
    18bc:	00031880 	sll	v1,v1,0x2
    18c0:	8fc40034 	lw	a0,52(s8)
    18c4:	00831821 	addu	v1,a0,v1
    18c8:	8c630000 	lw	v1,0(v1)
    18cc:	ac430000 	sw	v1,0(v0)
				j++;
    18d0:	8fc20024 	lw	v0,36(s8)
    18d4:	24420001 	addiu	v0,v0,1
    18d8:	afc20024 	sw	v0,36(s8)
			}
			k++;
    18dc:	8fc20028 	lw	v0,40(s8)
    18e0:	24420001 	addiu	v0,v0,1
    18e4:	afc20028 	sw	v0,40(s8)
		while (leftLen > i && rightLen > j) {
    18e8:	8fc20020 	lw	v0,32(s8)
    18ec:	8fc3003c 	lw	v1,60(s8)
    18f0:	0043102b 	sltu	v0,v0,v1
    18f4:	10400018 	beqz	v0,1958 <merge_sort+0x2d8>
    18f8:	00000000 	nop
    18fc:	8fc20024 	lw	v0,36(s8)
    1900:	8fc30038 	lw	v1,56(s8)
    1904:	0043102b 	sltu	v0,v0,v1
    1908:	1440ffcb 	bnez	v0,1838 <merge_sort+0x1b8>
    190c:	00000000 	nop
		}

		while (i < leftLen) {
    1910:	10000011 	b	1958 <merge_sort+0x2d8>
    1914:	00000000 	nop
			vector[k] = left[i];
    1918:	8fc20028 	lw	v0,40(s8)
    191c:	00021080 	sll	v0,v0,0x2
    1920:	8fc30048 	lw	v1,72(s8)
    1924:	00621021 	addu	v0,v1,v0
    1928:	8fc30020 	lw	v1,32(s8)
    192c:	00031880 	sll	v1,v1,0x2
    1930:	8fc40030 	lw	a0,48(s8)
    1934:	00831821 	addu	v1,a0,v1
    1938:	8c630000 	lw	v1,0(v1)
    193c:	ac430000 	sw	v1,0(v0)
			i++;
    1940:	8fc20020 	lw	v0,32(s8)
    1944:	24420001 	addiu	v0,v0,1
    1948:	afc20020 	sw	v0,32(s8)
			k++;
    194c:	8fc20028 	lw	v0,40(s8)
    1950:	24420001 	addiu	v0,v0,1
    1954:	afc20028 	sw	v0,40(s8)
		while (i < leftLen) {
    1958:	8fc30020 	lw	v1,32(s8)
    195c:	8fc2003c 	lw	v0,60(s8)
    1960:	0062102b 	sltu	v0,v1,v0
    1964:	1440ffec 	bnez	v0,1918 <merge_sort+0x298>
    1968:	00000000 	nop
		}

		while (j < rightLen) {
    196c:	10000011 	b	19b4 <merge_sort+0x334>
    1970:	00000000 	nop
			vector[k] = right[j];
    1974:	8fc20028 	lw	v0,40(s8)
    1978:	00021080 	sll	v0,v0,0x2
    197c:	8fc30048 	lw	v1,72(s8)
    1980:	00621021 	addu	v0,v1,v0
    1984:	8fc30024 	lw	v1,36(s8)
    1988:	00031880 	sll	v1,v1,0x2
    198c:	8fc40034 	lw	a0,52(s8)
    1990:	00831821 	addu	v1,a0,v1
    1994:	8c630000 	lw	v1,0(v1)
    1998:	ac430000 	sw	v1,0(v0)
			j++;
    199c:	8fc20024 	lw	v0,36(s8)
    19a0:	24420001 	addiu	v0,v0,1
    19a4:	afc20024 	sw	v0,36(s8)
			k++;
    19a8:	8fc20028 	lw	v0,40(s8)
    19ac:	24420001 	addiu	v0,v0,1
    19b0:	afc20028 	sw	v0,40(s8)
		while (j < rightLen) {
    19b4:	8fc30024 	lw	v1,36(s8)
    19b8:	8fc20038 	lw	v0,56(s8)
    19bc:	0062102b 	sltu	v0,v1,v0
    19c0:	1440ffec 	bnez	v0,1974 <merge_sort+0x2f4>
    19c4:	00000000 	nop
		}
		free(left);
    19c8:	8fc40030 	lw	a0,48(s8)
    19cc:	8f8280ac 	lw	v0,-32596(gp)
    19d0:	0040c825 	move	t9,v0
    19d4:	0320f809 	jalr	t9
    19d8:	00000000 	nop
    19dc:	8fdc0010 	lw	gp,16(s8)
		free(right);
    19e0:	8fc40034 	lw	a0,52(s8)
    19e4:	8f8280ac 	lw	v0,-32596(gp)
    19e8:	0040c825 	move	t9,v0
    19ec:	0320f809 	jalr	t9
    19f0:	00000000 	nop
    19f4:	8fdc0010 	lw	gp,16(s8)
	}
    19f8:	00000000 	nop
    19fc:	03c0e825 	move	sp,s8
    1a00:	8fbf0044 	lw	ra,68(sp)
    1a04:	8fbe0040 	lw	s8,64(sp)
    1a08:	27bd0048 	addiu	sp,sp,72
    1a0c:	03e00008 	jr	ra
    1a10:	00000000 	nop
	...

00001a20 <mymalloc>:
	.text
	.align	2
	.globl	mymalloc
	.ent	mymalloc
mymalloc:
	subu	sp, sp, 56
    1a20:	27bdffc8 	addiu	sp,sp,-56
	sw	ra, 48(sp)
    1a24:	afbf0030 	sw	ra,48(sp)
	sw	fp, 44(sp)
    1a28:	afbe002c 	sw	s8,44(sp)
	sw	a0, 40(sp)  # Temporary: original allocation size.
    1a2c:	afa40028 	sw	a0,40(sp)
	sw	a0, 36(sp)  # Temporary: actual allocation size.
    1a30:	afa40024 	sw	a0,36(sp)
	li	t0, 0
    1a34:	24080000 	li	t0,0
	sw	t0, 32(sp)  # Temporary: return value (defaults to NULL).
    1a38:	afa80020 	sw	t0,32(sp)
	sw	a0, 12(sp)  # Argument building area (#4, a3).
	sw	a0,  8(sp)  # Argument building area (#3, a2).
	sw	a0,  4(sp)  # Argument building area (#2, a1).
	sw	a0,  0(sp)  # Argument building area (#1, a0).
#endif
	move	fp, sp
    1a3c:	03a0f025 	move	s8,sp

	# Adjust the original allocation size to a 4-byte boundary.
	#
	lw	t0, 40(sp)
    1a40:	8fa80028 	lw	t0,40(sp)
	addiu	t0, t0, 3
    1a44:	25080003 	addiu	t0,t0,3
	and	t0, t0, 0xfffffffc
    1a48:	2401fffc 	li	at,-4
    1a4c:	01014024 	and	t0,t0,at
	sw	t0, 40(sp)
    1a50:	afa80028 	sw	t0,40(sp)

	# Increment the allocation size by 12 units, in order to 
	# make room for the allocation signature, block size and
	# trailer information.
	#
	lw	t0, 40(sp)
    1a54:	8fa80028 	lw	t0,40(sp)
	addiu	t0, t0, 12
    1a58:	2508000c 	addiu	t0,t0,12
	sw	t0, 36(sp)
    1a5c:	afa80024 	sw	t0,36(sp)

	# mmap(0, sz, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANON, -1, 0)
	#
	li	v0, SYS_mmap
    1a60:	24020ffa 	li	v0,4090
	li	a0, 0
    1a64:	24040000 	li	a0,0
	lw	a1, 36(sp)
    1a68:	8fa50024 	lw	a1,36(sp)
	li	a2, PROT_READ|PROT_WRITE
    1a6c:	24060003 	li	a2,3
	li	a3, MAP_PRIVATE|MAP_ANONYMOUS
    1a70:	24070802 	li	a3,2050

	# According to mmap(2), the file descriptor 
	# must be specified as -1 when using MAP_ANON.
	#
	li	t0, -1
    1a74:	2408ffff 	li	t0,-1
	sw	t0, 16(sp)
    1a78:	afa80010 	sw	t0,16(sp)

	# Use a trivial offset.
	#
	li	t0, 0
    1a7c:	24080000 	li	t0,0
	sw	t0, 20(sp)
    1a80:	afa80014 	sw	t0,20(sp)

	# XXX TODO.
	#
	sw	zero, 24(sp)
    1a84:	afa00018 	sw	zero,24(sp)
	sw	zero, 28(sp)
    1a88:	afa0001c 	sw	zero,28(sp)

	# Excecute the syscall, save the return value.
	#
	syscall
    1a8c:	0000000c 	syscall
	beqz	v0, mymalloc_return
    1a90:	10400016 	beqz	v0,1aec <mymalloc_return>
    1a94:	00000000 	nop
	li	t0, 1
    1a98:	24080001 	li	t0,1
	beq	a3, t0, mymalloc_return
    1a9c:	10e80013 	beq	a3,t0,1aec <mymalloc_return>
    1aa0:	00000000 	nop

	# Success. Save the pointer to the stack.
	#
	sw	v0, 32(sp)
    1aa4:	afa20020 	sw	v0,32(sp)

	# Check out the allocated pointer.
	#
	lw	t0, 32(sp)
    1aa8:	8fa80020 	lw	t0,32(sp)
	li	t1, MYMALLOC_SIGNATURE
    1aac:	3c09dead 	lui	t1,0xdead
    1ab0:	3529beef 	ori	t1,t1,0xbeef
	sw	t1, 0(t0)
    1ab4:	ad090000 	sw	t1,0(t0)

	# The actual allocation size goes right after the signature.
	#
	lw	t0, 32(sp)
    1ab8:	8fa80020 	lw	t0,32(sp)
	lw	t1, 36(sp)
    1abc:	8fa90024 	lw	t1,36(sp)
	sw	t1,  4(t0)
    1ac0:	ad090004 	sw	t1,4(t0)

	# Trailer information.
	#
	lw	t0, 36(sp) # t0: actual allocation size.
    1ac4:	8fa80024 	lw	t0,36(sp)
	lw	t1, 32(sp) # t1: Pointer.
    1ac8:	8fa90020 	lw	t1,32(sp)
	addu	t1, t1, t0 # t1 now points to the trailing 4-byte area.
    1acc:	01284821 	addu	t1,t1,t0
	xor	t2, t0, MYMALLOC_SIGNATURE
    1ad0:	3c01dead 	lui	at,0xdead
    1ad4:	3421beef 	ori	at,at,0xbeef
    1ad8:	01015026 	xor	t2,t0,at
	sw	t2, -4(t1)
    1adc:	ad2afffc 	sw	t2,-4(t1)

	# Increment the result pointer.
	#
	lw	t0, 32(sp)
    1ae0:	8fa80020 	lw	t0,32(sp)
	addiu	t0, t0, 8
    1ae4:	25080008 	addiu	t0,t0,8
	sw	t0, 32(sp)
    1ae8:	afa80020 	sw	t0,32(sp)

00001aec <mymalloc_return>:

mymalloc_return:
	# Restore the return value.
	#
	lw	v0, 32(sp)
    1aec:	8fa20020 	lw	v0,32(sp)

	# Destroy the stack frame.
	#
	move	sp, fp
    1af0:	03c0e825 	move	sp,s8
	lw	ra, 48(sp)
    1af4:	8fbf0030 	lw	ra,48(sp)
	lw	fp, 44(sp)
    1af8:	8fbe002c 	lw	s8,44(sp)
	addu	sp, sp, 56
    1afc:	27bd0038 	addiu	sp,sp,56

	j	ra
    1b00:	03e00008 	jr	ra
    1b04:	00000000 	nop

00001b08 <myfree>:
	.end	mymalloc

	.globl	myfree
	.ent	myfree
myfree:
	subu	sp, sp, 40
    1b08:	27bdffd8 	addiu	sp,sp,-40
	sw	ra, 32(sp)
    1b0c:	afbf0020 	sw	ra,32(sp)
	sw	fp, 28(sp)
    1b10:	afbe001c 	sw	s8,28(sp)
	sw	a0, 24(sp)  # Temporary: argument pointer.
    1b14:	afa40018 	sw	a0,24(sp)
	sw	a0, 20(sp)  # Temporary: actual mmap(2) pointer.
    1b18:	afa40014 	sw	a0,20(sp)
	move	fp, sp
    1b1c:	03a0f025 	move	s8,sp

	# Calculate the actual mmap(2) pointer.
	#
	lw	t0, 24(sp)
    1b20:	8fa80018 	lw	t0,24(sp)
	subu	t0, t0, 8
    1b24:	2508fff8 	addiu	t0,t0,-8
	sw	t0, 20(sp)
    1b28:	afa80014 	sw	t0,20(sp)
	# XXX Sanity check: the argument pointer must be checked
	# in before we try to release the memory block.
	#
	# First, check the allocation signature.
	#
	lw	t0, 20(sp) # t0: actual mmap(2) pointer.
    1b2c:	8fa80014 	lw	t0,20(sp)
	lw	t1, 0(t0)
    1b30:	8d090000 	lw	t1,0(t0)
	bne	t1, MYMALLOC_SIGNATURE, myfree_die
    1b34:	3c01dead 	lui	at,0xdead
    1b38:	3421beef 	ori	at,at,0xbeef
    1b3c:	15210012 	bne	t1,at,1b88 <myfree_die>
    1b40:	00000000 	nop

	# Second, check the memory block trailer.
	#
	lw	t0, 20(sp) # t0: actual mmap(2) pointer.
    1b44:	8fa80014 	lw	t0,20(sp)
	lw	t1, 4(t0)  # t1: actual mmap(2) block size.
    1b48:	8d090004 	lw	t1,4(t0)
	addu	t2, t0, t1 # t2: trailer pointer.
    1b4c:	01095021 	addu	t2,t0,t1
	lw	t3, -4(t2)
    1b50:	8d4bfffc 	lw	t3,-4(t2)
	xor	t3, t3, t1
    1b54:	01695826 	xor	t3,t3,t1
	bne	t3, MYMALLOC_SIGNATURE, myfree_die
    1b58:	3c01dead 	lui	at,0xdead
    1b5c:	3421beef 	ori	at,at,0xbeef
    1b60:	15610009 	bne	t3,at,1b88 <myfree_die>
    1b64:	00000000 	nop

	# All checks passed. Try to free this memory area.
	#
	li	v0, SYS_munmap
    1b68:	24020ffb 	li	v0,4091
	lw	a0, 20(sp) # a0: actual mmap(2) pointer.
    1b6c:	8fa40014 	lw	a0,20(sp)
	lw	a1, 4(a0)  # a1: actual allocation size.
    1b70:	8c850004 	lw	a1,4(a0)
	syscall
    1b74:	0000000c 	syscall

	# Bail out if we cannot unmap this memory block.
	#
	bnez	v0, myfree_die
    1b78:	14400003 	bnez	v0,1b88 <myfree_die>
    1b7c:	00000000 	nop

	# Success.
	#
	j myfree_return
    1b80:	10000002 	b	1b8c <myfree_return>
    1b84:	00000000 	nop

00001b88 <myfree_die>:

myfree_die:
	# Generate a segmentation fault by writing to the first
	# byte of the address space (a.k.a. the NULL pointer).
	#
	sw t0, 0(zero)
    1b88:	ac080000 	sw	t0,0(zero)

00001b8c <myfree_return>:

myfree_return:
	# Destroy the stack frame.
	#
	move	sp, fp
    1b8c:	03c0e825 	move	sp,s8
	lw	ra, 32(sp)
    1b90:	8fbf0020 	lw	ra,32(sp)
	lw	fp, 28(sp)
    1b94:	8fbe001c 	lw	s8,28(sp)
	addu	sp, sp, 40
    1b98:	27bd0028 	addiu	sp,sp,40

	j	ra
    1b9c:	03e00008 	jr	ra
    1ba0:	00000000 	nop
	...

00001bb0 <__libc_csu_init>:
    1bb0:	3c1c0002 	lui	gp,0x2
    1bb4:	279c8590 	addiu	gp,gp,-31344
    1bb8:	0399e021 	addu	gp,gp,t9
    1bbc:	27bdffc8 	addiu	sp,sp,-56
    1bc0:	8f998038 	lw	t9,-32712(gp)
    1bc4:	afbc0010 	sw	gp,16(sp)
    1bc8:	afb50030 	sw	s5,48(sp)
    1bcc:	00c0a825 	move	s5,a2
    1bd0:	afb4002c 	sw	s4,44(sp)
    1bd4:	00a0a025 	move	s4,a1
    1bd8:	afb30028 	sw	s3,40(sp)
    1bdc:	00809825 	move	s3,a0
    1be0:	afb20024 	sw	s2,36(sp)
    1be4:	afb0001c 	sw	s0,28(sp)
    1be8:	afbf0034 	sw	ra,52(sp)
    1bec:	0411fb5e 	bal	968 <_init>
    1bf0:	afb10020 	sw	s1,32(sp)
    1bf4:	8fbc0010 	lw	gp,16(sp)
    1bf8:	8f90803c 	lw	s0,-32708(gp)
    1bfc:	8f928040 	lw	s2,-32704(gp)
    1c00:	02509023 	subu	s2,s2,s0
    1c04:	00129083 	sra	s2,s2,0x2
    1c08:	12400009 	beqz	s2,1c30 <__libc_csu_init+0x80>
    1c0c:	00008825 	move	s1,zero
    1c10:	8e190000 	lw	t9,0(s0)
    1c14:	26310001 	addiu	s1,s1,1
    1c18:	02a03025 	move	a2,s5
    1c1c:	02802825 	move	a1,s4
    1c20:	0320f809 	jalr	t9
    1c24:	02602025 	move	a0,s3
    1c28:	1651fff9 	bne	s2,s1,1c10 <__libc_csu_init+0x60>
    1c2c:	26100004 	addiu	s0,s0,4
    1c30:	8fbf0034 	lw	ra,52(sp)
    1c34:	8fb50030 	lw	s5,48(sp)
    1c38:	8fb4002c 	lw	s4,44(sp)
    1c3c:	8fb30028 	lw	s3,40(sp)
    1c40:	8fb20024 	lw	s2,36(sp)
    1c44:	8fb10020 	lw	s1,32(sp)
    1c48:	8fb0001c 	lw	s0,28(sp)
    1c4c:	03e00008 	jr	ra
    1c50:	27bd0038 	addiu	sp,sp,56

00001c54 <__libc_csu_fini>:
    1c54:	03e00008 	jr	ra
    1c58:	00000000 	nop
    1c5c:	00000000 	nop

Disassembly of section .MIPS.stubs:

00001c60 <_MIPS_STUBS_>:
    1c60:	8f998010 	lw	t9,-32752(gp)
    1c64:	03e07825 	move	t7,ra
    1c68:	0320f809 	jalr	t9
    1c6c:	24180028 	li	t8,40
    1c70:	8f998010 	lw	t9,-32752(gp)
    1c74:	03e07825 	move	t7,ra
    1c78:	0320f809 	jalr	t9
    1c7c:	24180025 	li	t8,37
    1c80:	8f998010 	lw	t9,-32752(gp)
    1c84:	03e07825 	move	t7,ra
    1c88:	0320f809 	jalr	t9
    1c8c:	24180024 	li	t8,36
    1c90:	8f998010 	lw	t9,-32752(gp)
    1c94:	03e07825 	move	t7,ra
    1c98:	0320f809 	jalr	t9
    1c9c:	24180023 	li	t8,35
    1ca0:	8f998010 	lw	t9,-32752(gp)
    1ca4:	03e07825 	move	t7,ra
    1ca8:	0320f809 	jalr	t9
    1cac:	24180021 	li	t8,33
    1cb0:	8f998010 	lw	t9,-32752(gp)
    1cb4:	03e07825 	move	t7,ra
    1cb8:	0320f809 	jalr	t9
    1cbc:	24180020 	li	t8,32
    1cc0:	8f998010 	lw	t9,-32752(gp)
    1cc4:	03e07825 	move	t7,ra
    1cc8:	0320f809 	jalr	t9
    1ccc:	2418001f 	li	t8,31
    1cd0:	8f998010 	lw	t9,-32752(gp)
    1cd4:	03e07825 	move	t7,ra
    1cd8:	0320f809 	jalr	t9
    1cdc:	2418001e 	li	t8,30
    1ce0:	8f998010 	lw	t9,-32752(gp)
    1ce4:	03e07825 	move	t7,ra
    1ce8:	0320f809 	jalr	t9
    1cec:	2418001d 	li	t8,29
    1cf0:	8f998010 	lw	t9,-32752(gp)
    1cf4:	03e07825 	move	t7,ra
    1cf8:	0320f809 	jalr	t9
    1cfc:	2418001c 	li	t8,28
    1d00:	8f998010 	lw	t9,-32752(gp)
    1d04:	03e07825 	move	t7,ra
    1d08:	0320f809 	jalr	t9
    1d0c:	2418001b 	li	t8,27
    1d10:	8f998010 	lw	t9,-32752(gp)
    1d14:	03e07825 	move	t7,ra
    1d18:	0320f809 	jalr	t9
    1d1c:	2418001a 	li	t8,26
    1d20:	8f998010 	lw	t9,-32752(gp)
    1d24:	03e07825 	move	t7,ra
    1d28:	0320f809 	jalr	t9
    1d2c:	24180019 	li	t8,25
    1d30:	8f998010 	lw	t9,-32752(gp)
    1d34:	03e07825 	move	t7,ra
    1d38:	0320f809 	jalr	t9
    1d3c:	24180017 	li	t8,23
    1d40:	8f998010 	lw	t9,-32752(gp)
    1d44:	03e07825 	move	t7,ra
    1d48:	0320f809 	jalr	t9
    1d4c:	24180016 	li	t8,22
    1d50:	8f998010 	lw	t9,-32752(gp)
    1d54:	03e07825 	move	t7,ra
    1d58:	0320f809 	jalr	t9
    1d5c:	24180015 	li	t8,21
    1d60:	8f998010 	lw	t9,-32752(gp)
    1d64:	03e07825 	move	t7,ra
    1d68:	0320f809 	jalr	t9
    1d6c:	24180013 	li	t8,19
    1d70:	8f998010 	lw	t9,-32752(gp)
    1d74:	03e07825 	move	t7,ra
    1d78:	0320f809 	jalr	t9
    1d7c:	24180012 	li	t8,18
    1d80:	8f998010 	lw	t9,-32752(gp)
    1d84:	03e07825 	move	t7,ra
    1d88:	0320f809 	jalr	t9
    1d8c:	24180011 	li	t8,17
    1d90:	8f998010 	lw	t9,-32752(gp)
    1d94:	03e07825 	move	t7,ra
    1d98:	0320f809 	jalr	t9
    1d9c:	2418000f 	li	t8,15
    1da0:	8f998010 	lw	t9,-32752(gp)
    1da4:	03e07825 	move	t7,ra
    1da8:	0320f809 	jalr	t9
    1dac:	2418000d 	li	t8,13
    1db0:	8f998010 	lw	t9,-32752(gp)
    1db4:	03e07825 	move	t7,ra
    1db8:	0320f809 	jalr	t9
    1dbc:	2418000b 	li	t8,11
	...

Disassembly of section .fini:

00001dd0 <_fini>:
    1dd0:	3c1c0002 	lui	gp,0x2
    1dd4:	279c8370 	addiu	gp,gp,-31888
    1dd8:	0399e021 	addu	gp,gp,t9
    1ddc:	27bdffe0 	addiu	sp,sp,-32
    1de0:	afbc0010 	sw	gp,16(sp)
    1de4:	afbf001c 	sw	ra,28(sp)
    1de8:	8fbf001c 	lw	ra,28(sp)
    1dec:	03e00008 	jr	ra
    1df0:	27bd0020 	addiu	sp,sp,32
