#include <stdio.h>
#include <stdlib.h>

int main(int argc, char ** argv) {

    char * symbol;

    if (argc != 1) {
        symbol = argv[1];
    }

    if (argc == 1) {
        char * env_symbol = getenv("CCC_SYMBOL");
        if (env_symbol == NULL) {
            symbol = "";
        } else {
            symbol = env_symbol;
        }
    }

    printf("\n");
    for (int i = 0; i < 7; i++) {
        printf(" \033[%dm%s \033[m", 31 + i, symbol);
    }
    printf("\n");

    for (int i = 0; i < 7; i++) {
        printf(" \033[%dm%s \033[m", 91 + i, symbol);
    }
    printf("\n\n");
}
