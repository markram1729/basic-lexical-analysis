											CS251
											Assignment 1
											
Steps for Execution
1. $flex assignment.l
2. gcc lex.yy.c
3. ./a.out

following points i have follwed to make assignment.l

$make assignment.l

$open assignment.l
step 1 ://Definition Section
	started with %{
	//enter definition
	ended with %}

before Rules section I have defined 
letter  [a-zA-Z]
digit   [0-9]

Step 2 : //Rules section

started with  - %%

Note : all the statements were written in Regular Expressions
 
 1. keyword section : {defined all the necessary key words that are subset of c like Data types,control flow statements,preprocessor directives and also included __global__ in keyword
 2. separator section:{included all required separators}
 	{};,()-> :
 3. Numbers
 	1. positive Real Numbers (includes float exponential)(\-+[0-9]+{integer part}(\.[0-9]+)?{fractional part}(E[+-]?[0-9]+)?){Exponential part}
 	2.Negative Real Numbers  (includes float,exponential)
 	3. hex decimal (integer literal)
 4. indentifiers (also accepts "_")
 	eg.abs34mn abs_srmud89 
 	also included character literals "."
 5. included all the operators in c and "<<<",">>>"
 
ended RUles section with - %%
step 3: 
 made sure that yywrap function to return 1 when my input is  finished //call the yywrap function

step 4:
 call yylex function for input 
 
 
