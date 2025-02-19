    ORG 0x0100
    LD DE, message 
.loop:
    LD A, (DE)
    CP 0  
    JP Z, done 
    CALL 0x0005  
    INC DE 
    JP loop
.done:
    RET 

message:
    DB 'Hello World!', 0
