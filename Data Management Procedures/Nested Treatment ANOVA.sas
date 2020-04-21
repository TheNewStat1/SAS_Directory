
/* Nested Treatment Design ANOVA analysis */

/* Example Nested Dataset */
data nested1;
input School $ Instructor response;
datalines;
Atlanta      1      25
Atlanta      1      29
Atlanta      2      14
Atlanta      2      11
Chicago      1      11
Chicago      1      6
Chicago      2      22
Chicago      2      18
SanFran      1      17
SanFran      1      20
SanFran      2      5
SanFran      2      2
; 
run;

/* Running a Nested Treatment Design using PROC MIXED */
proc mixed data=nested1 method=type3;
class School Instructor;
model response = School Instructor(School); /* This is the notation for nested effects */
store nested1;
run;

/* Post ANOVA mean comparision Test */
ods graphics on;
proc plm restore=nested1;
lsmeans School / adjust=tukey plot=meanplot cl lines;
lsmeans Instructor(School) / adjust=tukey plot=meanplot cl lines;
ods exclude diffs diffplot;
run;;