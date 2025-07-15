.data

.text 

	addi $t0, $zero, 100 	# a
	addi $t1, $zero, 43 	# b
	addi $t2, $zero, 22 	# c
	
	# x = c
	addi $t3, $t2, 0
	
	slt $t4, $t1, $t0 # b < a
	slt $t5, $t2, $t0 # c < a
	
	and $t6, $t4, $t5
	
	beq $t6, 1, End
	
	slt $t4, $t2, $t1 
	beq $t4, 1, End2 
	
	addi $v0, $zero, 10 
	syscall 
	
	End:
		# x = a
		addi $t3, $t0, 0 
	
		addi $v0, $zero, 10 
		syscall
         	
	End2:
	
		# x = b
		addi $t3, $t1, 0 