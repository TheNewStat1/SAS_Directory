
/* Path to Excel Datasets */
%let path = C:\Users\Pratik\Desktop\Special Project\GIS\Census Data\&folder ;

/* Import Macro */
%macro import(filename, finalname) ;

proc import datafile = "&path\&file..xlsx" dbms=xlsx replace 
out=temp;
getnames=yes ;
run;

%mend import;

%import(filename, finalname);