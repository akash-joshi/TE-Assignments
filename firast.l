%{

%}

%%
bool | 
int | 
float {printf("\n%s is a data type",yytext);}

\+ |
\- |
\* |
\/ {printf("\n%s is a operator",yytext);}
[0-9]+ {printf("%s is number",yytext);}
[0-9]+\.[0-9]* {printf("%s is float",yytext);}
[a-zA-Z]+ {printf("%s is identifier",yytext);}
%%

extern FILE *yyin;
int main()
{
    yyin = fopen("input.java","r");
    yylex();
}
int yywrap(){}