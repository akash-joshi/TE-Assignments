%{
int ch=0, bl=0, ln=0, wr=0;
%}
%%
[\n] {ln++;wr++;}
[\t] {bl++;wr++;}
[" "] {bl++;wr++;}
[^\n\t] {ch++;}
%%
extern FILE *yyin;
int main()
{
yyin = fopen("input.java","r");
yylex();
printf("Character=%d\nBlank=%d\nLines=%d\nWords=%d", ch, bl, ln, wr);
return 0;
}
int yywrap(){}
