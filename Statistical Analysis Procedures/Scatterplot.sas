
PROC IMPORT DATAFILE="C:\Users\Pratik\Desktop\Data Science Learning\Example Datasets\Applied Regression Analysis\Class_Survey.csv"
DBMS=CSV REPLACE OUT=CLASS_SURV;
GETNAMES=YES;
RUN;

SYMBOL1 INTERPOL=RL VALUE=CIRCLE;
PROC GPLOT DATA=WORK.CLASS_SURV;
PLOT gpa * weekly_study / VAXIS=AXIS1 HAXIS=AXIS2
FRAME ;
RUN;
