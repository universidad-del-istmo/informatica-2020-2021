#include <iostream>

int main(int argc, char** argv) {

    // Un arreglo de dos dimensiones es un arreglo ordinario
    // en el cual cada uno de sus elementos es un arreglo.
    // Podemos crear un arrglo de dos dimensiones de enteros
    // de la siguiente manera:

    int** arreglo2d = new int*[5];

    // La primera dimension tiene 5 elementos. Ahora se procede
    // a inicializar cada uno de los arreglos

    for(int i = 0; i < 5; i++) {
        arreglo2d[i] = new int[3];
    }

    // La segunda dimension es de 3 elementos por lo cual
    // es un arreglo de 5x3 o un arreglo de 5 arreglos de
    // 3 elementos cada uno.

    // Podemos guardar valores en el arreglo utilizando
    // dos indices para accessar cada valor. Por ejemplo,
    // podemos inicializar cada casilla de la siguiente
    // manera:

    for(int i = 0; i < 5; i++) {
        for(int j = 0; j < 3; j++) {
            arreglo2d[i][j] = (i+1)*(j+1);
        }
    }

    // De la misma manera podems utilizar dos indices
    // para accesar valores del arrego

    for(int i = 0; i < 5; i++) {
        for(int j = 0; j < 3; j++) {
            std::cout << "arreglo2d[" << i << "," << j << "] = " << arreglo2d[i][j] << "\n";
        }
    }
}