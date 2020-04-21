* Binomial exact test ;

proc sort data=work.liver;
by descending gender ;
run;

proc freq data=Liver;
   tables gender / binomial(exact level="Female");
   title 'Gender Binomial Exact test';
run;

