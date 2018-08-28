%{
#include "type.tab.h"
extern yylval;
%}

%%
int | 
float | 
char {return DTYPE;}
"," {return COMMA;}
";" {return SC;}
[a-zA-Z]+[a-zA-Z0-9]* {return ID;}
[\n] {return NL;}
\= {return EQ;}
[0-9]+ {return NUM;}
%%