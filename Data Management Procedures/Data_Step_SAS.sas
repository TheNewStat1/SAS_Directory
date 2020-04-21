

/* The Base DATA Step Syntax */

DATA TABLE;
	SET INPUT_TABLE;
RUN;

/* Using the Data step with the WHERE Statement */

DATA TABLE;
	SET INPUT_TABLE;
	WHERE EXPRESSION ;
RUN;

/* Using the DROP & KEEP Statements in a DATA step */

DATA TABLE;
	SET INPUT_TABLE;
	DROP VAR1 VAR3;
	KEEP VAR2 VAR4;
RUN;

/* Using the FORMAT Statement in the DATA step */

DATA TABLE;
	SET INPUT_TABLE;
	FORMAT VAR1 4. VAR2 5.1 VAR3 $5. ;
RUN;

DATA TABLE;
	SET INPUT_TABLE;
	FORMAT MONEY1 MONEY2  MONEY3 DOLLAR2. ;
RUN;


/* Creating new Calculated Variables with DATA Step*/

DATA TABLE;
	SET INPUT_TABLE;
	NEW_VAR1 = VAR1 + 1;
RUN;


/* Basic Syntax for Functions in SAS DATA Steps */

DATA TABLE;
	SET INPUT_TABLE;
	NEW_VAR1 = FUNCTION-NAME(VAR1, VAR2);
RUN;



/* List of Common Functions with Unlimited Arguments for Calculations */

DATA TABLE;
	SET INPUT_TABLE;
	NEW_VAR1 = SUM(NUM1, NUM2) ;	/* Sum function */
	NEW_VAR2 = MEAN(NUM1, NUM2) ; 	/* Mean function */
	NEW_VAR3 = MEDIAN(NUM1, NUM2) ;	/* Median Function */
	NEW_VAR4 = RANGE(NUM1, NUM2) ;	/* Range Function */
	NEW_VAR5 = MIN(NUM1, NUM2) ;	/* Minimum function */
	NEW_VAR6 = MAX(NUM1, NUM2) ;	/* Maximum function */
	NEW_VAR7 = N(NUM1, NUM2) ;		/* Non-empty Count function */
	NEW_VAR8 = NMISS(NUM1, NUM2) ;	/* Missing Count Function*/
RUN;


/* List of Common Character Functions for manipulating character strings */

DATA TABLE;
	SET INPUT_TABLE;
	NEW_VAR1= UPCASE(CHAR1) ; 					/* Makes string uppercase */
	NEW_VAR2 = LOWCASE(CHAR2) ;					/* Makes string lowercase*/
	NEW_VAR3 = PROPCASE(CHAR3) ;				/* Makes First letter uppercase and subsequent lower */
	NEW_VAR4 = CATS(CHAR1, CHAR2, CHAR3) ;		/* Concatenates character strings and removes leading and trailing blanks from each argumen */
	NEW_VAR5 = SUBSTR(CHAR1, NUM_POSITION, W) ; /* Returns a substring from a character string */ 
RUN;


/* List of Common Date Functions for Dealing with Dates in SAS */

DATA TABLE;
	SET INPUT_TABLE;
	NEW_VAR1= MONTH(DATE1) ; 			/* Returns Month */
	NEW_VAR2 = YEAR(DATE2) ; 			/* Returns Year */
	NEW_VAR3 = DAY(DATE3);				/* Returns Day */
	NEW_VAR4 = WEEKDAY(DATE4) ;			/* Returns Day of the Week */
	NEW_VAR5 = QTR(DATE4) ;				/* Returns Bussiness Quarter */
	NEW_VAR6 = TODAY() ;				/* Returns todays date */
	NEW_VAR7 = MDY(MONTH, DAY, YEAR) ;	/* Returns a SAS date value from numeric month, day, and year values*/
	NEW_VAR8 = YRDIF(START_DATE, END_DATE, 'AGE') ; /* Calculates Age between dates */
RUN;

/* Using the SCAN function to create new Variables */

DATA TABLE;
	SET INPUT_TABLE;
	NEW_VAR = SCAN(WORD,NTH_WORD,'DEMILITER1') ; /* Finds the Nth word from 'WORD' seperated by 'Delimiters' */
RUN;

