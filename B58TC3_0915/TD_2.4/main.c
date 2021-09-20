#include <stdio.h>
#include <stdlib.h>

struct autoData{
    char plate[6];
    char tipus[30];
    double ar;
};

int main()
{
    //adat_hozzad();

    adat_lekerdez(2);

    return 0;
}

void adat_hozzad(){
    struct autoData autok[5];
    FILE *fp;
    int i;

    fp = fopen("autok.bin","wb");

    for(i = 0; i<5; i++){
        printf("Rendszam: ");
        scanf("%s", &autok[i].plate);
        printf("Tipus: ");
        scanf("%s", &autok[i].tipus);
        printf("Ar: ");
        scanf("%d", &autok[i].ar);
    }

    for(i=0;i<5;i++){
        fwrite(&autok[i], sizeof(struct autoData), 1, fp);
    }

    fclose(fp);

}

void adat_lekerdez(int sor){
    FILE *fp;
    struct autoData autok;

    fp = fopen("autok.bin","rb");

    fseek(fp,(sor-1)*sizeof(struct autoData),0);
    fread(&autok, sizeof(struct autoData), 1, fp);

    printf("Rendszam: %s \n", autok.plate);
    printf("Tipus: %s \n",autok.tipus);
    printf("Ar: %s \n", autok.ar);

    fclose(fp);
}
