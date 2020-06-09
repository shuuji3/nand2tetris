// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed.
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

(LOOP)

    // addr = &SCREEN
    @SCREEN
    D=A
    @addr
    M=D

    // if (M[KBD] == 0) color = 0 else color = 1
    @KBD
    D=M
    @THEN
    D;JEQ

    // pressed
    // color = -1
    @color
    M=-1

    @FI
    0;JMP

(THEN)

    // not pressed
    // color = 0
    @color
    M=0

(FI)

    // i=0; n=8192
    @i
    M=0
    @8192
    D=A
    @n
    M=D

(FOR)
    // for (i=0; i<8192; i++)
    @i // @18
    D=M
    @n // @19
    D=D-M // D=@18-@19
    @LOOP
    D;JEQ

    @color
    D=M
    @addr
    A=M
    M=D

    // i++
    @i
    M=M+1

    // addr++
    @addr
    M=M+1

    @FOR
    0;JMP
