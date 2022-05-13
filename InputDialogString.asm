#Program: Input Dialog String
#Author: Long Vo 

#Write a program to open an input dialog box and read a string value. Write the string back to
#the user using a message box.

.text
	#InputDialogString
	li $v0, 54
	la $a0, prompt
	la $a1, buffer
	lw $a2, word_length
	syscall

	#Output the message dialog
	li $v0, 59
	la $a0, output
	la $a1, buffer
	syscall
	
	#Terminate the program
	li $v0, 10
	syscall

.data
buffer: 		.space 81
word_length: 		.word 80
prompt: 		.asciiz "Please enter a string: "
output:			.asciiz "The string you have entered is: "