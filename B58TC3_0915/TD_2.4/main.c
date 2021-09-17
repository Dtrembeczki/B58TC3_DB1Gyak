#include <stdio.h>
#include <stdlib.h>

int main()
{
    autoAdatok();
    return 0;
}


void autoAdatok(){
    FILE *fp;
    char ch;
    char cars;
    char kocsiTomb[20];
    int i, j;


    /*fp = fopen("autok.txt","w");

    while((ch=getchar()) != '#'){
        putc(ch, fp);
    }

    fclose(fp);*/

    int end, loop, line;
    char str[512];

    printf("Adja meg a sor szamat: ");
    scanf("%d", &line);

    fp = fopen("autok.txt","r");

    for(end = loop = 0;loop<line;loop++){
        if(0==fgets(str, sizeof(str), fp)){//include '\n'
            end = 1;//can't input (EOF)
            break;
        }
    }
    if(!end)
        printf("\n%d.Sor: %s\n", line, str);
    fclose(fp);


    return 0;
}
