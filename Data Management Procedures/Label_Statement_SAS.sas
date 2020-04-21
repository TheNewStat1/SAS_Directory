

/* Using the LABEL Statement in SAS PROCs */

PROC MEANS DATA=TABLE;
	VAR MSRP MPG_HIGHWAY ;
LABEL MSRP = "Retail Price" MPG_HIGHWAY = "Highway Miles per Gallon" ;
RUN;


/* Using the LABEL Statement in PROC PRINT */

PROC PRINT DATA=TABLE LABEL;
	VAR MSRP MPG_HIGHWAY ;
LABEL MSRP = "Retail Price" MPG_HIGHWAY = "Highway Miles per Gallon" ;
RUN;


/* Using the LABEL Statement in the DATA Step */
/* This Creates Labels for the Variables in the Dataset */

DATA TABLE;
	SET INPUT_TABLE;
LABEL MSRP= "Retail Price" MPG_HIGHWAY = "Highway Miles per Gallon" ;
RUN;






