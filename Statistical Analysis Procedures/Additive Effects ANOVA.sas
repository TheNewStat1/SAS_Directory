
/* Code for running a Additive Effects ANOVA analysis */

FILENAME REFFILE '/home/ppratikbp0/Datasets_Excel/breastcancer.xlsx';
PROC IMPORT DATAFILE=REFFILE
	DBMS=XLSX
	OUT=WORK.breastcancer;
	GETNAMES=YES;
RUN;

/* Running Additive Effects ANOVA with PROC MIXED */
proc mixed data=breastcancer method=type3;
class 'tumor-size'n breast;
model 'deg-malig'n = 'tumor-size'n breast;
store additive;
run;

/* Follow-up Means Comparison Test after ANOVA */
ods graphics on;
proc plm restore=additive;
lsmeans 'tumor-size'n breast  / adjust=tukey plot=meanplot cl lines;
/* Because the 2-factor interaction is significant, we need to work with the treatment combination means */
ods exclude diffs diffplot;
run; title; 
run;






