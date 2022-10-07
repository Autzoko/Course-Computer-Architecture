    AREA    code
    code32
start    
    mov     r1,#1
    mov     r2,#1
    mov     r13,&addr

adda
    add     r1,r1,r2
    str     r1,[r13]
    add     r13,0x04
    b       addb

addb
    add     r2,r1,r2
    str     r2,[r13]
    add     r13,0x04
    b       adda
    end
