

/* Creating a reusable Macro Variable */
/* You can reuse a Macro Variable Anywhere else in your code */

%LET MACRO_NAME = TEXT ;

PROC PRINT DATA=TABLE;
VAR &MACRO_NAME ;
RUN;