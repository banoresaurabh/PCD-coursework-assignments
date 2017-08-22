%{
#include<math.h>
%}


%%
if|then|else|begin|end {printf("Keyword and Entered token is %s",yytext);}
"+"|"-"|"*"|"/" {printf("Arithmatic operator and Entered token is %s",yytext);}
"<"|"<="|">"|">="|"<>"|"=" {printf("Relational operator and the Entered token is %s",yytext);}
[0-9]+ {printf("Constant and the Entered token is %s (%d)",yytext,atoi(yytext));}
[0-9]+"."[0-9]+ {printf("Floating point and the Entered token is %s (%f)",yytext,atof(yytext));}
[a-zA-Z]+([a-zA-Z]|[0-9])* {printf("Identifier and the Entered token is %s",yytext);}
. {printf("Invalid token");}
%%

yywrap()
{

}
main(){
yylex();
}
