.data
  vector : .space 12
  newline: .asciiz " "
  suma : .space 4
.text

main :
   li $s1,4
   li $s2,10
   li $s3,12
   li $t0,0
   li $t3,0
  
 
   
   sw $s1, vector($t0)
   addi $t0, $t0,4
   sw $s2, vector($t0)
   addi $t0, $t0,4
   sw $s3, vector($t0)
   
   addi $t0,$zero,0  # contorul i
 while :
    beq $t0,12 exit
    lw $t6, vector($t0)
    add $t3,$t3,$t6
     addi $t0,$t0,4
    #afisare valoare curenta
    li $v0,1
    addi $a0,$t6,0
    syscall
    #cout<<endl;
    li $v0,4
    la $a0,newline
    syscall
    j while
 
 exit:
 li $v0,1
 addi $a0,$t3,0
 syscall
 li $v0,10
 syscall
   
    
