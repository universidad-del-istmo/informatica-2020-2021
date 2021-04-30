#include <iostream>
#include <vector>

#include "ListaArreglo.hh"

ListaArreglo::ListaArreglo(std::vector<int> lista) : _lista(lista) {}

int& ListaArreglo::operator[](std::size_t indice) {

    return _lista[indice];
}

int ListaArreglo::cantidad() {

    return _lista.size();
}

void ListaArreglo::borrar(int i) {

    _lista.erase(_lista.begin() + i);
    return;
}

void ListaArreglo::agregar(int nuevo) {

    _lista.push_back(nuevo);
    return;
}