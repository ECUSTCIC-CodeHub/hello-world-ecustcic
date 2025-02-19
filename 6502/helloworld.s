.org $0600
    LDX #$00 
    STY $FF 
.loop:
    LDA message, X 
    BEQ done 
    JSR $FFD2 
    INX 
    JMP .loop
.done:
    RTS 

message:
    .asciz "Hello World!" 
