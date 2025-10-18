/*Yacc Code*/
%{
#include <stdio.h>

int yylex(void);
int yyerror(const char *s);
%}

/* Declare tokens */
%token HELLO

%%

start:
    greeting
;

greeting:
    { printf("Hello, World!\n"); }
;

%%

int yylex(void) {
    return 0;  // No input, just terminate parser
}

int yyerror(const char *s) {
    fprintf(stderr, "Error: %s\n", s);
    return 0;
}

int main() {
    printf("Starting parser...\n");
    yyparse();  // Run parser
    return 0;
}
