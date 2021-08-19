Kallab                                                      MET/CAL Procedure
=============================================================================
INSTRUMENT:            HP 5385A Frequency Counter Calibration
DATE:                  2021-08-19 11:41:12
AUTHOR:                Antti Harala
REVISION:
ADJUSTMENT THRESHOLD:  70%
NUMBER OF TESTS:       39
NUMBER OF LINES:       201
CONFIGURATION:         Datron 9500 (G1)
CONFIGURATION:         Datron 9510 on channel 1
=============================================================================
 STEP    FSC    RANGE NOMINAL        TOLERANCE     MOD1        MOD2  3  4 CON

  1.001  CALL         Sub Preamble

  1.002  DISP         Connect UUT to GPIB bus 1.

  1.003  HEAD         Self Test
  1.004  RSLT         =Self Test
  1.005  MESS         Power on UUT and make the following checks:
  1.005  MESS         1) Display shows a "starburst" pattern.
  1.005  MESS         2) Display shows a GPIB address.
  1.005  MESS         3) The display is filled with zeros
  1.005  MESS         4) Arrow appears above the letter "A" at the bottom of display.
  1.005  MESS
  1.006  EVAL   Did the checks pass?

  2.001  HEAD         Channel A Input Sensitivity
  2.002  RSLT         =Channel A Input Sensitivity
  2.003  DISP         Set the UUT's 10MHz Reference switch to EXT. Connect the
  2.003  DISP         9500 EXT REF OUT to UUT's 10 MHz Reference input. Connect
  2.003  DISP         9500's active head 9530 to UUT's Input A.

  2.004  IEEE         [TERM 13][TERM 10][T5000][D500]
  2.005  IEEE         IN[D500]
  2.006  IEEE         SM255[D500]
  2.007  IEEE         [SRQ OFF]

  2.008  9500         25mV                         10H            LS    S
  2.009  CALL         Sub Check Reading Exists
  2.010  EVAL   -e MEM >= 9 && MEM <= 11 : 25mV at 10H
  3.001  9500         25mV                         25H            LS    S
  3.002  CALL         Sub Check Reading Exists
  3.003  EVAL   -e MEM >= 24 && MEM <= 26 : 25mV at 25H
  4.001  9500         25mV                         50H            LS    S
  4.002  CALL         Sub Check Reading Exists
  4.003  EVAL   -e MEM >= 49 && MEM <= 51 : 25mV at 50H
  5.001  9500         15mV                         50H            LS    S
  5.002  CALL         Sub Check Reading Exists
  5.003  EVAL   -e MEM >= 49 && MEM <= 51 : 15mV at 50H
  6.001  9500         15mV                         100H           LS    S
  6.002  CALL         Sub Check Reading Exists
  6.003  EVAL   -e MEM >= 99 && MEM <= 101 : 15mV at 100H
  7.001  9500         15mV                         1kH            LS    S
  7.002  CALL         Sub Check Reading Exists
  7.003  EVAL   -e MEM >= 999 && MEM <= 1001 : 15mV at 1kH
  8.001  9500         15mV                         10kH           LS    S
  8.002  CALL         Sub Check Reading Exists
  8.003  EVAL   -e MEM >= 9999 && MEM <= 10001 : 15mV at 10kH
  9.001  9500         15mV                         100kH          LS    S
  9.002  CALL         Sub Check Reading Exists
  9.003  EVAL   -e MEM >= 99999 && MEM <= 100001 : 15mV at 100kH
 10.001  9500         15mV                         1MH            LS    S
 10.002  CALL         Sub Check Reading Exists
 10.003  EVAL   -e MEM >= 999999 && MEM <= 1000001 : 15mV at 1MH
 11.001  9500         15mV                         10MH           LS    S
 11.002  CALL         Sub Check Reading Exists
 11.003  EVAL   -e MEM >= 9999999 && MEM <= 10000001 : 15mV at 10MH
 12.001  9500         15mV                         15MH           LS    S
 12.002  CALL         Sub Check Reading Exists
 12.003  EVAL   -e MEM >= 14999999 && MEM <= 15000001 : 15mV at 15MH
 13.001  9500         15mV                         20MH           LS    S
 13.002  CALL         Sub Check Reading Exists
 13.003  EVAL   -e MEM >= 19999999 && MEM <= 20000001 : 15mV at 20MH
 14.001  9500         15mV                         20MH           LS    S
 14.002  CALL         Sub Check Reading Exists
 14.003  EVAL   -e MEM >= 19999999 && MEM <= 20000001 : 15mV at 20MH
 15.001  9500         15mV                         30MH           LS    S
 15.002  CALL         Sub Check Reading Exists
 15.003  EVAL   -e MEM >= 29999999 && MEM <= 30000001 : 15mV at 30MH
 16.001  9500         15mV                         40MH           LS    S
 16.002  CALL         Sub Check Reading Exists
 16.003  EVAL   -e MEM >= 39999999 && MEM <= 40000001 : 15mV at 40MH
 17.001  9500         15mV                         50MH           LS    S
 17.002  CALL         Sub Check Reading Exists
 17.003  EVAL   -e MEM >= 49999999 && MEM <= 50000001 : 15mV at 50MH
 18.001  9500         15mV                         60MH           LS    S
 18.002  CALL         Sub Check Reading Exists
 18.003  EVAL   -e MEM >= 59999999 && MEM <= 60000001 : 15mV at 60MH
 19.001  9500         15mV                         70MH           LS    S
 19.002  CALL         Sub Check Reading Exists
 19.003  EVAL   -e MEM >= 69999999 && MEM <= 70000001 : 15mV at 70MH
 20.001  9500         15mV                         80MH           LS    S
 20.002  CALL         Sub Check Reading Exists
 20.003  EVAL   -e MEM >= 79999999 && MEM <= 80000001 : 15mV at 80MH
 21.001  9500         15mV                         90MH           LS    S
 21.002  CALL         Sub Check Reading Exists
 21.003  EVAL   -e MEM >= 89999999 && MEM <= 90000001 : 15mV at 90MH
 22.001  9500         15mV                         99MH           LS    S
 22.002  CALL         Sub Check Reading Exists
 22.003  EVAL   -e MEM >= 98999999 && MEM <= 99000001 : 15mV at 99MH

 23.001  HEAD         Channel A Period at 10Hz
 23.002  RSLT         =Channel A Period at 10Hz

 23.003  IEEE         [TERM 13][TERM 10][T5000][D500]
 23.004  IEEE         IN[D500]
 23.004  IEEE         FU2,GA2[D500]
 23.005  IEEE         SM255[D500]
 23.006  IEEE         [SRQ OFF]

 23.007  9500         100mV                        10H            LS    S
 23.008  CALL         Sub Check Reading Exists
 23.009  EVAL   -e MEM >= 0.09993 && MEM <= 0.10007 : 99.93ms < T < 100.07ms

 24.001  HEAD         Channel A Filter and Attenuation
 24.002  RSLT         =Channel A Filter and Attenuation

 24.003  IEEE         [TERM 13][TERM 10][T5000][D500]
 24.004  IEEE         IN[D500]
 24.004  IEEE         GA2[D500]
 24.005  IEEE         SM255[D500]
 24.005  IEEE         DI[D500]
 24.005  IEEE         DI[D500]
 24.006  IEEE         [SRQ OFF]

 24.007  IEEE         FI0[D500]
 24.008  9500         10mV                         110kH          LS    S
 24.009  CALL         Sub Check Reading Exists
 24.010  EVAL   -e MEM >= 109999.997 && MEM <= 110000.003 : 110kH, FILT: OFF

 25.001  IEEE         FI1[D500]
 25.002  9500         10mV                         110kH          LS    S
 25.003  OPBR         Is the frequency reading on the UUT erratic?
 25.004  EVAL   -e MEM1 == 1 : 110kH, FILT: ON

 26.001  IEEE         FI0[D500]
 26.002  IEEE         AT1[D500]
 26.003  9500         10mV                         110kH          LS    S
 26.004  CALL         Sub Check Reading Exists
 26.005  EVAL   -e MEM != 1 : 1MH, ATTN: 20x

 27.001  IEEE         AT0[D500]
 27.002  9500         10mV                         110kH          LS    S
 27.003  CALL         Sub Check Reading Exists
 27.004  EVAL   -e MEM >= 109999.997 && MEM <= 110000.003 : 1MH, ATTN: 1x

 28.001  HEAD         Channel B Input Sensitivity
 28.002  RSLT         =Channel B Input Sensitivity

 28.003  DISP         Connect 9500's 9530 active head to UUT's input B.

 28.004  IEEE         [TERM 13][TERM 10][T5000][D500]
 28.005  IEEE         IN[D500]
 28.005  IEEE         FU3[D500]
 28.006  IEEE         SM255[D500]
 28.007  IEEE         [SRQ OFF]

 28.008  9500         15mV                         90MH           LS    S  L
 28.009  CALL         Sub Check Reading Exists
 28.010  EVAL   -e MEM >= 89999950 && MEM <= 90000050 : 15mV at 90MH
 29.001  9500         15mV                         92MH           LS    S  L
 29.002  CALL         Sub Check Reading Exists
 29.003  EVAL   -e MEM >= 91999950 && MEM <= 92000050 : 15mV at 92MH
 30.001  9500         15mV                         96MH           LS    S  L
 30.002  CALL         Sub Check Reading Exists
 30.003  EVAL   -e MEM >= 95999950 && MEM <= 96000050 : 15mV at 96MH
 31.001  9500         15mV                         100MH          LS    S  L
 31.002  CALL         Sub Check Reading Exists
 31.003  EVAL   -e MEM >= 99999950 && MEM <= 100000050 : 15mV at 100MH
 32.001  9500         10mV                         100MH          LS    S  L
 32.002  CALL         Sub Check Reading Exists
 32.003  EVAL   -e MEM >= 99999950 && MEM <= 100000050 : 10mV at 100MH
 33.001  9500         10mV                         200MH          LS    S  L
 33.002  CALL         Sub Check Reading Exists
 33.003  EVAL   -e MEM >= 199999950 && MEM <= 200000050 : 10mV at 200MH
 34.001  9500         10mV                         500MH          LS    S  L
 34.002  CALL         Sub Check Reading Exists
 34.003  EVAL   -e MEM >= 499999950 && MEM <= 500000050 : 10mV at 500MH
 35.001  9500         10mV                         700MH          LS    S  L
 35.002  CALL         Sub Check Reading Exists
 35.003  EVAL   -e MEM >= 699999950 && MEM <= 700000050 : 10mV at 700MH
 36.001  9500         10mV                         900MH          LS    S  L
 36.002  CALL         Sub Check Reading Exists
 36.003  EVAL   -e MEM >= 899999950 && MEM <= 900000050 : 10mV at 900MH
 37.001  9500         10mV                         1000MH         LS    S  L
 37.002  CALL         Sub Check Reading Exists
 37.003  EVAL   -e MEM >= 999999950 && MEM <= 1000000050 : 10mV at 1000MH

 38.001  HEAD         Time Base Check
 38.002  RSLT         =Time Base Check
 38.003  MATH         MEM2 = "Time base frequency offset < 4x10^-7"
 38.004  MATH         S[1] = "Is the UUT's time base frequency offset less than 4x10^-7?"
 38.005  MESS         Disconnect the 10MHz reference from UUT. Set UUT rear panel
 38.005  MESS         switch to INT. Connect UUT rear panel 10MHz output to scope and
 38.005  MESS         compare UUT's internal clock to an accurate 10MHz signal.
 38.005  MESS
 38.006  EVAL   -s MEM2 : [S1]

 39.001  END
