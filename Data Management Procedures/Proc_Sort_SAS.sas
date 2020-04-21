
/* Syntax of the PROC SORT Procedure */
/* You can Specify whether you want sort to be Ascending(Default) or Descending */

PROC SORT DATA=TABLE OUT=OUTPUT_TABLE;
BY VAR1 ; 
RUN;

PROC SORT DATA=TABLE OUT=OUTPUT_TABLE;
BY DESCENDING VAR1;
RUN;


/* You can Specify a sort order for multiple variables */

PROC SORT DATA=TABLE OUT=OUTPUT_TABLE;
BY VAR1 VAR2 VAR3 ; /* */
RUN;


/* Using PROC SORT to Remove Duplicate Rows */

PROC SORT DATA=TABLE OUT=OUTPUT_TABLE
	NODUPRECS DUPOUT=DUP_OUT_TABLE;
	BY _ALL_ ;
RUN;


/* Removing Duplicate Variables by a Specific Key */
/* The NODUPKEY option keeps only the first occurrence for each unique value in the BY statement */

PROC SORT DATA=TABLE OUT=OUTPUT_TABLE
	NODUPKEY DUPOUT=DUP_OUT_TABLE;
	BY VAR1 ;
RUN;


/* Using the KEEP Option to specify which variables to output from PROC SORT */

PROC SORT DATA=TABLE(KEEP= VAR1 VAR2) OUT=OUTPUT_TABLE 
	NODUPKEY;
	BY VAR1 VAR2;
RUN;


