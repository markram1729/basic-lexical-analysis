%{

#include <stdio.h>
%}
letter  [A-Za-z]
digit    [0-9]
%%
"#include"|"#define"|"double"|"int"|"struct"|"break"|"else"|"long"|"switch"|"case"|"typedef"|"char"|"extern"|"return"|"union"|"continue"|"for"|"signed"|"void"|"do"|"if"|"static"|"while"|"default"|"goto"|"sizeof"|"__global__"|"volatile"|"const"|"float"|"short"|"printf"|"scanf" {printf("%s\tKEYWORD\n",yytext);} 						
"{"|"}"|";"|","|"("|")"|"->"|":"    {printf("%s\tSEPERATOR\n",yytext);}
(\-[0-9]+(\.[0-9]+)?(E[+-]?[0-9]+)?)  {printf("%s\tNegative Real Number \n",yytext);}	
([0-9]+(\.[0-9]+)?(E[+-]?[0-9]+)?) {printf("%s\tReal Number \n",yytext);}
0[xX][0-9a-fA-F]*    {printf("%s\thexa\n",yytext);}
			
"+"|"-"|"/"|"*"|"%"|"="|"<"*|">"*|"<="|"!"|"&"|"^"|"["|"]"|"("|"\|"|"&&"|"||"|"\|\|"|"?:"|">="|"=="|"!="|"+="|"-="|"="|"/="|"%="|"&="|"++"|"--"|")"|"~"|">>="|"<<="|"&="|"^=" {printf("%s\tOPERATOR\n",yytext);}

{letter}({letter}|{digit}|_)* {printf("%s\tIdentifier\n",yytext);}    
'.'  {printf("%s\tChar literal",yytext);}

"//".*"\n" {printf("%s\tsingle line comment\n",yytext);}

.|\n ;
%%

int yywrap()
{
 return 1;
 }
 
int main(void)
{
printf("enter the string:\n");
   yylex();
   return 0;
   }
