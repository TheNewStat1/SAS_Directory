
/* Using Conditional IF-THEN Logic in DATA Step Syntax */

DATA TABLE;
	SET INPUT_TABLE;
	IF EXPRESSION_1 THEN STATMENT_1;
	IF EXPRESSION_2 THEN STATEMENT_2;
RUN;

/* Using IF-THEN-ELSE Logic */
/* You can use Compound Conditional Logic with 'AND' and 'OR' */

DATA TABLE;
	SET INPUT_TABLE;
	IF EXPRESSION_1 THEN STATMENT_1;
	ELSE IF EXPRESSION_1 THEN STATEMENT_2;
	ELSE STATEMENT_3 ;

	IF EXPRESSION_2 AND EXPRESSION_3 THEN STATEMENT_4 ;
	
RUN;


/* Using the LENGTH Statement when creating a Character Variable */

DATA TABLE;
	SET INPUT_TABLE;
	LENGTH COMMENTS $15;
	IF SCORE > 90 THEN COMMENTS = "Greeeeeeaaaaaat!";
RUN;


/* Using IF-THEN-DO Conditional Logic in SAS */
/* You can also use the OUTOUT Statement to generate new variables in new datasets */

DATA TABLE_GOOD TABLE_BAD;
	SET INPUT_TABLE;
	IF SCORE > 90 THEN DO;
			COMMENTS = "Greeeeeeaaaaaat!";
			GRADE = 'A' ;
			OUTPUT TABLE_GOOD ;
	END;
	ELSE IF SCORE <= 90 THEN DO;
			COMMENTS = "Booooooooooo";
			GRADE = 'F' ;
			OUTPUT TABLE_BAD ;
	ELSE DO;
			COMMENTS = "No Grade" ;
			GRADE = "" ;
	END;
RUN;


/* You can also use the IN Clause in an IF_THEN Statement */

DATA TABLE;
	SET INPUT_TABLE;
IF TYPE='NM' THEN PARKTYPE='Monument';
    ELSE IF TYPE='NP' then PARKTYPE='Park';
    ELSE IF Type IN ('NPRE', 'PRE', 'PRESERVE') then ParkType='Preserve'; /* Using IN Clause in IF Statements */
RUN;




