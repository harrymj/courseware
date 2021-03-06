// configure GPIO 20 for output
ldr r0, =0x20200008
mov r1, #1
str r1, [r0]

mov r1, #(1<<20)

loop: 

// set GPIO 20 high
ldr r0, =0x2020001C
str r1, [r0] 

// delay
mov r2, #0x3F0000
wait1:
sub r2, #1
cmp r2, #0
bne wait1

// set GPIO 20 low
ldr r0, =0x20200028
str r1, [r0] 

// delay
mov r2, #0x3F0000
wait2:
sub r2, #1
cmp r2, #0
bne wait2

b loop
