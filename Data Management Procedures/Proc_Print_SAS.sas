
/* This is the Base PROC PRINT Procedure Syntax */

PROC PRINT DATA=TABLE ;
RUN;

/* This option allows you to print certian observations */

PROC PRINT DATA=TABLE (OBS=N) ;
RUN;

/* Printing certian Variables */

PROC PRINT DATA=TABLE ;
	VAR VAR1 VAR2 ;
RUN;


