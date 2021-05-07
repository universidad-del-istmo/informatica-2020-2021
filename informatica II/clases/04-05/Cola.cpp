#include "Cola.hh"

#include <iostream>

Cola::Cola(int i) : Lista(i) {}

Cola::~Cola() {}

void Cola::queue(int i) {

    Lista* nueva = new Lista(_valor, _resto);

    _valor = i;
    _resto = nueva;
}

int Cola::dequeue() {

    Lista* actual = this;
    int respuesta;
    int final = (actual->largo() - 1);

    respuesta = (*this)[final];

    if(final != 0) {
        actual->eliminar(final);
    }

    return respuesta;
}