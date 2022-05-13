#Program: Output a float number from the keyboard
#Author Long Vo

.text
	#Input the prompt
	li $v0, 4
	la $a0, prompt
	syscall
	
	#Input the float number 
	li $v0, 6
	syscall 
	
	
	#Ouput the result
	li $v0, 4
	la $a0, result
	syscall
	
	li $v0, 2
	mov.s  $f12, $f0
	syscall 
	
	li $v0, 10
	syscall

.data
prompt: .asciiz "Please input a float number: "
result: .asciiz "The float number you have entered is: "
