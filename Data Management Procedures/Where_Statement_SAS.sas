

/* Understanding the WHERE Statement */
/* Example Using PROC PRINT */

PROC PRINT DATA=TABLE;
	VAR VAR1 VAR2 SCORE;
	WHERE SCORE > 90 ;
RUN;



/* Operators for Working with WHERE Statements */

/*
= or EQ  		**For Equal to**
^= or ~= or NE  **For Not-Equal to**
> or GT 		**For Greater Than**
< or LT 		**For Less Than**
<= or LE 		**For Less-Than or Equal to**
>= or GE 		**For Greater Than or Equal to**
*/



/* Logical Operators with Where Statements */

/*
AND 			**For Logical 'And' Exclusion**
OR				**For Logical 'Or" Exclusion**
*/



/* Using the WHERE IN Clause Example */

PROC PRINT DATA=TABLE;
	VAR VAR1 VAR2 SCORE;
	WHERE SCORE IN (80, 90) ;
		WHERE SCORE IN (80 90) ; /* This is also Valid syntax */
RUN;



/* Using WHERE to Filter with Date Formats */

PROC PRINT DATA=TABLE;
	WHERE DATE_VAR >= "01JAN2010"D ;
RUN;

PROC PRINT DATA=SASHELP.COUNTSERIES;  /* Here is an Example Using SASHELP Data */
	WHERE DATE >= "01JAN2010"D ;
RUN;


/* Using WHERE Statement to Find Missing Values (Couple of Options)*/

PROC PRINT DATA=TABLE;
WHERE TYPE=. OR TYPE="" ;
RUN;

PROC PRINT DATA=TABLE;
VAR TYPE NAME ITEM ;
WHERE TYPE IS MISSING AND 
		NAME IS NOT MISSING AND
		ITEM IS NULL;
RUN;


/* Using the Between Operator in WHERE Statements */

PROC PRINT DATA=TABLE;
VAR AGE;
WHERE AGE BETWEEN 20 AND 39 ;
RUN;


/* Using the LIKE operator to do Pattern Matching */

PROC PRINT DATA=TABLE;
VAR AGE;
WHERE AGE LIKE "2%" ; /* Searches for 2 and any other numbers after that */
RUN;

/* Using the UPCASE function in a WHERE Statement */

PROC PRINT DATA=TABLE;
	VAR PARK LOC COUNT ;
	WHERE UPCASE(LOC) LIKE '%MAIN ENTRANCE%'; /* Searches for 'uppercase 'Main Entrance' */
RUN;