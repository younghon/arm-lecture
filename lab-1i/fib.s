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

	@previous = -1
	@result = 1
	@sum = 0
	mov r3, #-1
	mov r4, #1
	mov r5, #0

	mov r6, #0
label:
	add r5, r3, r4
	mov r3, r4
	mov r4, r5
	add r6, #1
	cmp r6, r0
	ble label

	mov r0, r4
	pop {r3, r4, r5, r6, pc}		@EPILOG

	@ END CODE MODIFICATION
.L3:
	mov r0, #0			@ R0 = 0
	pop {r3, r4, r5, pc}		@ EPILOG

.L4:
	mov r0, #1			@ R0 = 1
	pop {r3, r4, r5, pc}		@ EPILOG

	.size fibonacci, .-fibonacci
	.end
