

/* Using the BY statement to Segment Reports and Procedures */

PROC SORT DATA=TABLE
	OUT=OUTPUT_TABLE;
BY VAR1 VAR2;
RUN;



