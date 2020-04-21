
LIBNAME CLASS "C:\Users\Pratik\Desktop\Data Science Learning\Applied Elementary Statistics";

ODS GRAPHICS ON;
PROC ANOVA DATA=CLASS.CLASS_SURV ;
TITLE "COMPARING MULTIPLE MEANS WITH ONE-WAY-ANOVA" ;
CLASS Religious_Importance;
MODEL GPA = Religious_Importance ;
MEANS Religious_Importance / TUKEY BON ALPHA=0.05;
RUN;
