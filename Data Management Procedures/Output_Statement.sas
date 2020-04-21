


/* Using the Output statement to write the current observation */
data forecast;
    set sashelp.shoes;
    Year=1;
    ProjectedSales=Sales*1.05;
    output;
    Year=2;
    ProjectedSales=ProjectedSales*1.05;
    output;
    Year=3;
    ProjectedSales=ProjectedSales*1.05;
    output;
run;