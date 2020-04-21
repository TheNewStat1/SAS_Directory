
/* Code to Conduct a Simple Merge of Your Data Tables */

PROC SORT DATA=WORK.DATASET1;
BY SORT_VAR;
RUN;

PROC SORT DATA=WORK.DATASET2;
BY SORT_VAR;
RUN;


DATA TEST;
	MERGE WORK.DATASET1 WORK.DATASET2;
	BY SORT_VAR;
RUN;


/* Using the IN Statement to organize output when merging */

data damage_detail storm_other;
    merge storm_final_sort(in=inFinal) /* Using IN statements to create indicators */
          storm_damage(in=inDamage);
    by Season Name;
    if inDamage=1 and inFinal=1 then output damage_detail; /* Using temporary IN variables to Filter*/
    else output storm_other;
run; 

