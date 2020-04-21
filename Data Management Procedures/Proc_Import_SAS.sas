
/* PROC IMPORT Procedure syntax */

PROC IMPORT DATAFILE="PATH\FILENAME.EXT" DBMS=FILETYPE
	OUT=OUTPUT-TABLE ;
RUN;

/* Add the following options  */
/* You can use the REPLACE option to overwrite the SAS output table if it already exists */
/* You can use the GUESSINGROWS= option to provide a number of rows to examine 'N'*/
/* You can also use the keyword MAX to examine all rows. */

PROC IMPORT DATAFILE="PATH\FILENAME.EXT" DBMS=FILETYPE
	OUT=OUTPUT-TABLE REPLACE ;
	GUESSINGROWS=N|MAX ; /* | means 'or' */
RUN;


/* Code for Importing a CSV(Comma delimited) file */

PROC IMPORT DATAFILE="PATH\FILENAME.csv" DBMS=CSV
	OUT=OUTPUT-TABLE REPLACE ;
RUN;


/* Syntax for Importing an Excel file */

PROC IMPORT DATAFILE="PATH\FILENAME.xlsx" DBMS=XLSX
	OUT=OUTPUT-TABLE REPLACE ;
	SHEET=SHEET-NAME ;
RUN;

/* Syntax for Importing DAT datafiles (.dat) */
/* Importing data from a dat file */

PROC IMPORT DATAFILE="FILEPATH/FILENAME.dat" DBMS=dlm
	OUT=OUTPUT-TABLE;
    DELIMITER="|";
RUN;



