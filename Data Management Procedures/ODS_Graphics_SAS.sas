
/* Using the ODS Graphics to enhance PROC procedures */
/* Note you have to enable the PLOTS option */

ODS GRAPHICS ON;
PROC FREQ DATA=TABLE ;
	TABLE VAR1 VAR1 / PLOTS=ALL;
	LABEL VAR1="Variable 1" VAR2="Variable 2";
RUN;
ODS GRAPHICS OFF;


ODS GRAPHICS ON;
PROC UNIVARIATE DATA=TABLE PLOTS;
		VAR VAR1 VAR2 ;
		LABEL VAR1="Variable 1" VAR2="Variable 2";
RUN;
ODS GRAPHICS OFF;


