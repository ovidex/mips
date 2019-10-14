.data
 x:.word 1
.text
sign:
$sp, $sp, 4; sw $v0, ($sp);
main:
 lw $t0,x
 
syscall
