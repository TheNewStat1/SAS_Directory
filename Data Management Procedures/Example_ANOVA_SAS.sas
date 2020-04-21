/* Load graphics features */
ods graphics on;

/* Example Data */
data greenhouse;
input fert $ Height;
datalines;
Control      21
Control      19.5
Control      22.5
Control      21.5
Control      20.5
Control      21
F1      32
F1      30.5
F1      25
F1      27.5
F1      28
F1      28.6
F2      22.5
F2      26
F2      28
F2      27
F2      26.5
F2      25.2
F3      28
F3      27.5
F3      31
F3      29.5
F3      30
F3      29.2
;
run;


/* Running the ANOVA analysis with PROC MIXED */
proc mixed data=greenhouse method=type3 plots=all;
class fert;
model height = fert;
store results; /*Stores results for the next procedure (results is name I give)*/
title 'ANOVA of Greenhouse Data';
run;


/* Follow up to the ANOVA analysis for mean comparisons using PROC PLM */
proc plm restore=results; 
lsmeans fert / adjust=tukey plot=meanplot cl lines; 
/* The lsmeans statement here prints out the model fit means, performs the Tukey
      mean comparisons, and plots the data. */
ods exclude diffplot; 
run; 
title; run;







