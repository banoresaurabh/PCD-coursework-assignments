%{
#include<math.h>
%}

%%
if|then|else|begin|end {printf("This is a keyword");}
"+"|"-"|"*"|"/" {printf("This is an operator");}
"<"|"<="|">"|">="|"<>"|"=" {printf("This is a relational operator");}
[0-9]+ {printf("It is a number");}
[0-9]+"."[0-9]+ {printf("It is a floating point number");}
[a-z|A-Z]+[a-z|A-Z|0-9]* {printf("It is an identifier");}
%%

yywrap()
{

}
main(){
yylex();
}
