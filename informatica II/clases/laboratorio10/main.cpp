#include <iostream>
#include <vector>

#include "IColeccion.hh"
#include "ListaEncadenada.hh"
#include "ListaArreglo.hh"

bool buscar(IColeccion& coleccion, int numero) {

    for(int i = 0; i < coleccion.cantidad(); i++) {

        if(coleccion[i] == numero) {

            return true;
        }
    }

    return false;
}

// PROBLEMA 5 - agregarSiNoExiste a una IColeccion
void agregarSiNoExiste(IColeccion& coleccion, int numero) {

    bool existe = false;

    for(int i = 0; i < coleccion.cantidad(); i++) {

        if(coleccion[i] == numero) {

            existe = true;
        }
    }

    if(existe == false) {

        coleccion.agregar(numero);
    }
}

// PROBLEMA 6 - Ordenar una IColeccion
void ordenar(IColeccion& coleccion) {

    int tam = coleccion.cantidad();

    for(int i = 0; i < tam; i++) {

        for(int j = i + 1; j < tam; j++) {

            if(coleccion[i] > coleccion[j]) {

                int aux = coleccion[i];
                coleccion[i] = coleccion[j];
                coleccion[j] = aux;
            }
        }
    }
}

// Main
int main () {

    ListaEncadenada uno(7, new ListaEncadenada(2, new ListaEncadenada(3)));

    std::vector<int> vector = {0, 1, 2, 3, 4, 5};
    ListaArreglo dos(vector);

    // PROBLEMA 1.1 - Índice
    std::cout << "\nEl segundo valor de la ListaEncadenada es: " << uno[1] << "\n";
    std::cout << "El segundo valor de la ListaArreglo es: " << dos[1] << "\n";

    // PROBLEMA 1.2 - Cantidad
    std::cout << "El tamano de la ListaEncadenada es: " << uno.cantidad() << "\n";
    std::cout << "El tamano de la ListaArreglo es: " << dos.cantidad() << "\n";

    // PROBLEMA 1.3 - Borrar
    uno.borrar(1);
    dos.borrar(1);
    std::cout << "Ahora el segundo valor de la ListaEncadenada es: " << uno[1] << "\n";
    std::cout << "Ahora el segundo valor de la ListaArreglo es: " << dos[1] << "\n";

    // PROBLEMA 1.4 - Agregar
    uno.agregar(4);
    dos.agregar(6);
    std::cout << "El valor agregado a la ListaEncadenada es: " << uno[2] << "\n";
    std::cout << "El valor agregado a la ListaArreglo es: " << dos[5] << "\n";

    // PROBLEMA 4 - Buscar
    std::cout << "Existe el valor 3 en la ListaEncadenada? " << buscar(uno, 3) << "\n";
    std::cout << "Existe el valor 2 en la ListaArreglo? " << buscar(dos, 2) << "\n";
    std::cout << "Existe el valor 99 en la ListaEncadenada? " << buscar(uno, 99) << "\n";
    std::cout << "Existe el valor 11 en la ListaArreglo? " << buscar(dos, 11) << "\n";

    // PROBLEMA 5 - AgregarSiNoExiste
    agregarSiNoExiste(uno, 5);
    agregarSiNoExiste(dos, 7);
    std::cout << "El valor agregado a la ListaEncadenada es: " << uno[3] << "\n";
    std::cout << "El valor agregado a la ListaArreglo es: " << dos[6] << "\n";

    // PROBLEMA 6 - Ordenar
    ordenar(uno);
    ordenar(dos);
    std::cout << "El primer valor de la ListaEncadenada es: " << uno[0] << "\n";
    std::cout << "El primer valor de la ListaArreglo es: " << dos[0] << "\n";
}