
/* Using PROC TRANSPOSE to restructure data */

/* Converting from 'Narrow' to 'Wide' Table */
PROC SORT DATA=IN_TABLE;
BY INDICATOR_VAR;
RUN;

PROC TRANSPOSE DATA=IN_TABLE OUT=OUT_TABLE PREFIX=PREFIX NAME=_NAME_RENAME;
VAR VAR_TO_TRANSPOSE ;
ID INDICATOR_VAR;
BY OTHER_INDICATOR_VARS ;
RUN;


/* Converting from 'Wide' to 'Narrow Table example */
proc transpose data=pg2.np_2016camping 
               out=work.camping2016_transposed(drop=_name_);
    by ParkName; 
    id CampType; /* The indicator variable */
    var CampCount; /* The variable you want to make transpose */
run;


