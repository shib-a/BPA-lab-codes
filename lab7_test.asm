org 0x426
arg_1_1: word 0x0
arg_1_2: word 0xFFFF
res: word 0x0
res_1: word 0xFFFF
main:
	call arg_1_1
	ld res
	hlt
test_1:
	ld arg_1_1
	push
	ld arg_1_2
	push
	word 0x0F01
	cmp res_1
	beq exit
exit:
 	ld res
 	inc
 	st res
