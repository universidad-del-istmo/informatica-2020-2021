#include <iostream>

#include "ListaEncadenada.hh"

ListaEncadenada::ListaEncadenada(int valor, ListaEncadenada* resto) : _valor(valor), _resto(resto) {}

ListaEncadenada::ListaEncadenada(int valor) : _valor(valor), _resto(nullptr) {}

void ListaEncadenada::getNull() {

    _resto = nullptr;
}

int& ListaEncadenada::operator[](std::size_t ix) {

    ListaEncadenada* valor = this;

    for(std::size_t i = ix; i > 0; i--) {

        if(valor == nullptr) {

            std::cout << "A punto de tronar \n";
        }

        valor = valor->_resto;
    }

    return valor->_valor;
}

ListaEncadenada::~ListaEncadenada() {

    delete _resto;
}

int ListaEncadenada::cantidad() {

    int resultado = 0;

    for(ListaEncadenada* i = this; i != nullptr; i = i->_resto) {
        
        resultado++;
    }

    return resultado;
}

void ListaEncadenada::borrar(int i) {

    ListaEncadenada* actual = this;
    ListaEncadenada* previo = nullptr;

    for(int j = 0; j < i; j++) {

        previo = actual;
        actual = actual->_resto;
    }

    if(previo == nullptr) {

        ListaEncadenada* tmp = _resto;

        _valor = _resto->_valor;
        _resto = _resto->_resto;

        tmp->getNull();
        delete tmp;
        return; 
    }

    previo->_resto = actual->_resto;
    actual->getNull();
    delete actual;
}

void ListaEncadenada::agregar(int nuevo) {

    return;
}