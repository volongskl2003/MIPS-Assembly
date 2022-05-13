#Program: Random number
#Author: Long Vo

# Write a program to print out a random number from 1..100

.text
	#Print out the prompt
	li $v0, 4
	la $a0, prompt
	syscall
	
	#The random number in range 1..100
	li $v0, 42
	li $a1, 100
	syscall
	
	li $v0, 1
	syscall
	
	#Terminate the program
	li $v0, 10
	syscall
	


.data
range: 		100
prompt: .asciiz "The random number from 1 to 100 is: "