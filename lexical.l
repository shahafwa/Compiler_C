%{
#include "header.h"

int line=1,word=1;


%}

parbegin  "parbegin"
parend	"parend"
task	"task"
begin	"begin"
end	"end"
int	"integer"
real	"real"
do	"do"
until	"until"
od	"od"
send	"send"
accept	"accept"
id	    [a-z][a-z0-9]*
number    ("+"|"-")?[0-9]+("."[0-9]+)?
ignors [ \t]+   
error .

%%
\n   {line++;  printf("\n"); return 1;}

{parbegin} {printf( "Token from type '%s' was found at line: %d, lexeme: '%s'.\n","parbegin",line,yytext);
			       create_and_store_token(PRABEGIN_tok,strdup(yytext),line);
			       return 1;}

{parend} {printf( "Token from type '%s' was found at line: %d, lexeme: '%s'.\n","parend",line,yytext);
			       create_and_store_token(PAREND_tok,strdup(yytext),line);
			       return 1;}
			       
{task} {printf( "Token from type '%s' was found at line: %d, lexeme: '%s'.\n","task",line,yytext);
			       create_and_store_token(TASK_tok,strdup(yytext),line);
			       return 1;}

{begin} {printf( "Token from type '%s' was found at line: %d, lexeme: '%s'.\n","begin",line,yytext);
			       create_and_store_token(BEGIN_tok,strdup(yytext),line);
			       return 1;}

{end} {printf( "Token from type '%s' was found at line: %d, lexeme: '%s'.\n","end",line,yytext);
			       create_and_store_token(END_tok,strdup(yytext),line);
			       return 1;}

{int} {printf( "Token from type '%s' was found at line: %d, lexeme: '%s'.\n","integer",line,yytext);
			       create_and_store_token(INT_tok,strdup(yytext),line);
			       return 1;}

{real} {printf( "Token from type '%s' was found at line: %d, lexeme: '%s'.\n","real",line,yytext);
			       create_and_store_token(REAL_tok,strdup(yytext),line);
			       return 1;}

{do} {printf( "Token from type '%s' was found at line: %d, lexeme: '%s'.\n","do",line,yytext);
			       create_and_store_token(DO_tok,strdup(yytext),line);
			       return 1;}

{until} {printf( "Token from type '%s' was found at line: %d, lexeme: '%s'.\n","until",line,yytext);
			       create_and_store_token(UNTIL_tok,strdup(yytext),line);
			       return 1;}

{od} {printf( "Token from type '%s' was found at line: %d, lexeme: '%s'.\n","od",line,yytext);
			       create_and_store_token(OD_tok,strdup(yytext),line);
			       return 1;}

{send} {printf( "Token from type '%s' was found at line: %d, lexeme: '%s'.\n","send",line,yytext);
			       create_and_store_token(SEND_tok,strdup(yytext),line);
			       return 1;}

{accept} {printf( "Token from type '%s' was found at line: %d, lexeme: '%s'.\n","accept",line,yytext);
			       create_and_store_token(ACCEPT_tok,strdup(yytext),line);
			       return 1;}

"," {printf( "Token from type '%s' was found at line: %d, lexeme: '%s'.\n","comma",line,yytext);
			       create_and_store_token(COM_tok,strdup(yytext),line);
			       return 1;}


"+" {printf( "Token from type '%s' was found at line: %d, lexeme: '%s'.\n","add operator",line,yytext);
			       create_and_store_token(ADDOP_tok ,strdup(yytext),line);
			       return 1;}

"-" {printf( "Token from type '%s' was found at line: %d, lexeme: '%s'.\n","minus operator",line,yytext);
			       create_and_store_token(MINUSOP_tok,strdup(yytext),line);
			       return 1;}

"*" {printf( "Token from type '%s' was found at line: %d, lexeme: '%s'.\n","multiplication operator",line,yytext);
			       create_and_store_token(MULTOP_tok,strdup(yytext),line);
			       return 1;}

"/" {printf( "Token from type '%s' was found at line: %d, lexeme: '%s'.\n","divide operator",line,yytext);
			       create_and_store_token(DIVOP_tok,strdup(yytext),line);
			       return 1;}

";" {printf( "Token from type '%s' was found at line: %d, lexeme: '%s'.\n","semicolon",line,yytext);
			       create_and_store_token(SEMICOL_tok,strdup(yytext),line);
			       return 1;}

"(" {printf( "Token from type '%s' was found at line: %d, lexeme: '%s'.\n","left bracket",line,yytext);
			       create_and_store_token(LEFTBRACK_tok ,strdup(yytext),line);
			       return 1;}

")" {printf( "Token from type '%s' was found at line: %d, lexeme: '%s'.\n","right bracket",line,yytext);
			       create_and_store_token(RIGHTBRACK_tok,strdup(yytext),line);
			       return 1;}

"{" {printf( "Token from type '%s' was found at line: %d, lexeme: '%s'.\n","left curly bracklet",line,yytext);
			       create_and_store_token(LEFTCURLYBRAC_tok,strdup(yytext) ,line);
			       return 1;}

"}" {printf( "Token from type '%s' was found at line: %d, lexeme: '%s'.\n","right curly bracklet",line,yytext);
			       create_and_store_token(RIGHTCURLYBRAC_tok,strdup(yytext) ,line);
			       return 1;}

"=" {printf( "Token from type '%s' was found at line: %d, lexeme: '%s'.\n","equality operator",line,yytext);
			       create_and_store_token(EQU_tok,strdup(yytext) ,line);
			       return 1;}

"||" {printf( "Token from type '%s' was found at line: %d, lexeme: '%s'.\n","parallel",line,yytext);
			       create_and_store_token(PARR_tok,strdup(yytext) ,line);
			       return 1;}



"==" {printf( "Token from type '%s' was found at line: %d, lexeme: '%s'.\n","Equality check operator",line,yytext);
			       create_and_store_token(TEQ_tok,strdup(yytext) ,line);
			       return 1;}

"!=" {printf( "Token from type '%s' was found at line: %d, lexeme: '%s'.\n","not equal operator",line,yytext);
			       create_and_store_token(NEQ_tok,strdup(yytext) ,line);
			       return 1;}

"<=" {printf( "Token from type '%s' was found at line: %d, lexeme: '%s'.\n","less equal operator",line,yytext);
			       create_and_store_token(LEQ_tok,strdup(yytext) ,line);
			       return 1;}

">=" {printf( "Token from type '%s' was found at line: %d, lexeme: '%s'.\n","more equal operator",line,yytext);
			       create_and_store_token(MEQ_tok,strdup(yytext) ,line);
			       return 1;}

"<" {printf( "Token from type '%s' was found at line: %d, lexeme: '%s'.\n","less operator",line,yytext);
			       create_and_store_token(LESS_tok,strdup(yytext) ,line);
			       return 1;}

">" {printf( "Token from type '%s' was found at line: %d, lexeme: '%s'.\n","more operator",yytext);
			       create_and_store_token(MORE_tok,strdup(yytext) ,line);
			       return 1;}

{id} {printf( "Token from type '%s' was found at line: %d, lexeme: '%s'.\n","id",line,yytext);
			       create_and_store_token(ID_tok,strdup(yytext) ,line);
			       return 1;}


{number} {printf( "Token from type '%s' was found at line: %d, lexeme: '%s'.\n","number",line,yytext);
			       create_and_store_token(NUMBER_tok,strdup(yytext) ,line);
			       return 1;}




<<EOF>>  {
create_and_store_token(EOF_tok,strdup(yytext),line);
return 1;};

{ignors} {return 1;}

{error} {printf( "The character %s at line: %d does not begin any legal token in the language.\n", yytext,line);
			       return 1;}
%%

int main()
{
Token t;
int chosen;

printf("Please Choose which test whould you like to try,\n for test1 write 1,\n for test 2 write 2(or other natural number).\n");
 scanf("%d", &chosen);
 if(chosen==1)
 {
 printf("Test 1 output is saved at:\n 'C:\\temp\\test1_204559272_203137740_lex.txt' \n");
yyin=fopen("C:\\temp\\test1.txt","r"); 
freopen("C:\\temp\\test1_204559272_203137740_lex.txt", "w", stdout);
}
else
{
 printf("Test 2 output is saved at: 'C:\\temp\\test2_204559272_203137740_lex.txt' \n");
yyin=fopen("C:\\temp\\test2.txt","r"); 
freopen("C:\\temp\\test2_204559272_203137740_lex.txt", "w", stdout);
}
printf("\n");

next_token();

while(toklist.last->data[toklist.last_ind].type!=EOF_tok)
{
next_token();
}


    return 0;
}