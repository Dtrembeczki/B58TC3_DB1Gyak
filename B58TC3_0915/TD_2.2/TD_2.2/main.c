#include <stdio.h>
#include <stdlib.h>
void feladat1();

int main()
{
    feladat1();
    return 0;
}

void feladat1(){
    FILE *fp;
    char ch;
    char fileNev[50];

    printf("File Nev: ");
    scanf("%s", fileNev);

    fp = fopen(fileNev, "w");
    printf("uzenet: ");
    while((ch = getchar()) != '#'){
        putc(ch, fp);
    }
    fclose(fp);

    fp = fopen(fileNev,"r+");

    while((ch = getc(fp)) != EOF){
        ch = toupper(ch);
        printf("%c", ch);
        //fprintf(fp,ch);
        //putc(ch, fp);

    }
    fclose(fp);

    return 0;
}


