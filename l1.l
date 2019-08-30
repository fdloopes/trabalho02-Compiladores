RESERVADA class|public|static|main|String|extends|int|boolean|if|else|while|System.out.println|true|false|this|length|new|return|void
COMENTARIO [//|/*|*/]
OPERADOR [+|-|*|/|&|||<|>|=|!]
DIGITO	[0-9]
LETRA	[a-zA-Z]
ID	{LETRA}({LETRA}|{DIGITO})*
CARACTERESPECIAL [(|)|{|}|[|]|;|.]
ESPACOBRANCO [\t\n\r]

%%
{RESERVADA} {printf("Reservada: %s\n",yytext);}
{COMENTARIO}+{COMENTARIO} {printf("Comentario: %s\n",yytext);}
{DIGITO}+	  {printf("Inteiro: %s\n",yytext);}
{DIGITO}+"."{DIGITO}+ {printf("Real: %s\n",yytext);}
{ID}			{printf("var: %s\n",yytext);}
{OPERADOR}  {printf("Operador: %s\n",yytext);}
{CARACTERESPECIAL}  {printf("Caracter especial: %s\n",yytext);}
{ESPACOBRANCO}  {printf("Caractere nao reconhecido\n");}

%%
int yywrap();

main(){
  yylex();
}

int yywrap(){
 return 1;
}
