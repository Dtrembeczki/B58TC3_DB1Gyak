#include <stdio.h>
#include <stdlib.h>

struct emberData{
    char id[100];
    char k_nev[100];
    char v_nev[100];
    int sorszam;
};


int main()
{
    int maximum = 0;

    //rekordok_megadasa();
    //maximum = szamolas();

    //printf("%d\n", maximum);

    //rekord_hozzad();

    mester_kulcs();
    return 0;
}

void rekordok_megadasa(){        //hozza adja a rekordot
    FILE *fp;
    struct emberData egyen[5];
    int i = 0;
    int j = 0;

    fp = fopen("azonositok_nevek.bin","wb");  //azonositok_nevek.bin megnyitasa

    for(i=0; i<3;i++){          //bekereskor spaceeket nem szereti
        printf("Kereszt nev: ");
        scanf("%s", &egyen[i].k_nev);
        printf("Vezetek nev: ");
        scanf("%s", &egyen[i].v_nev);
        printf("Azonosito: ");
        scanf("%s", &egyen[i].id);
    }

    for(j=0; j<3; j++){
        fwrite( &egyen[j], sizeof(struct emberData),1, fp);
    }

    fclose(fp);

    /*fp = fopen("azonositok_nevek.bin", "rb");

    for(i=0;i<5;i++){
        fread(&egyen, sizeof(struct emberData), 1, fp);

        printf("nev: %s, %s\t", egyen[i].v_nev, egyen[i].k_nev);
        printf("ID: %s\n", egyen[i].id);
    }*/

    return 0;

}       //end of rekordok_megadasa

int szamolas(){
    int i = 0;
    int j = 0;
    int max_i = 0;
    FILE *fp;
    char egyen[10];

    fp = fopen("azonositok_nevek.bin","rb");

    fread(&egyen, sizeof(struct emberData), 1, fp);
    printf("\negy: %s\n", egyen[1]);
    for(i=0;i<5;i++){
        printf("%d\n", i);

    }

    for(j=0;j<5;j++){
        printf("%d", j);

        if(j>max_i && egyen[j] != '\0'){
            max_i = j;
        }
    }

    fclose(fp);

    printf("\nLegnagyobb i: %d", max_i);


    return max_i;
}

void rekord_hozzad(){
    FILE *fp;
    struct emberData egyen[10];
    int i = 0;
    int max_i = 0;

    fp = fopen("azonositok_nevek.bin", "rb");

    for(i=0;i<5;i++){
        if(i>max_i /*&& egyen[i] != '\0'*/){
            max_i = i;
        }
    }

    fclose(fp);

    fp = fopen("azonositok_nevek.bin", "wb");

    printf("Adja meg a keresztnevet: ");
    scanf("%s",  &egyen[max_i].k_nev);
    printf("Adja meg a vezeteknevet: ");
    scanf("%s",  &egyen[max_i].v_nev);
    printf("Adja meg a azonositot: ");
    scanf("%s",  &egyen[max_i].id);

    printf("Legnagyobb i: %d\n", max_i);


    fwrite( &egyen[2], sizeof(struct emberData),1, fp);


    fclose(fp);

    return 0;
}


void mester_kulcs(){            //mesterkulcs: mutatja az összes eltárolt adatot
    FILE *fp;
    struct emberData egyen[5];
    int i = 0;


    fp = fopen("azonositok_nevek.bin", "rb");

    fread(&egyen, sizeof(struct emberData), 1, fp);

    for(i=0;i<3;i++){
        //fread(&egyen, sizeof(struct emberData), 1, fp);

        printf("nev: %s, %s\t", egyen[i].v_nev, egyen[i].k_nev);
        printf("ID: %s\n", egyen[i].id);
    }

    fclose(fp);

    return 0;
}
