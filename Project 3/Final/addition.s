# Function to calculate factorial
# $a0: input (n)
# $v0: result

factorial_function:
    li $v0, 1        # Initialize result to 1
    li $t0, 1        # Initialize counter to 1

factorial_loop:
    beq $t0, $a0, factorial_end  # If counter equals input, exit loop
    mul $v0, $v0, $t0            # Multiply result by counter
    addi $t0, $t0, 1             # Increment counter
    j factorial_loop

factorial_end:
    jr $ra                        # Return to the caller

