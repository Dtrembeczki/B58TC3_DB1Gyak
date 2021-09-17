#include <stdio.h>
#include <stdlib.h>

struct autoAdatok{
    char cars[3][5];
};

int main()
{
    adatok();
    return 0;
}

void adatok(){
    int i, j;
    FILE *fp;
    struct autoAdatok cars[3][5];

    for (i = 0; i< '\0'; i++){
        for(j = 0; j < '\0'; j++){
                printf("Adja meg az autot:");
                scanf("%s", &cars[i][j]);

        }
    }

    for (i = 0; i< '\0'; i++){
        for(j = 0; j < '\0'; j++){

                printf("%s", cars[i][j]);


        }
    }

    return 0;

}
