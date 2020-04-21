

LIBNAME CLASS "C:\Users\Pratik\Desktop\Data Science Learning\Applied Elementary Statistics";


PROC FREQ DATA=CLASS.CLASS_SURV;
TITLE "FINDING AN ASSOCIATION BETWEEN CATEGORICAL VARIABLES" ;
TABLE Uncommitted_Sex*Ever_Cheat / CHISQ RISKDIFF RELRISK OR;
RUN;
