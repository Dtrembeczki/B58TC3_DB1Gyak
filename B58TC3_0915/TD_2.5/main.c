#include <stdio.h>
#include <stdlib.h>

struct adatok{
    char *azon;
    char *nev;
};

int main()
{



    return 0;
}

void felvesz(){
    int i;
    struct adatok tagok;
    FILE *fp;

    fp = fopen("adatok.bin","wb");
    for(i = 0; i<5; i++){
        tagok.azon = "Bang bang";
        tagok.nev = "Teszt Elek";
        fwrite(&tagok, sizeof(struct adatok), 1, fp);
    }
    fclose(fp);

    return 0;
}
