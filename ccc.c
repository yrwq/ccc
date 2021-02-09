#include <stdio.h>

int main() {

    printf("\n");
    for (int i = 0; i < 7; i++) {
        printf(" \033[%dm \033[m", 31 + i);
    }
    printf("\n");

    for (int i = 0; i < 7; i++) {
        printf(" \033[%dm \033[m", 91 + i);
    }
    printf("\n\n");
}
