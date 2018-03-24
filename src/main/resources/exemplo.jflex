package atividade1;

%%

/* Não altere as configurações a seguir */

%line
%column
%unicode
//%debug
%public
%standalone
%class Minijava
%eofclose

/* Insira as regras léxicas abaixo */

branco = [ |\t|\n|\r\|\f]
digito = [0-9]
inteiro = 0|[0-9][1-9]*
letra = [a-zA-Z_]
palavra = \~{letra}+\~
alfanumerico = {letra}|{digito}
identificador = ({letra} | [_])({alfanumerico} | [_])*
comentario = "//".*(\n)?|"/*"~"*/\n"


%%
<YYINITIAL>{





/*palavras reservadas*/
public             { System.out.println("Token PUBLIC"); }
void				{ System.out.println("Token VOID"); }
main             { System.out.println("Token MAIN"); }
this             { System.out.println("Token THIS"); }
boolean             { System.out.println("Token BOOLEAN"); }
int             { System.out.println("Token INT"); }
true             { System.out.println("Token TRUE"); }
false             { System.out.println("Token FALSE"); }
if				{ System.out.println("Token IF"); }
else             { System.out.println("Token ELSE"); }
while             { System.out.println("Token WHILE"); }
return             { System.out.println("Token RETURN"); }
package             { System.out.println("Token PACKAGE"); }
class             { System.out.println("Token CLASS"); }
import             { System.out.println("Token IMPORT"); }
static             { System.out.println("Token STATIC"); }
new             { System.out.println("Token NEW"); }
System.out.println {System.out.println("Token SYSTEM.OUT.PRINTLN");}


/*operadores*/

"=="             { System.out.println("Token =="); }
"<="				{ System.out.println("Token <="); }
">="             { System.out.println("Token >="); }
"!="             { System.out.println("Token !="); }
">"             { System.out.println("Token >"); }
"<"             { System.out.println("Token <"); }
"&&"             { System.out.println("Token &&"); }
"||"             { System.out.println("Token ||"); }
"+"             { System.out.println("Token +"); }
"-"				{ System.out.println("Token -"); }
"*"             { System.out.println("Token *"); }
"!"             { System.out.println("Token !"); }


/*delimitadores e pontuacoes*/
","             { System.out.println("Token ,"); }
"."				{ System.out.println("Token ."); }
";"             { System.out.println("Token ;"); }
"]"             { System.out.println("Token ]"); }
"["             { System.out.println("Token ["); }
"}"             { System.out.println("Token }"); }
"{"             { System.out.println("Token {"); }
")"             { System.out.println("Token )"); }
"("             { System.out.println("Token ("); }
"\""				{ System.out.println("Token \""); }
"="             { System.out.println("Token =");}

{branco} {}
{digito} { System.out.println("Token DIGITO"); }
{inteiro} { System.out.println("Token INTEIRO"); }
{letra} { System.out.println("Token LETRA"); }
{palavra} { System.out.println("Token PALAVRA"); }
{alfanumerico} { System.out.println("Token ALFANUMERICO"); }
{identificador} { System.out.println("Token IDENTIFICADOR"); }
{comentario} { System.out.println("Token COMENTARIO"); }

}
    
/* Insira as regras léxicas no espaço acima */     
     
. { throw new RuntimeException("Caractere ilegal! '" + yytext() + "' na linha: " + yyline + ", coluna: " + yycolumn); }
