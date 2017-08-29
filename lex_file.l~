%{
#include <stdio.h>
#include <string.h>	
%}

%%
if|double|float {printf("\n %s is a keyword",yytext);} 
[a-zA-Z]([a-z|A-Z|0-9])* {printf("\n%s is a keyword",yytext);}
[0-9]+ {printf("\n %s is an integer ",yytext);}
[0-9]+"."[0-9]+ {printf("\n %s is a float ",yytext);}
"<"|"<="|">"|">="|"=" {printf("\n %s is an operator ",yytext");}
"+"|"-"|"*"|"/" {printf("\n %s is an arithmetic operator",yytext);}
"{"|"}"|"("|")"|"<"|">"|"["|"]" {printf("\n %s is a brace",yytext);}
"*"[a-zA-Z]+[0-9]* {printf("\n %s is pointer",yytext);}
"&"[a-zA-Z]+[0-9]* {printf("\n %s is a reference",yytext);}
','|';' {printf("\n %s is a delimiter",yytext);}
"#include<"[a-zA-Z]+[0-9]*".h>" {printf("\n%s is a header file",yytext);}
"#define "[a-zA-Z]+[0-9]* [0-9]('.'[0-9])* {printf("\n %s is a preprocessor",yytext);}
'printf("'[a-zA-Z ]\'");' {printf("\n %s is a print",yytext);}
"//"([a-zA-Z][0-9])* {printf("\n %s is a comment",yytext);}
%%

yywrap()
{

}

main()
{
FILE *fp;
fp = fopen("abc.txt","r+");
yyin = fp;
yylex();
fclose(fp);
}
