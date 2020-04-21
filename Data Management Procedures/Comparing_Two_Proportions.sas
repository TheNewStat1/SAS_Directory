
LIBNAME CLASS "C:\Users\Pratik\Desktop\Data Science Learning\Applied Elementary Statistics";

PROC FREQ DATA=CLASS.CLASS_SURV ;
TITLE "COMPARE TWO PROPORTIONS USING CHISQ AND RISKDIFF";
TABLE Gender Approve_Same_Sex Gender*Approve_Same_Sex / RISKDIFF CHISQ ALPHA=0.05;
RUN;

