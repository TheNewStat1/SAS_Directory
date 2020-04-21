

/* This is how you collect a systematic random sample(SELECT KTH OBS) from data */
DATA SUBSET;
	DO START_SELECT=1 TO FINAL_SELECT BY 50; 	/* selects obs from number 1 and every 50th observations */
		SET WORK.DATA POINT=START_SELECT NOBS=FINAL_SELECT ;

		OUTPUT;
	END;
	STOP;
RUN;


/* Example */

DATA WORK.AIR_SUBSET ;
	DO START = 5 TO F_SELECT BY 5;
		SET SASHELP.AIR POINT=START NOBS=F_SELECT ;
		OUTPUT;
	END;
STOP;
RUN;
		


