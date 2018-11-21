#include <stdio.h>
#include <emscripten/emscripten.h>

int main(int argc, char ** argv) {
    printf("Hello World\n");
}


int EMSCRIPTEN_KEEPALIVE ping(int argc, char ** argv) {
    printf("Ping Called\n");
    return 2;
}
