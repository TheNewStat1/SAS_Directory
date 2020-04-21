
LIBNAME CLASS "C:\Users\Pratik\Desktop\Data Science Learning\Applied Elementary Statistics";

ODS GRAPHICS ON;
PROC TTEST DATA=CLASS.CLASS_SURV ALPHA=0.05 ;
TITLE "COMPARING TWO MEANS WITH T-TEST" ;
VAR Weight;
CLASS Uncommitted_Sex ;
RUN;

