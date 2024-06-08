#include <stdio.h>
#include <string.h>

int main() {
    int N;
    scanf("%d", &N);

    for (int i = 0; i < N; i++) {
        char password[101];
        scanf("%s", password);
        int length = strlen(password);

        if (length >= 6 && length <= 9) {
            printf("yes\n");
        } else {
            printf("no\n");
        }
    }

    return 0;
}
