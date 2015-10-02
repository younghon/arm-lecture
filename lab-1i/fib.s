	.syntax unified
	.arch armv7-a
	.text
	.align 2
	.thumb
	.thumb_func

	.global fibonacci
	.type fibonacci, function

fibonacci:
	@ ADD/MODIFY CODE BELOW
	@ PROLOG
	push {r3, r4, r5, r6, lr}

	@r3 previous = -1
	@r4 result = 1
	@r5 sum = 0
	mov r3, #-1
	mov r4, #1
	mov r5, #0

	@r6 for loop counter
	mov r6, #0
label:
	@sum = previous + result
	@previous = result
	@result = sum
	add r5, r3, r4
	mov r3, r4
	mov r4, r5
	add r6, #1
	cmp r6, r0
	ble label

	@r0 = r4  (return r0)
	mov r0, r4
	pop {r3, r4, r5, r6, pc}		@EPILOG

	@ END CODE MODIFICATION

	.size fibonacci, .-fibonacci
	.end
