
/* This is a simple example of using the input function to change
   a character to a numeric data type */

data work.stocks2;
    set pg2.stocks2;
    Date2=input(Date,date9.); /* converts character date to Date2 */
    Volume2=input(Volume,comma12.); /* Converts Volume to numeric Volume2  */
run;


/* The reciprical PUT function converts numeric to character */
data work.stocks2;
    set pg2.stocks2;
    Date2=put(Date, mmddyy10.); /* converts character date to Date2 */
    Volume2=input(Volume,$10.); /* Converts Volume to numeric Volume2  */
run;



/* 3 steps for changing the type of a variable */
data work.stocks2;
    set pg2.stocks2 (RENAME=(VOLUME = CHAR_VOLUME));
    Date2=input(Date,date9.);
    Volume=input(CHAR_VOLUME,comma12.);
	DROP CHAR_VOLUME
run;