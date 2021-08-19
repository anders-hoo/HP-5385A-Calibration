none                                                        MET/CAL Procedure
=============================================================================
INSTRUMENT:            Sub Check Reading Exists
DATE:                  2016-09-28 11:32:19
AUTHOR:                Antti Harala
REVISION:
ADJUSTMENT THRESHOLD:  70%
NUMBER OF TESTS:       1
NUMBER OF LINES:       21
=============================================================================
 STEP    FSC    RANGE NOMINAL        TOLERANCE     MOD1        MOD2  3  4 CON
  1.001  IEEE         WA1[D2000]
  1.002  IEEE         [SPL 1]
  1.003  IEEE         WA0
  1.004  WAIT         [D2500]
  1.005  IF           MEM == 1
  1.006  IEEE         [I][SDC]
  1.007  ELSEIF       MEM != 1
  1.008  MATH         MEM = 0
  1.009  ENDIF
  1.010  END
