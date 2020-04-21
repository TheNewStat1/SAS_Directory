
/* DO looping with SAS */

DATA TEST;
	SET SET_TEST;
DO INDEX= 1 TO 50 BY 1; 
VALUE = VALUE*1.5;
OUTPUT;
END;
RUN;


/* Example code iterating through the DO Loop */

data YearlySavings;
    Amount=200;
    do Month=1 to 12; /* create index to go through */
       Savings+Amount; /* operations to do during each iteration */
       output;
    end;
    format Savings 12.2;
run;

/* Outputing each iteration of a DO loop using OUTPUT */

data retirement;
    do Year = 1 to 6; /* Output 6 iterations of 'Year' variable */
       Invest+10000;
       output;
    end;
run;

/* You can also nest DO loops and choose how you want to OUTPUT the iteration */

data retirement;
    do Year = 1 to 6;
       Invest+10000;
       do Quarter = 1 to 4;
          Invest+(Invest*(.075/4));
       end;
       output; /* Here the OUTPUT is going to be for the year iteratation */
    end;
run;

/* The DO loop with IF-THEN-ELSE is a very common procedure */

data ForecastDayVisits;  
    set pg2.np_summary;
    ForecastDV=DayVisits;
    NextYear=year(today())+1;
    do Year = NextYear to NextYear+4; /* IF statement following the DO loop */
       if Type='NM' then ForecastDV=ForecastDV*1.05;
       if Type='NP' then ForecastDV=ForecastDV*1.08;
       output;
    end;
run;


/* DO WHILE Loops */

DATA TEST;
SET SET_DATA;
DO WHILE (CONDITION > 10);
/* SAS CODE EXECUTES WHILE THE CONDITION IS TRUE ; */
END;
RUN;

/* DO UNTIL Loops */

DATA TEST;
	SET SET_DATA;
DO UNTIL (CONDITION < 10);
/* SAS CODE EXECUTES UNTIL THE CONDITION IS TRUE ; */
END;
RUN;

