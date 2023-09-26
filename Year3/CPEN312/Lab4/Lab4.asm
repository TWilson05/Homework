$MODDE0CV ; Special Function Registers declaration for CV-8052

org 0000H ; After reset, the processor starts at location zero
	ljmp initial
	
NO1 EQU #0x00
NO2 EQU #0x24
NO3 EQU #0x12
NO4 EQU #0x79
NO5 EQU #0x19
NO6 EQU #0x78
NO7 EQU #0x78
NO8 EQU #0x10
Blank EQU #0xFF

HSec EQU #89
Sec EQU #178
TSec EQU #18

Display mac
	mov HEX5, %0
	mov HEX4, %1
	mov HEX3, %2
	mov HEX2, %3
	mov HEX1, %4
	mov HEX0, %5
	lcall latch
endmac

DisplayReverse mac
	mov HEX0, %5
	mov HEX1, %4
	mov HEX2, %3
	mov HEX3, %2
	mov HEX4, %1
	mov HEX5, %0
	lcall latch
endmac

Delay:
	jb SWA.3, fast
	mov R3, Sec
	ljmp L2
	fast:
		mov R3, HSec
	L2: mov R2, #250
	L1: mov R1, #250
	L0: djnz R1, L0 ; 3cyc*30ns*250=22.5us
		lcall latch
		djnz R2, L1 ; 22.5us*250 = 5.625ms
		djnz R3, L2 ; 5.625ms*89 = 0.500625s
ret

SpeedyDelay:
		mov R3, TSec
	M2: mov R2, #250
	M1: mov R1, #250
	M0: djnz R1, M0 ; 3cyc*30ns*250=22.5us
		lcall latch
		djnz R2, M1 ; 22.5us*250 = 5.625ms
		djnz R3, M2 ; 5.625ms*89 = 0.500625s
ret
	

initial:
	mov SP, #0x7f ; initialize the stack
	mov LEDRA, #0 ; Bit addressable
	mov LEDRB, #0 ; Not bit addressable
	acall latch
	ljmp initial

latch:
	jnb KEY.3, lockVals
ret

lockVals:
	mov R0, SWA
	ljmp Assg000
	
Assg000:
	cjne R0, #0, Assg001
	ljmp case000
Assg001:
	cjne R0, #1, Assg010
	ljmp case001
Assg010:
	cjne R0, #2, Assg011
	ljmp case010
Assg011:
	cjne R0, #3, Assg100
	ljmp case011
Assg100:
	cjne R0, #4, Assg101
	ljmp case100
Assg101:
	cjne R0, #5, Assg110
	ljmp case101
Assg110:
	cjne R0, #6, Assg111
	ljmp case110
Assg111:
	ljmp case111
	
	
case000:
	Display(NO1,NO2,NO3,NO4,NO5,NO6)
	ljmp case000
case001:
	Display(Blank,Blank,Blank,Blank,NO7,NO8)
	ljmp case001
case010:
	Display(NO1,NO2,NO3,NO4,NO5,NO6)
	mov R4, NO7
	mov a, NO8
	loop010:
		lcall Delay
		mov R5, HEX5
		Display(HEX4,HEX3,HEX2,HEX1,HEX0, R4)
		mov R4, a
		mov a, R5
		ljmp loop010
case011:
	Display(NO1,NO2,NO3,NO4,NO5,NO6)
	mov R4, NO8
	mov a, NO7
	loop011:
		lcall Delay
		mov R5, HEX0
		DisplayReverse(R4,HEX5,HEX4,HEX3,HEX2,HEX1)
		mov R4, a
		mov a, R5
		ljmp loop011
case100:
	Display(NO3,NO4,NO5,NO6,NO7,NO8)
	lcall Delay
	Display(Blank,Blank,Blank,Blank,Blank,Blank)
	lcall Delay
	ljmp case100
case101:
	lcall Delay
	Display(Blank,Blank,Blank,Blank,Blank,Blank)
	lcall Delay
	mov HEX5, NO1
	lcall Delay
	mov HEX4, NO2
	lcall Delay
	mov HEX3, NO3
	lcall Delay
	mov HEX2, NO4
	lcall Delay
	mov HEX1, NO5
	lcall Delay
	mov HEX0, NO6
	ljmp case101
case110:
	lcall Delay
	Display(Blank,#09H,#06H,#47H,#47H,#40H)
	lcall Delay
	Display(NO1,NO2,NO3,NO4,NO5,NO6)
	lcall Delay
	Display(#46H,#0CH,#48H,#30H,#79H,#24H)
	ljmp case110
case111:
	lcall Delay
	Display(Blank,Blank,Blank,Blank,Blank,Blank)
	lcall SpeedyDelay
	mov HEX5, NO6
	lcall SpeedyDelay
	mov HEX5, Blank
	mov HEX4, NO6
	lcall SpeedyDelay
	mov HEX4, Blank
	mov HEX3, NO6
	lcall SpeedyDelay
	mov HEX3, blank
	mov HEX2, NO6
	lcall SpeedyDelay
	mov HEX2, blank
	mov HEX1, NO6
	lcall SpeedyDelay
	mov HEX1, blank
	mov HEX0, NO6
	
	lcall SpeedyDelay
	mov HEX5, NO5
	lcall SpeedyDelay
	mov HEX5, blank
	mov HEX4, NO5
	lcall SpeedyDelay
	mov HEX4, blank
	mov HEX3, NO5
	lcall SpeedyDelay
	mov HEX3, blank
	mov HEX2, NO5
	lcall SpeedyDelay
	mov HEX2, blank
	mov HEX1, NO5
	
	lcall SpeedyDelay
	mov HEX6, NO4
	lcall SpeedyDelay
	mov HEX6, blank
	mov HEX5, NO4
	lcall SpeedyDelay
	mov HEX5, blank
	mov HEX4, NO4
	lcall SpeedyDelay
	mov HEX4, blank
	mov HEX3, NO4
	lcall SpeedyDelay
	mov HEX3, blank
	mov HEX2, NO4
	
	lcall SpeedyDelay
	mov HEX6, NO3
	lcall SpeedyDelay
	mov HEX6, blank
	mov HEX5, NO3
	lcall SpeedyDelay
	mov HEX5, blank
	mov HEX4, NO3
	lcall SpeedyDelay
	mov HEX4, blank
	mov HEX3, NO3
	
	lcall SpeedyDelay
	mov HEX5, NO2
	lcall SpeedyDelay
	mov HEX5, blank
	mov HEX4, NO2
	
	lcall SpeedyDelay
	mov HEX5, NO1
	
	lcall Delay
	Display(NO1,NO2,NO3,NO4,NO5,NO6)
	lcall Delay
	Display(Blank,Blank,Blank,Blank,Blank,Blank)
	lcall Delay
	Display(NO1,NO2,NO3,NO4,NO5,NO6)
	ljmp case111
END