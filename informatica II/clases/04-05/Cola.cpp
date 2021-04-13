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

    int largo;

    for(Lista* i = this; i != nullptr; i = i->getResto()) {

        largo++;
    }

    // i->_resto > 0

    for(int i = largo; i > 0; i--) {

        if(_resto != nullptr) {

            Lista* nueva = _resto;

            // ejemplo(1, new Lista(2, new Lista(3, new Lista(42))))

            _valor = _resto->getValor();
            _resto = _resto->getResto();

            // ultimo = nullptr
            // delete

        }
    }

    return _valor;
}