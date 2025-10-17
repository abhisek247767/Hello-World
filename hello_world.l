%{
#include <stdio.h>
#include <stdlib.h>
%}

/* Prevents Lex from calling yywrap() at end of input */
%option noyywrap

/* Rules section */
%%
.   { printf("Hello, World!\n"); exit(0); }
%%

/* Main function */
int main() {
    printf("Keep a dot:");
    yylex();
    return 0;
}