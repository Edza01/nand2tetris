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

// Put your code here.
@status
M=-1        
D=0        
@SETSCREEN
0;JMP

(LOOP)
@KBD
D=M         
@SETSCREEN
D;JEQ       
D=-1      

(SETSCREEN)   
@ARG
M=D       
@status  
D=D-M    
@LOOP
D;JEQ     

@ARG
D=M
@status
M=D       
@SCREEN
D=A       
@8192
D=D+A     
@i
M=D       
(SETLOOP)    
@i
D=M-1
M=D       
@LOOP
D;JLT     

@status
D=M       
@i
A=M       
M=D      
@SETLOOP
0;JMP