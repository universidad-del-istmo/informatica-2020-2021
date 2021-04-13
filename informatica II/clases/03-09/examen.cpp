#include <iostream>

/*
* Imprimir "si" si hay dos numeros en un array que sumen 0
*/

void analizar(int* valores, int n) {

    int i = 0;
    bool seEncontro = false;

    while(i < n) {

        int j = 0;

        while(j < n) {

            if(i != j && valores[i] + valores[j] == 0) {
                std::cout << "si\n";
                seEncontro = true;
            }

            j++;
        }

        i++;
    }

    if(!seEncontro) {
        std::cout << "no\n";
    }
}

/*
Imprimir "si" si el arreglo tiene un valor repetido, no de lo
contrario.
*/

void seRepite(int* valores, int numero) {

    for(int i = 0; i < numero; i++) {

        for(int j = 0; j < numero; j++) {

            if(i !=j && valores[i] == valores[j]) {

                std::cout << "si\n";
                return;
            }
        }
    }

    std::cout << "no\n";
}

/*
Determinar si los parentesis de apertura y cerrado
estan balanceados.
*/
void estaBalanceado(std::string arg) {

    int conteo = 0;

    for(int i = 0; i < arg.size(); i++) {

        char actual = arg[i];

        if(actual == '(') {
            conteo++;
        }

        if(actual == ')') {
            conteo--;
        }

        if(conteo < 0) {
            std::cout << "no\n";
            return;
        }
    }

    if(conteo == 0) {
        std::cout << "si\n";
    }
    else {
        std::cout << "no\n";
    }
}

/*
Imprimir "si" si hay misma cantidad de vocales y consonantes, no
de lo contrario.
*/

void mismaCantidad(std::string arg) {

    int vocales = 0;
    int cons = 0;

    for(int i = 0; i < arg.size(); i++) {

        char c = arg[i];
        if(c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u') {
            vocales++;
        }
        else {
            cons++;
        }
    }

    if(vocales == cons) {
        std::cout << "si\n";
    }
    else {
        std::cout << "no\n";
    }
}

void numeros(std::string arg) {

    /*
    todo: contar cantidad de comas para
    determinar el tamano
    */

    int nums = new int[arg.size()];
    int numsPos = 0;

    for(int i = arg.size() - 1; i > 0; i--) {

        /*
        Todo: tomar en cuenta el signo.
        */
        int orden = 1;
        int total = 0;
        while(i >= 0 && arg[i] != ',') {

            char digito = arg[i];
            int valor = digito - '0';
            total = total + valor*orden;

            i--;
            orden = orden * 10;
        }

        nums[numsPos] = total;
        numsPos++;
    }

    delete[] nums;
}

int main(int argc, char** argv) {

    int nums[4];
    nums[0] = 1;
    nums[1] = 5;
    nums[2] = 7;
    nums[3] = -5;

    analizar(nums, 4);
}