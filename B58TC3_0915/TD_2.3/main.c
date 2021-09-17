#include <stdio.h>
#include <stdlib.h>

int main()
{
    feladat1(); //creat txt file

    fileCopy();

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
}

void fileCopy(){
    FILE *fp1;
    FILE *fp2;
    char fileNevl[50];
    char fileNev2[50];
    char ch;

    printf("Masolando File neve (meghajto: \ eleresi ut\ fileNeve.txt): "); //Keresendo file neve
    scanf("%s", fileNevl);
    fp1 = fopen(fileNevl, "r");

    printf("Masolat File elnevezese: "); // a file neve ami a masolat lesz
    scanf("%s", fileNev2);

    //masolt file kezelese
    fp2 = fopen(fileNev2, "w");

    ch = fgetc(fp1);
    while(ch != EOF){
        fputc(ch,fp2);
        ch = fgetc(fp1);
    }

    fclose(fp1);
    fclose(fp2);

    printf("\n\nMasolas a(z) %s fileba kesz!\n\n", fileNev2);

    return 0;
}
