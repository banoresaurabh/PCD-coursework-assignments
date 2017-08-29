%{
#include<stdio.h>
#include<string.h>
%}

%%
if|double|float {printf("\nThis is Keyword is %s ",yytext);}
[a-zA-Z]+([a-zA-Z 0-9])* {printf("\n identifier %s",yytext);}
[0-9]+ {printf( "An integer: %s (%d)\n", yytext, atoi( yytext ) );}
[0-9]*"."[0-9]+ {printf( "An integer: %s (%f)\n", yytext, atof( yytext ) );}
"=="|"<="|">="|"<"|">"|"<>"|"=" {printf("\nThis is relational op %s",yytext);}
"+"|"-"|"/"|"*" {printf("\nThis is operator %s",yytext);}
"("|")"|"["|"]"|"{"|"}" {printf("\nThis is bracket %s",yytext);}
"*"([a-zA-z])+([0-9])* {printf("\n Pointer %s",yytext);}
"&"([a-zA-z])+([0-9])* {printf("\n Address %s",yytext);}
","|";" {printf("\n delimiter %s",yytext);}
"#include\<"([a-zA-Z])+".h>" {printf("\n header file %s",yytext);}
"#define"" "([a-zA-Z])+" "[0-9]+"."[0-9]* {printf("\n preprocessor %s",yytext);}
"//"[a-zA-Z 0-9\t ]* {printf("\n single line comment %s",yytext);}
"printf(""[a-zA-Z] "");" {printf("\n print statement %s",yytext);}
%%
yywrap()
{}
main()
{
FILE *fp;
fp = fopen("abc.txt","r+");
yyin=fp;
yylex();
fclose(fp);
}
