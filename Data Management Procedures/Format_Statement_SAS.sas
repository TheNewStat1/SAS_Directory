
/* Using SAS Formats */

PROC PRINT DATA=TABLE;
	FORMAT COL-NAMES FORMAT.;
RUN;

/* Components of SAS Formats */

/*
<$>FORMAT-NAME<w>.<d>

$ 		**Needed to specifiy a character Format**
. 		**Required delimiter**
w		**Specify the Length of Format**
d		**Needed to specify decimal points**
*/



/* List of most common Formats */

/*
w.d 			**SAS Numeric format (You can exclude the Decimal 'd')**
COMMAw.d		**SAS numeric Format to include Commas**
DOLLARw.d		**SAS Numeric Format to Convert Currency**
*/


/* Common SAS Date Formats */

/*
DATE7. 		**Display example 15Jan18**
DATE9.		**Display example 15Jan2018**
MMDDYY10.	**Display example 01/15/2018**
DDMMYY8.	**Display example 15/01/18**
MONYY7.		**Display example Jan2018**
MONNAME.	**Display example January**
YEAR4.		**Display example 2018**
*/




/* Note about Formats  */

/* Formats that you use in the DATA step are permanent attributes that are 
stored in the descriptor portion of the table. Formats that you use in a PROC step 
are temporary attributes. */ 




/* PROC FORMAT procedure Example */

PROC FORMAT;
value hrange 50-57='Below Average'
             58-60='Average'
             61-70='Above Average';

VALUE $GENDERFMT 
			'F' = 'Female'
			'M' = 'Male' 
			other = 'Other' ;
VALUE YES_NO 
			1 = 'YES'
			2 = 'NO' ;
VALUE $YES_NO
			'Y' = 1
			'N' = 0 ;
RUN;

DATA TEST;
FORMAT OUTCOME YES_NO. GENDER $GENDERFMT. DIA_BP HRANGE. ;
/* MORE SAS CODE */
/* ... */
RUN; 





/* Extracting SAS Formats from SAS Datasets */

DATA WORK.FORMAT_TAB;
RETAIN FmtNAME '$CHAR_FORMAT' ;
	SET WORK.EXISTING_TABLE(RENAME=(VAR1 = START VAR2 = LABEL)) ;
	KEEP FmtNAME START LABEL;
RUN;

PROC FORMAT CNTLIN=WORK.FORMAT_TAB;
RUN;


/* Saving and retrieving saved Formats in SAS */

/* To save a format to a library use */
PROC FORMAT LIBRARY=LIB;
RUN;

/* This stores your format in a format file names "STOR_FORMAT" */
PROC FORMAT LIB=LIB.STOR_FORMAT;
RUN;

/* To search for a stored SAS format use OPTIONS FMTSEARCH= */
OPTIONS FMTSEARCH=(LIB.STOR_FORMAT LIB.OTHER_FORMAT); /* Searches one after another */

/* You can use either specification */
options fmtsearch=(pg2);
/* or */
options fmtsearch=(pg2.formats);




 



