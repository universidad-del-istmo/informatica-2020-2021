#include "Pila.hh"

// Métodos constructor y destructor:

Pila::Pila(int i) : Lista(i) {}

Pila::~Pila() {}

// Este método apila un elemento a la lista tipo Lista:

void Pila::push(int i) {

    Lista* nueva = new Lista(_valor, _resto);

    _valor = i;
    _resto = nueva;
}

// Este método retira el último elemento apilado:

int Pila::pop() {

    int respuesta = _valor;

    if(_resto != nullptr) {

        Lista* temp = _resto;

        _valor = _resto->getValor();
        _resto = _resto->getResto();

        temp->getNull();
        delete temp;
    }

    return respuesta;
}