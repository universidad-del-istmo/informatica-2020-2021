#include "ArbolBinario.hh"

#include <iostream>
#include <vector>

int main () {

    ArbolBinario<int> iArbol(1, new ArbolBinario<int>(2), new ArbolBinario<int>(3));

    int* arreglito;

    std::cout << "El tamano del arreglito es " << iArbol.filtrar(2, arreglito) << "\n";
}