
/* load iris dataset */
proc import datafile="C:\Users\Pratik\Desktop\Data Science Learning\Example Datasets\iris.xlsx"
dbms=xlsx replace out=work.iris ;
getnames=yes;
run;

/* hard code way */
data work.iris_test_Start ;
set work.iris ;
id_char = left(put(id, $8.)) ;
sepal_length_char = left(put(sepal_length, $best8.)) ;
sepal_width_char = left(put(sepal_width, $best8.)) ;
petal_length_char = left(put(petal_length, $best8.)) ;
petal_width_char = left(put(petal_width, $best8.)) ;
drop 
id petal_length petal_width sepal_length sepal_width class ;
run;


%macro numberize(indata, outdata);

data work.num ;
	set &indata ;
run;

proc sql noprint;
select name, catx('',name,"_n") as new_name into :vars_n separated by ' ' , :new_vars_n SEPARATED by ' '
from dictionary.columns
where libname eq 'WORK' and memname eq 'NUM' ;
quit;

proc sql noprint;
create table rename as
select name, catx('',name,"_n") as new_name 
,
case 
	when name then '=' 
end as equals
from dictionary.columns
where libname eq 'WORK' and memname eq 'NUM' ;
quit;

proc sql;
select
catx(equals ,new_name, name) as equality 
into :equals separated by ' '
from rename;
quit;

data work.num_changed;
set work.num ;
array old[*] $ &vars_n ;
array new[*] &new_vars_n ;
do i = 1 to dim(new);
	new[i] = input(old[i], best32.);
end;
drop &vars_n i;
run;

data &outdata;
	merge work.num_changed;
	rename &equals ;
run;

%mend;

%numberize(work.iris_test_start, work.iris_test_final) ;






