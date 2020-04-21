

/* T test for n in both groups */
proc power; 
twosamplemeans test=diff 
groupmeans = 10 | 15 
stddev = 15
npergroup = . 
power = 0.8; 
run;


/* T test for power with two defined groups */
proc power; 
twosamplemeans test=diff 
groupmeans = 10 | 15 
stddev = 15
groupns = (150 150)
power = .; 
run;


/* T test for power unequal groups How it effects power */ 
proc power; 
twosamplemeans test=diff 
groupmeans = 10 | 15 
stddev = 15
groupns = (150 100)
power = .; 
run;


/* gives multiple mean differences by 0.1 incrememnts n per group */
proc power; 
twosamplemeans test=diff 
meandiff = 0.3 to 0.8 by 0.1
stddev = 1
power = 0.80 
npergroup = . ; 
run;


/* T test with incremented standard deviation sample size per_group */
proc power; 
twosamplemeans test=diff 
meandiff = 0.5
stddev = 0.5 to 1.0 by 0.1
power = 0.80 
npergroup = . ; 
run;


/* T test increments the desired power to get sample size */
proc power; 
twosamplemeans test=diff 
meandiff = 0.5
stddev = 1.0
power = 0.5 to 0.9 by 0.1 
npergroup = . ; 
run;


/* T test equivalence with mean diff 4 looking for N_total */
proc power; 
twosamplemeans test=equiv_diff
lower = 2
upper = 5
meandiff = 4
stddev = 8
ntotal = .
power = 0.8; 
run;


/* The chi-square comparing odds ratios sample size */
proc power; 
twosamplefreq test=pchi
oddsratio = 2.0
refproportion = 0.3
power = 0.8
ntotal = .; 
run;


/* tests difference in proportions sample size */
proc power; 
twosamplefreq test=pchi
proportiondiff = 0.2
refproportion = 0.3
power = 0.8
ntotal = .; 
run;


/* compares two proportions directly between groups */
proc power; 
twosamplefreq test=fisher
groupproportions = (0.35 0.15)
power = 0.8
ntotal = .; 
run;


/* logistic regression sample size for odds ratio */
proc power;
logistic
alpha = 0.05
vardist ('X') = binomial (0.5, 1)
testpredictor = 'X'
testoddsratio = 2.5
responseprob = 0.70
power = 0.8
ntotal = .;
run;

/* survival analysis sample size */
proc power;
twosamplesurvival test = logrank
hazardratio = 1.5
refsurvexphazard = 0.7
accrualtime = 2
totaltime = 4
power = 0.80
ntotal = .;
run;


