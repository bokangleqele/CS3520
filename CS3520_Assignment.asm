

# register usage: $t0=i, $t2=j, $t3=i/2, $t4=flag, $t5 = count,$t6 = number, $t7 reversed, $t8=i*i

## first for loop, the one with i

.text
.globl main
	main:
	outerloop:
		add $t0,$zero,1		# i is initialised to 1

		addi $t0,$t0,1		#i++
		sgt $t1, $t0, 0		
		
		
		addi $t2,$zero,2	#j is initialised to 2
		
		## second for loop, the one with j
		
	innerloop:

			#bne $t2, $t3, Loop	# go to loop if j<=i/2
			
			div $t3, $t0,2		#	divide i/2
		 
			sle $t2, $t2 , $t3 	# set register $t2 to less than or equal to i/2
			
			addi $t2, $t2, 1	#j++
			
			
			j innerloop
		
	endInnerLoop: 
				addi $t0,$t0,1	#i++
				
				j outerloop
		
		
	endOuterLoop:
	
	##if (flag==0)
	
	seq $t4, $t4,$zero,  		#set (flag==0)
	beq $t4, $0, else 			#if false go to else
	
	
	
	Else:
		seq $t5, $t5, 11 		#set count==11
		beq $t5, $0, else		#if false to to else
		
	
	
	else: 
		seq $t4, $t4, $zero		#set (flag == 0)
		#print_int $v0,1, eLse		#print the prime reversible square number
	eLse:
		
			seq $t1,$t2,$t3
		
	ELse:
		div $t6,$t4
	
	
	
	
	
			
		
			
			div $t6, $t0,2		#	divide number/2
		 
			sle $t2, $t2 , $t6	# set register $t2 to less than or equal to number/2
			
			addi $t2, $t2, 1	#j++
		
		
		#if (i*i != reversed)
		
			add $t1,$t2,$t3
		
			mult $t0,$t0
			
			
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
