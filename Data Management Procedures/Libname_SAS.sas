
/* Libname statement */
LIBNAME LIBREF BASE "/PATH" ;

/* Connecting to an excel file */
OPTIONS VALIDVARNAME=UPCASE ;		/* This options Puts underscores for blanks */
LIBNAME XLSXFOLD XLSX "\PATH\EXCEL.xlsx" ;

/* Clears out the SAS library */
LIBNAME LIBREF CLEAR


