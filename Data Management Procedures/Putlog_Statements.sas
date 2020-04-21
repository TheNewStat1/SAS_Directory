

/* Using the Putlog statement to write text to the SAS log*/
data np_parks;
    set pg2.np_final (obs=5);
    putlog "NOTE: START DATA STEP ITERATION"; 
    Type=propcase(Type);
    putlog Type=;

    putlog _all_;
run;


