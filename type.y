%{
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
extern FILE *yyin;
%}

%token DTYPE COMMA SC ID NL EQ NUM

%%
start : valist {printf("\nvalid");}
valist : DTYPE varlist SC NL
|DTYPE varlist SC NL valist
|DTYPE varlist SC
|DTYPE varlist EQ ID SC
|DTYPE varlist EQ NUM SC ;

varlist : varlist COMMA ID | ID;
%%
yywrap(){}

main(){
    yyin = fopen("input.java","r");
    yyparse();
    yywrap();
    printf("\n");
}

yyerror(){
    printf("\nerror");
}