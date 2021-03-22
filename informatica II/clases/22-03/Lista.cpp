#include "Lista.hh"

#include <iostream>

Lista::Lista(int valor, Lista* resto) : _valor(valor), _resto(resto) {}

Lista::Lista(int valor) : _valor(valor), _resto(nullptr) {}

Lista::~Lista() {

    delete _resto;

    std::cout << "adios \n";
}

int Lista::get_valor() {

    return _valor;
}

Lista* Lista::get_resto() {

    return _resto;
}

std::string Lista::to_string() {

    std::string resultado;
    Lista* actual = this;

    while(actual != nullptr) {

        resultado.append(std::to_string(actual->_valor));
        resultado.append(", ");

        actual = actual->_resto;
    }

    return resultado;
}

int Lista::largo() {

    int resultado = 0;

    for(Lista* i = this; i != nullptr; i = i->_resto) {
        resultado++;
    }

    return resultado;
}

int Lista::operator[](std::size_t ix) {

    Lista* valor = this;

    for(std::size_t i = ix; i > 0; i--) {

        if(valor == nullptr) {
            std::cout << "A punto de tronar \n";
        }

        valor = valor->_resto;
    }

    return valor->_valor;
}

bool Lista::tryGet(std::size_t ix, int& resultado) {

    Lista* valor = this;

    for(std::size_t i = ix; i > 0; i--) {

        if(valor == nullptr) {
            return false;
        }

        valor = valor->_resto;
    }

    resultado = valor->_valor;

    return true;
}

void Lista::byValue(int valor, std::string st) {

    valor = 42;
    st[0] = 'A';
}

void Lista::byReference(int& valor, std::string& st) {

    valor = 42;
    st[0] = 'A';
}