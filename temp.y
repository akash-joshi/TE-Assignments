%{
#include<stdio.h>
%}
%token NL DTYPE ID NUM SC COMMA EQ;
%%
start: valist {printf("valid\n");}
valist :valist DTYPE varlist SC NL | DTYPE varlist SC NL;
varlist : varlist COMMA ID | varlist COMMA ID EQ ID | ID | ID EQ ID;
%%
extern FILE *yyin;
yywrap(){}
yyerror(){
    printf("incorrect syntax\n");
}
main(){
    yyin=fopen("input.java","r");
    yyparse();
}