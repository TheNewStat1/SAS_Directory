
/* Appending(Contatenating) tables with same variables and data types using SET */

DATA TEST;
	SET WORK.CONCAT1 WORK.CONCAT2;
RUN;

/* Use RENAME to adjust the names of your variables */

data class_current;
    set sashelp.class 
        pg2.class_new2(rename=(Student=Name));
run; 


