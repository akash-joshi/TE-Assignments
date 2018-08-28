%{
#include "temp.tab.h"
extern yylval;
%}

%%
[\n] {return NL;}
int |
float |
char {return DTYPE;}
[a-zA-Z]+ {return ID;}
";" {return SC;}
"," {return COMMA;}
[0-9]+ {return NUM;}
"=" {return EQ;}
%%