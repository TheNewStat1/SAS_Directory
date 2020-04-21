
/* Base PROC UNIVARIATE Syntax */
/*  PROC UNIVARIATE also computes summary statistics for us, but it also gives us the 5 extreme low and high values. */

PROC UNIVARIATE DATA=TABLE;
	VAR VAR1 VAR2 ;
RUN;


/* Using the Trace/Select Options with PROC UNIVARIATE (Selecting Extreme Observations) */

ODS TRACE ON;
PROC UNIVARIATE DATA=TABLE;
	VAR VAR1 ;
RUN;
ODS TRACE OFF;

ODS SELECT EXTREMEOBS;
PROC UNIVARIATE DATA=TABLE;
	VAR VAR1 ;
RUN;

/* Increasing or Decreasing the Number of Selected Extreme Observations */

ODS SELECT EXTREMEOBS;
PROC UNIVARIATE DATA=TABLE NEXTROBS=N;
	VAR VAR1 ;
RUN;


