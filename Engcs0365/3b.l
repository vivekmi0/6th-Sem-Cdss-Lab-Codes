%{
	# include <stdio.h>
	int sf = 0, pf = 0;
%}
%%
"scanf" { sf++; fprintf(yyout, "readf"); }
"printf" { pf++; fprintf(yyout, "writef"); }
%%
int main() {
	yyin = fopen("3b_f1.c", "r");
	yyout = fopen("3b_f2.c", "w");
	yylex();
	printf("No. of scanf = %d\nNumber of printf = %d\n", sf, pf);
	return 0;
}

