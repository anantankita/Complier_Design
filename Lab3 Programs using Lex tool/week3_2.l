%{
int i=0;
int j=0;
%}

/*Rules Section*/
%% 
([a,e,i,o,u])  {i=i+1;}
([a-zA-Z])  {j=j+1;}
"\n" {printf("Vowels : %d ",i);  printf("Consonants : %d ",j);}
%%


int yywrap(void){}

int main()
{
  yylex();
  
  return 0;
}