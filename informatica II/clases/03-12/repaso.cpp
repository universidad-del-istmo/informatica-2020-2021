// REPASO DEL EXAMEN PARCIAL #2

#include <iostream>

// EJERCICIO #1:
// Imprimir "Si" si hay dos números en un array que sumen 0.

void analizar (int* valores, int n) {

    int i = 0;
    int j = 0;
    bool encontrado = false;

    for (i = 0; i < n; i++) {

        for (j = 0; j < n; j++) {

            if (i != j && valores[i] + valores[j] == 0) {
                std::cout << "Si\n";
                encontrado = true;
            }
        }
    }

    if (!encontrado) {
        std::cout << "No\n";
    }
}

// EJERCICIO #2:
// Imprimir "Si" si el arreglo tiene un valor repetido, y "No" de lo contrario.

void seRepite (int* valores, int numero) {

    int i = 0;

    while (i < numero) {

        int j = 0;

        while (j < numero) {

            if (i != j && valores[i] == valores[j]) {
                std::cout << "Si\n";
                return;
            }

            j++;
        }

        i++;
    }

    std::cout << "No\n";
}

// EJERCICIO #3:
// Determinar si los paréntesis de apertura y cerrado están balanceados.

void estaBalanceado (std::string arg) {

    int conteo = 0;

    for (int i = 0; i < arg.size(); i++) {

        char actual = arg[i];

        if (actual == '(') {
            conteo++;
        }
        else if (actual == ')') {
            conteo--;
        }
        else {
            std::cout << "No\n";
            return;
        }

        if (conteo < 0) {
            std::cout << "No\n";
            return;
        }
    }

    if (conteo == 0) {
        std::cout << "Si\n";
    }
    else {
        std::cout << "No\n";
    }
}

// EJERCICIO #4:
// Imprimir "Si" si hay misma cantidad de vocales y consonantes, y "No" de lo contrario.

void mismaCantidad (std::string letras) {

    int vocales = 0;
    int consonantes = 0;

    for (int i = 0; i < letras.size(); i++) {

        char c = tolower(letras[i]);
        if (c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u') {
            vocales++;
        }
        else {
            consonantes++;
        }
    }

    if (vocales == consonantes) {
        std::cout << "Si\n";
    }
    else {
        std::cout << "No\n";
    }
}

// EJERCICIO #5:

void numeros (std::string arg) {

    // Contar cantidad de comas para determinar el tamano.

    int comas = 1;

    for (int i = 0; i < arg.size(); i++) {

        char posicion = arg[i];

        if (posicion == ',') {
            comas++;
        }
    }
    
    int* nums = new int[comas];
    int numsPos = 0;

    for (int i = arg.size() - 1; i > 0; i--) {

        // Tomar en cuenta el signo.

        int orden = 1;
        int total = 0;
        bool positivo = true;

        while (i >= 0 && arg[i] != ',') {

            char digito = arg[i];

            if (digito == '+') {
                positivo == true;
            }
            else if (digito == '-') {
                positivo == false;
            }
            else {
                int valor = digito - '0';
                total = total + (valor * orden);
                i--;
                orden = orden * 10;
            }
        }

        if (positivo == true) {
            int total = total * 1;
        }
        else {
            int total = total * -1;
        }

        nums[numsPos] = total;
        numsPos++;
    }

    for (int i = comas - 1; i >= 0; i--) {
        std::cout << nums[i] << "\n";
    }

    delete[] nums;
}

int main () {

    std::string letras = "-34,9,+5,-115";
    numeros(letras);
}