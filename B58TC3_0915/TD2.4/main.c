#include <stdio.h>
#include <stdlib.h>

struct autoData{
    char plate[6];
    char tipus[30];
    double ar;
};

int main(){

    //kocsi_hozzad();
    int sor = 0;
    printf("Melyik sort szeretne lekerdezni? ");
    scanf("%d", &sor);

    if(sor<20){
        printf("Nincs ilyen sor eltarolva!");

        return 0;
    }

    kocsi_olvas(sor);
    return 0;
}

void kocsi_hozzad(){
    struct autoData autok[20];
    FILE *fp;
    int i;

    fp = fopen("autok.bin","wb");
    for(i = 0; i<20; i++){
        printf("rendszam:");
        scanf("%s",&autok[i].plate);
        printf("tipus:");
        scanf("%s",&autok[i].tipus);
        printf("ar:");
        scanf("%d",&autok[i].ar);
    }

    for(i=0; i<20;i++){
        fwrite(&autok[i], sizeof(struct autoData),1,fp);
    }

    fclose(fp);

}


void kocsi_olvas(int sor){
    FILE *fp;
    fp = fopen("autok.bin","rb");
    struct autoData autok;

    fseek(fp, (sor-1)* sizeof(struct autoData), 0);
    fread(&autok, sizeof(struct autoData),1 , fp);

    printf("Rendszam: %s \t", autok.plate);
    printf("Tipus: %s \t", autok.tipus);
    printf("Ar: %d \t", autok.ar);

    fclose(fp);
}
