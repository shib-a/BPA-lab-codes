org 0x426
arg_1_1: word 0x0
arg_1_2: word 0xFFFF
arg_2_1: word 0x1234
arg_2_2: word 0x4321
arg_3: word 0x8A69
res: word 0x0
res_1: word 0xFFFF
res_2: word 0x4334
res_3: word 0x8A69
res_4: word 0x437
main:
	call test_1
	hlt
	call test_2
	hlt
	call test_3
	hlt
	call test_4 
	hlt
	ld res
	cmp #0x4
	hlt
test_1:
	ld arg_1_1
	push
	ld arg_1_2
	push
	word 0x0F01
	pop
	nop
	cmp res_1
	beq correct_1
incorrect_1:
	ld #0x0
	st res
	jump exit
correct_1:	bnc incorrect_1
 	ld res
 	inc
 	st res
 	jump exit
exit:	
	pop
	pop
 	cla	
 	ret
test_2:
	ld arg_2_1
	push
	ld arg_2_2
	push
	word 0x0F01
	pop
	nop
	cmp res_2
	beq correct_2
incorrect_2:
	ld #0x0
	st res
	jump exit_2
 correct_2:	bns incorrect_2
 	ld res
 	inc
 	st res
 	jump exit_2
exit_2:
	pop
	pop
	cla
	ret
test_3: 
	ld arg_3
	push
	push
	word 0x0F01
	pop
	nop
	cmp res_3
	beq correct_3
incorrect_3:
	ld #0x0
	st res
	jump exit_3
 correct_3:	bnc incorrect_3
 	ld res
 	inc
 	st res
 	jump exit_3
exit_3:
	pop
	pop
	cla
	ret
test_4: 
	ld #0x0
	push
	word 0x0F01
	pop
	nop
	cmp res_4
	beq correct_4
incorrect_4:
	ld #0x0
	st res
	jump exit_4
correct_4:	bns incorrect_4
 	ld res
 	inc
 	st res
 	jump exit_4
exit_4:
	pop
	cla
	ret
