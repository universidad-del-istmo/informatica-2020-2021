#include "Pila.hh"

#include <iostream>

Pila::Pila(int i) : Lista(i) {}

Pila::~Pila(){}

void Pila::push(int i) {

    Lista* nueva = new Lista(_valor, _resto);
    _valor = i;
    _resto = nueva;

    std::cout << "Se agrego: " << (*this)[0] << "\n";
}

int Pila::pop() {

    int respuesta = _valor;

    if(_resto != nullptr) {

        Lista* tmp = _resto;

        _valor = _resto->get_valor();
        _resto = _resto->get_resto();

        tmp->terminar();
        delete tmp;
    }

    return respuesta;
}