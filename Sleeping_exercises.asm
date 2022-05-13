#Program Sleeping.asm
#Author Long Vo

#Write a program which sleeps for 4 seconds before exiting.

.text
	#Output the prompt
	li $v0, 4
	la $a0, prompt
	syscall
	
	#Sleeping ........
	li $v0, 32
	la $a0, 4000
	syscall 
	
	#Output exiting
	li $v0, 4
	la $a0, output
	syscall
	
	li $v0, 10
	syscall

.data
prompt: .asciiz "Sleeping......."
output: .asciiz "Exiting......."