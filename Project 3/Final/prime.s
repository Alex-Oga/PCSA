# Function to check if a number is prime
# $a0: input (n)
# $v0: result (1 if prime, 0 if not prime)

is_prime_function:
    li $v0, 1        # Assume number is prime by default
    li $t0, 2        # Start checking divisibility from 2

prime_loop:
    beq $t0, $a0, prime_end        # If divisor equals input, exit loop
    div $a0, $t0, $t1              # Divide input by divisor
    mfhi $t2                       # Get remainder

    beq $t2, $zero, not_prime      # If remainder is 0, input is not prime

    addi $t0, $t0, 1               # Increment divisor
    j prime_loop

not_prime:
    li $v0, 0                      # Set result to 0 (not prime)
    j prime_end

prime_end:
    jr $ra                         # Return to the caller

