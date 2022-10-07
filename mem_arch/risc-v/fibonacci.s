start:
    li      x1,1
    li      x2,1
    li      x10,1
    li      x11,9
    li      x12,0

    sw      x1,0x00000000(x12)
    add     x12,x10,x12
    sw      x2,0x00000000(x12)
    add     x12,x10,x12

_add1:
    add     x1,x1,x2
    sw      x1,0x00000000(x12)
    add     x12,x10,x12
    ble     x12,x11,_add2
    j       stop

_add2:
    add     x2,x1,x2
    sw      x2,0x00000000(x12)
    add     x12,x10,x12
    ble     x12,x11,_add1
    j       stop

stop:
    nop


