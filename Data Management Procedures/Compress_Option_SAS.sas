

/* Compressing SAS datasets Using the RLE Algorithm (Run-Length-Encoding) */

OPTIONS COMPRESS=YES;
/* How to compress character data */
DATA WORK.TEST(COMPRESS=CHAR);
	SET SET_DATASET;
	/* MORE SAS CODE */
RUN;


/* How to compress numeric data */
DATA WORK.TEST(COMPRESS=BINARY);
	SET SET_DATA;
/* RUN SAS CODE  */
RUN;

/* Use SAS REUSE statement to track reuse space */
OPTIONS REUSE=YES;
DATA WORK.TEST(REUSE=YES);
	SET WORK.TEST;
RUN;






