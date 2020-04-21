
/* DATA Step Restructuring the Table */

/* This is how you create a new indicator variable
	and joint two existing variables 'Wide' to 'Narrow' Table conversion*/
DATA TEST;
	SET SET_DATA;
NEW_VAR = "VALUE";
JOINT_VAR = EXISTING_VAR;
OUTPUT;
NEW_VAR = "VALUE2";
JOINT_VAR = EXISTING_VAR2;
OUTPUT;
RUN;

/* This is an example of converting a 'Narrow' table to 'Wide' */

/* using an indicator variable to convert from 'Narrow' to 'Wide' Table */
DATA TEST;
	SET SET_DATA;
    retain Name Math Reading;
    if TestSubject="Reading" then Reading=TestScore; /* creates variable called reading with unique testscores */
    else if TestSubject="Math" then Math=TestScore; /* creates variable called math with unique testscores */
	if last.name = 1 then output;
	output;
run;



