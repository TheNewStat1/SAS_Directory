
/* Syntax for TITLE Statement */

TITLE<n> "This is a Simple Title";


/* Syntax for FOOTNOTE Statement */

FOOTNOTE<n> "This is a Simple FootNote";


/* Use NULL TITLE & FOOTNOTE Statements */

TITLE;

FOOTNOTE;


/* You can use a Macro Variable in the TITLE and FOOTNOTES  */

%LET MAC = MAC_VAR ;

TITLE1 "This is me using the Macro Variable &MAC in a Title" ;


/* If you want to exclude titles in your code when they are present use the Following Option */

ODS NOPROCTITLE;

